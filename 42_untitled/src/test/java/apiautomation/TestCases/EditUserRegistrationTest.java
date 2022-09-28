package apiautomation.TestCases;

import apiautomation.entities.requests.UserRegistrationRequest;
import apiautomation.utilities.ResourceHelper;
import apiautomation.BaseTest.BaseTest;
import apiautomation.entities.response.UserRegResponse;
import io.restassured.response.Response;
import io.restassured.response.ValidatableResponse;
import org.hamcrest.Matchers;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.Test;

public class EditUserRegistrationTest extends BaseTest {

    Response response;

    @Test(description = "TC_001: Verify user registration with valid request", priority = 1)
    void verifyUserRegistrationValidRequest() throws InterruptedException
    {

        String url = propertiesReader.getEndPointUrl("create_user");                           //

        logger.info("\n" +
                "=============== BASE URL TC_001_1 =================\n"
                + url);

        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();        //
        String req = userRegistrationRequest.getRequestParams().toJSONString();

        logger.info("\n" +
                "===============  Request TC_001_2 =====================\n"
                + req);
        response = ResourceHelper.create(url,req);                                              //

        logger.info("\n" +
                "===============  Response TC_001_3 ==================\n"
                + response.body().asString());  //
        Thread.sleep(2000);

        logger.info("\n" +
                "==================== TC_001_4 ========================\n");

        UserRegResponse userRegResponse = new UserRegResponse();
        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 201);

        Assert.assertEquals(userRegResponse.getResponseBody(response).contains("id"), true);
        Assert.assertEquals(userRegResponse.getContentType(response), "application/json; charset=utf-8");

        logger.info("\n" +
                "==================== TC_001_5 ========================\n");
    }

    @AfterClass
    void tearDown()
    {
        logger.info("\n*********  Finished Case **********");
    }

}