package com.spotify.api.music.test;

import com.spotify.api.music.core.BaseAPI;
import org.junit.BeforeClass;
import org.junit.Test;

import com.spotify.api.music.utils.EncodeLoginToken;
import io.restassured.response.Response;

import static io.restassured.RestAssured.given;
import io.restassured.response.Response;
import static org.hamcrest.CoreMatchers.equalTo;

public class SpotifyAPIPostPutGetTest extends BaseAPI {
    static String accessToken;
    static String clientId = "318c6661bf8747c1a2d65d17b47ed614";
    static String clientSecret = "0415a0ab212744d98be552770e56faec";
    String idArtist = "6KImCVD70vtIoJWnq6nGn3";
    String idPlaylist = "3cEYpjA9oz9GiPac4AsH4n";
    String idAlbum = "7mzrIsaAjnXihW3InKjlC3";

    @BeforeClass
    public static void authenticationSpotify()
    {
        Response responseLogin =
                given()
                        .header("Authorization", "Basic " + EncodeLoginToken.getAuthToken(clientId, clientSecret))
                        .formParam("grant_type", "client_credentials")
                        .contentType("application/x-www-form-urlencoded")
                        .when()
                        //.log()
                        .post("https://accounts.spotify.com/api/token");
        accessToken = responseLogin.jsonPath().get("access_token");
        // System.out.println("accessToken = " + accessToken);
        // System.out.println("accessToken = BQB2hvBaiiK7cmp1GZ7ZYduveSw5Zvllw4PWp_RQAtH2TMyveu6T9V0BKyAm5IFGoIAi3gdwivVnE2SeLLQijRIldE8tA7p1-HroTRU59AARU8OBsVw");
    }


     public void getArtist() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/artists/6KImCVD70vtIoJWnq6nGn3") //   /albums/id
                //.get("/artists/" + idArtist)
                .then()

                .log().body()

                .statusCode(200)
                .body("name", equalTo("Harry Styles"));
    }




    @Test
    public void getArtistWithoutId() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/artists/")
                .then()
                .log()
                .body()
                .statusCode(400)
                .body("error.message", equalTo("invalid id"));
    }
//	{
//		"error":
//		{
//		"status": 400,
//				"message": "invalid id"
//		}
//	}

    @Test
    public void getSearchArtist() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/search?q=Taylor Swift&type=artist")
                .then()
                .log()
                .body()
                .statusCode(200)
                .body("artists.items[0].name", equalTo("Taylor Swift"));
    }

    @Test
    public void getSearchArtistWithoutType() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/search?q=Taylor Swift")
                .then()
                .statusCode(400)
                .body("error.message", equalTo("Missing parameter type"));
    }


    @Test
    public void getPlaylist()
    {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/playlists/" + idPlaylist)
                .then()
                .statusCode(200)
                .body("description", equalTo("A playlist for testing pourposes"));
    }

    @Test
    public void getPlaylistWithIncorrectId() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/playlists/7mzrIsaAjnXihW3InKjlC3")
                .then().log().body()
                .statusCode(404)
                .body("error.message", equalTo("Not found."));
    }
//	{
//		"error":
//		{
//		"status": 404,
//				"message": "Not found."
//		}
//	}

    @Test
    public void getAlbum() {
        System.out.println("https://api.spotify.com/v1/albums/7mzrIsaAjnXihW3InKjlC3");
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/albums/" + idAlbum)
                .then().log().body()
                .statusCode(200)
                .body("artists[0].name", equalTo("Taylor Swift"))
                .body("album_type", equalTo("album"));
    }

    @Test
    public void getAlbumWithIncorrectId() {
        given()
                .header("Authorization", "Bearer " + accessToken)
                .when()
                .get("/albums/6KImCVD70vtIoJWnq6nGn3")
                .then().log().body()
                .statusCode(404)
                .body("error.message", equalTo("non existing id"));
    }
//	{
//		"error": {
//		"status": 404,
//				"message": "non existing id"
//	}
//	}

}
