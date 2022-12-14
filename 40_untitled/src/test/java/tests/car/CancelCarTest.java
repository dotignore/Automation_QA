package tests.car;

import factories.CarDataFactory;
import factories.ProductDataFactory;
import io.restassured.http.ContentType;
import org.junit.Before;
import org.junit.Test;
import pojo.CarPojo;
import pojo.ProductCarPojo;
import pojo.ProductPojo;
import utils.LoginUtil;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.equalTo;
import static org.hamcrest.Matchers.notNullValue;
import static utils.BaseUrlUtil.baseUrlCar;
import static utils.BaseUrlUtil.baseUrlProduct;

public class CancelCarTest {

    public String tokenId;
    public String productId;

    @Before
    public void createUsersAndLogin(){
        tokenId = new LoginUtil().loginAdmFix();
        ProductPojo product = new ProductDataFactory().product();
        productId = given()
                .contentType(ContentType.JSON)
                .headers("Authorization", tokenId)
                .body(product)
                .when()
                .post(baseUrlProduct)
                .then()
                .statusCode(201)
                .body("message", equalTo("Cadastro realizado com sucesso"))
                .body("_id", notNullValue())
                .extract().path("_id");
        
    }

    @Test
    public void testCancelCart(){
        CarPojo car = new CarDataFactory().car();
        car.addProducts((new ProductCarPojo(productId,1)));
        given()
                .contentType(ContentType.JSON)
                .headers("Authorization", tokenId)
                .body(car)
                .when()
                .post(baseUrlCar)
                .then()
                .log().body()
                .statusCode(201)
                .body("message", equalTo("Cadastro realizado com sucesso"))
                .body("_id", notNullValue());

        given()
                .contentType(ContentType.JSON)
                .headers("Authorization", tokenId)
                .delete(baseUrlCar.concat("cancelar-compra"))
                .then()
                .statusCode(200)
                .body("message", equalTo("Registro exclu??do com sucesso. Estoque dos produtos reabastecido"));
    }

    @Test
    public void testCancelCarWithoutCar(){
        given()
                .contentType(ContentType.JSON)
                .headers("Authorization", tokenId)
                .delete(baseUrlCar.concat("cancelar-compra"))
                .then().log().body()
                .statusCode(200)
                .body("message", equalTo("N??o foi encontrado carrinho para esse usu??rio"));

    }

    @Test
    public void testCancelCarWithoutToken(){
        given()
                .contentType(ContentType.JSON)
                .delete(baseUrlCar.concat("cancelar-compra"))
                .then()
                .statusCode(401)
                .body("message", equalTo("Token de acesso ausente, inv??lido, expirado ou usu??rio do token n??o existe mais"));
    }
}
