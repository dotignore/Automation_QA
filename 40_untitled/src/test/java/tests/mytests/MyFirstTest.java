package tests.mytests;

import factories.UserDataFactory;
import io.qameta.allure.Feature;
import io.restassured.authentication.OAuth2Scheme;
import io.restassured.http.ContentType;
import org.junit.Before;
import org.testng.annotations.Test;
import pojo.CreateUsersPojo;
import utils.LoginUtil;
import utils.UserUtil;
import static io.restassured.RestAssured.given;
import static io.restassured.module.jsv.JsonSchemaValidator.matchesJsonSchemaInClasspath;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.notNullValue;
import static utils.BaseUrlUtil.baseUrlUser;
import static utils.BaseUrlUtil.baseMyUrlUsers;

public class MyFirstTest {

    public String id;
    public String ID;
    public String tokenId;
    public String idUser;
    public String productId;



    //@Test(description = "TC_006: Description test Description test", priority=6)
    @Test(description = "Test001 GET http://localhost:3000/usuarios/")
    public void testListUsersAll200()
    {
        given()
            .get(baseMyUrlUsers)
            .then()

            .log().body()
            // checks

            .statusCode(200);
    }

    @Test
    public void testCreateAdmUser(){
        CreateUsersPojo user = new UserDataFactory().userAdm();
        System.out.println("\n===============  1Request1 =====================\n"+ user);
        given()
                .contentType(ContentType.JSON)
                .body(user)
                .when()
                .post(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(201)
                .body("message", equalTo("Cadastro realizado com sucesso"))
                .body("_id", notNullValue());
    }




    @Test
    public void testDeleteUser(){
        CreateUsersPojo user = new UserDataFactory().userAdm();
        ID = given()
                .contentType(ContentType.JSON)
                .body(user)
                .when()
                .post(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(201)
                .extract().path("_id");

        given()
                .contentType(ContentType.JSON)
                .when()
                .delete(baseMyUrlUsers.concat(ID))
                .then()

                .log().body()
                // checks

                .statusCode(200)
                .body("message", equalTo("Registro excluído com sucesso"));
    }























    @Test(description = "Test read all users from GET https://serverest.dev/usuarios/")
    public void testListUsers400()
    {
        String productId1 = "?_id=kwkYsgfDZsyWRItA&email=NULL";

        given()
                .get(baseUrlUser.concat(productId1))       // https://serverest.dev/usuarios/
                .then()
                .log().body()
                // checks
                .statusCode(400)
                .body("email",equalTo("email deve ser um email válido"));
    }


}
