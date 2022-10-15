// *********************************************************************************************************************
//
// It`s tests for https://gorest.co.in/
// Site use Bearer Token
//
// *********************************************************************************************************************

package tests.mytests;

import com.fasterxml.jackson.databind.deser.NullValueProvider;
import factories.UserDataFactory;
import io.restassured.http.ContentType;
import org.apache.commons.lang3.ObjectUtils;
import org.testng.annotations.Test;
import pojo.CreateUsersPojo;
import pojo.SecondUserPojoPut;
import pojo.SecondUsersPojo;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.notNullValue;
import static utils.BaseUrlUtil.baseUrlSecondSite;
import static utils.BaseUrlUtil.baseUrlUser;

public class MySecondTest {

    public String ID2;
    public String token = "39db075c55cb743dd3b2f22e387c8f4f721601bda2231dc4830d9574daa784dc";

    @Test(description = "Test001: GET User, RC=200", priority = 1)
    public void GetUsersAllTest01()
    {
        System.out.println("\n=============== GET User =====================\n");

        given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                .get(baseUrlSecondSite)
                .then()

                .log().body()
                // checks

                .statusCode(200);

        System.out.println("\n=============== GET User =====================\n");
    }

    @Test(description = "", priority = 10)
    public void PostSecondSiteTest()
    {
        System.out.println("\n=============== POST =====================\n");

        SecondUsersPojo users =new UserDataFactory().userSecondSitePost();

        ID2 = given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                .contentType(ContentType.JSON)
                .body(users)
                .when()
                .post(baseUrlSecondSite)
                .then()

                .log().body()
                // checks

                .statusCode(201)
                .body("id", notNullValue())
                //.extract().path("id")
                .extract().path("id").toString();

        System.out.println("\n=============== POST =====================\n");
    }

    @Test(description = "Test001: GET User, RC=200", priority = 11)
    public void GetUsersAllTest02()
    {
        System.out.println("\n=============== GET User =====================\n");

            given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                .get(baseUrlSecondSite + "?id=" + ID2)
                .then()

                .log().body()
                // checks

                .statusCode(200);

        System.out.println("\n=============== GET User =====================\n");
    }

    @Test(description = "Test003: POST User RC=200", priority = 12)
    public void PutSecondSiteTest()
    {
        System.out.println("\n=============== PUT =====================\n");

        SecondUserPojoPut users = new UserDataFactory().userSecondSitePut();
        System.out.println(users);

        given()
                .headers(
                        "Authorization",
                        "Bearer " + token)

                .contentType(ContentType.JSON)
                .body(users)
                .when()
                .put(baseUrlSecondSite + "/" +ID2)

                .then()
                .log().body()
                // checks

                .statusCode(200)
                //.body("id", equalTo(ID2))
                .body("id", notNullValue());

        System.out.println("\n=============== PUT =====================\n"+ users);
    }

    @Test(description = "Test001: GET User, RC=200", priority = 13)
    public void GetUsersAllTest03()
    {
        System.out.println("\n=============== GET User =====================\n");

        given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                .get(baseUrlSecondSite + "?id=" + ID2)
                .then()

                .log().body()
                // checks

                .statusCode(200);

        System.out.println("\n=============== GET User =====================\n");
    }

    @Test(description = "Test001: DELETE User, RC=200", priority = 14)
    public void DeleteSecondSiteTest(){
        System.out.println("\n=============== DELETE User =====================\n");

        given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                .contentType(ContentType.JSON)
                .when()
                .delete("https://gorest.co.in/public/v2/users/" + ID2)
                .then()

                .log().body()
                // checks

                .statusCode(204);

        System.out.println("\n=============== DELETE User =====================\n");
    }

    @Test(description = "Test001: GET User, RC=200", priority = 15)
    public void GetUsersAllTest04()
    {
        System.out.println("\n=============== GET User =====================\n");

        given()
                .headers(
                        "Authorization",
                        "Bearer " + token)
                // https://gorest.co.in/public/v2/users?id=7517
                .get(baseUrlSecondSite + "?id=" + ID2)
                .then()

                .log().body()
                // checks

                .statusCode(200);

        System.out.println("\n=============== GET User =====================\n");
    }

}
