package tests.users;

import io.qameta.allure.Feature;
import io.restassured.authentication.OAuth2Scheme;
import io.restassured.http.ContentType;
import org.testng.annotations.Test;
import utils.UserUtil;
import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static utils.BaseUrlUtil.baseUrlUser;

public class MyFirstTest {

    public String id;

    //@Test(description = "TC_006: Description test Description test", priority=6)
    @Test(description = "Test read all users from GET https://serverest.dev/usuarios/")
    public void testListUsersAll200()
    {
        given()
            .get(baseUrlUser)       // https://serverest.dev/usuarios/
            .then()
            .log().body()
            // checks
            .statusCode(200);
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
