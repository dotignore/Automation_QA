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
    public String ID1;
    public String tokenId;
    public String idUser;
    public String productId;



    //@Test(description = "TC_006: Description test Description test", priority=6)
    @Test(description = "Test001: GET User, RC=200", priority = 1)
    public void testListUsersAll()
    {
        System.out.println("\n =============== =============== =============== \n");

        given()
            .get(baseMyUrlUsers)
            .then()

            .log().body()
            // checks

            .statusCode(200);
        System.out.println("\n =============== =============== =============== \n");
    }

    @Test(description = "Test002: POST User RC=201", priority = 2)
    public void testCreateAdmUser1(){
        CreateUsersPojo user = new UserDataFactory().userAdm();
        System.out.println("\n===============  Test002: POST User RC=201 =====================\n"+ user+"\n");

        ID1 = given()
                .contentType(ContentType.JSON)
                .body(user)
                .when()
                .post(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(201)
                .body("message", equalTo("Cadastro realizado com sucesso"))
                .body("_id", notNullValue())
                .extract().path("_id");
        System.out.println("\n===============  ID1 =====================\n" + ID1);
        System.out.println("\n===============  Test002: POST User RC=201 =====================\n"+ user);
    }

    @Test(description = "Test001: GET User, RC=200", priority = 3)
    public void testListUsersAll1()
    {
        System.out.println("\n =============== =============== =============== \n");

        given()
                .get(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(200);
        System.out.println("\n =============== =============== =============== \n");
    }

    @Test(description = "Test003: POST User RC=200", priority = 4)
    public void testUpdateUserAdm(){
        CreateUsersPojo user = new UserDataFactory().userAdm();
        System.out.println("\n===============  Test003: PUT User RC=200 =====================\n"+ user);

        given()
                .contentType(ContentType.JSON)
                .body(user)
                .when()
                .put(baseMyUrlUsers.concat(ID1))

                .then()
                .log().body()
                // checks

                .statusCode(200)
                .body("message", equalTo("Registro alterado com sucesso"));

        System.out.println("\n===============  Test003: PUT User RC=200 =====================\n"+ user);
    }

    @Test(description = "Test001: GET User, RC=200", priority = 5)
    public void testListUsersAll2()
    {
        System.out.println("\n =============== =============== =============== \n");

        given()
                .get(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(200);
        System.out.println("\n =============== =============== =============== \n");
    }

    @Test(description = "Test004: ВDELETE User RC=200", priority = 6)
    public void testDeleteUser(){

        System.out.println("\n===============  Test004: ВDELETE User RC=200 =====================\n");

        given()
                .contentType(ContentType.JSON)
                .when()
                .delete(baseMyUrlUsers.concat(ID1))
                .then()

                .log().body()
                // checks

                .statusCode(200)
                .body("message", equalTo("Registro excluído com sucesso"));

        System.out.println("\n===============  Test004: ВDELETE User RC=200 =====================\n");
    }

    @Test(description = "===============", priority = 7)
    public void testListUsersAll4()
    {
        System.out.println("\n =============== =============== =============== \n");

        given()
                .get(baseMyUrlUsers)
                .then()

                .log().body()
                // checks

                .statusCode(200);
        System.out.println("\n =============== =============== =============== \n");
    }





















    @Test(description = "Test read all users from GET https://serverest.dev/usuarios/", priority = 9)
    public void testListUsers400()
    {
        System.out.println("\n =============== Test read all users from GET https://serverest.dev/usuarios/ =============== \n");

        String productId1 = "?_id=kwkYsgfDZsyWRItA&email=NULL";

        given()
                .get(baseMyUrlUsers.concat(productId1))       // https://serverest.dev/usuarios/
                .then()
                .log().body()
                // checks
                .statusCode(400)
                .body("email",equalTo("email deve ser um email válido"));
        System.out.println("\n =============== Test read all users from GET https://serverest.dev/usuarios/ =============== \n");

    }


}
