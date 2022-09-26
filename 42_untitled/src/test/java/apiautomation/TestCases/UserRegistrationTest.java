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

public class UserRegistrationTest extends BaseTest {

    Response response;

    @Test(description = "TC_001: Verify user registration with valid request", priority = 1)
    void verifyUserRegistrationValidRequest() throws InterruptedException
    {

        String url = propertiesReader.getEndPointUrl("create_user");                           //

        logger.info("\n=============== BASE URL TC_001_1 =================\n"+ url);

        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();        //
        String req = userRegistrationRequest.getRequestParams().toJSONString();

        logger.info("\n===============  Request TC_001_2 =====================\n"+req);
        response = ResourceHelper.create(url,req);                                              //
        System.out.println(" ------------------------------------------ ");
        System.out.println(" {\n" +
                " \"gender\": \"male\",\n" +
                " \"name\": \"JohnE\",\n" +
                " \"email\": \"Johnj@yopmail.com\",\n" +
                " \"status\": \"active\"\n" +
                " }");
        System.out.println(" ------------------------------------------ ");

        logger.info("\n===============  Response TC_001_3 ==================\n"+response.body().asString());  //
        Thread.sleep(2000);
        System.out.println(" ------------------------------------------ ");
        System.out.println(" {\n" +
                " \"id\": 8762,\n" +
                " \"name\": \"JohnE\",\n" +
                " \"email\": \"Johnj@yopmail.com\",\n" +
                " \"gender\": \"male\",\n" +
                " \"status\": \"active\"\n" +
                " }");
        System.out.println(" ------------------------------------------ ");

        logger.info("\n==================== TC_001_4 ========================\n");

        UserRegResponse userRegResponse = new UserRegResponse();
        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 201);
        System.out.println(" ------------------------------------------ ");
        Assert.assertEquals(userRegResponse.getResponseBody(response).contains("id"), true);
        Assert.assertEquals(userRegResponse.getContentType(response), "application/json; charset=utf-8");

        logger.info("\n==================== TC_001_5 ========================\n");
    }

    @Test(description = "TC_002: Verify user registration with valid request", priority = 2)
    void verifyUserRegistrationInactiveStatus() throws InterruptedException {
        String url = propertiesReader.getEndPointUrl("create_user");
        logger.info("\n=============== BASE URL =================\n"+ url);
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();
        String req = userRegistrationRequest.getRequestParams("inactive").toJSONString();
        logger.info("===============  Request =====================\n"+req);

        response = ResourceHelper.create(url,req);
        logger.info("\n===============   Response ==================\n"+response.body().asString());
        Thread.sleep(2000);

        UserRegResponse userRegResponse = new UserRegResponse();
        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 201);
        Assert.assertEquals(userRegResponse.getResponseBody(response).contains("id"), true);
        Assert.assertEquals(userRegResponse.getContentType(response), "application/json; charset=utf-8");
        Assert.assertEquals(userRegResponse.getAnyResponseParam(response, "status").contains("inactive"), true);
    }

    @Test(description = "TC_004: Verify user registration with already used email", priority = 3)
    void verifyUserRegistrationDuplicateEmail() throws InterruptedException {
        UserRegResponse userRegResponse = new UserRegResponse();
        String getUrl = propertiesReader.getEndPointUrl("get_user");
        logger.info("\n=============== get request url  =================\n"+ getUrl);
        Response getRes = ResourceHelper.get(getUrl);
        logger.info("\n=============== get response  =================\n"+ getRes);

        String existingUsername = userRegResponse.getAnyResponseParam(getRes, "name");
        String existingUserEmail = userRegResponse.getAnyResponseParam(getRes, "email");

        String url = propertiesReader.getEndPointUrl("create_user");
        logger.info("\n=============== BASE URL =================\n"+ url);
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();
        String req = userRegistrationRequest.getRequestParams(existingUsername,existingUserEmail).toJSONString();

        System.out.println(" ---------------- yogesh_pilla@labadie-buckridge.com ------------------------ \n");
        logger.info("\n===============  Request =====================\n"+req);
        System.out.println("\n ---------------- yogesh_pilla@labadie-buckridge.com ------------------------ ");

        response = ResourceHelper.create(url,req);
        logger.info("\n===============   Response ==================\n"+response.body().asString());
        Thread.sleep(2000);

        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 422);
        Assert.assertEquals(userRegResponse.getAnyResponseParam(response, "field").contains("email"), true);
        Assert.assertEquals(userRegResponse.getResponseBody(response).contains("already taken"), true);
    }

    @Test(description = "TC_006: Verify user registration with invalid path", priority = 4)
    void verifyUserRegistrationInvalidApiPath() throws InterruptedException
    {
        String url = propertiesReader.getEndPointUrl("create_user_wrong_path");
        logger.info("\n=============== BASE URL =================\n"+ url);
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();
        String req = userRegistrationRequest.getRequestParams().toJSONString();
        logger.info("\n===============  Request =====================\n"+req);

        response = ResourceHelper.create(url,req);
        logger.info("\n===============   Response ==================\n"+response.body().asString());
        Thread.sleep(2000);

        UserRegResponse userRegResponse = new UserRegResponse();
        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 404);
    }

    @Test(description = "TC_007: Verify user registration with unauthorized user", priority = 5)
    void verifyUserRegistrationUnauthorized() throws InterruptedException {
        String url = propertiesReader.getEndPointUrl("create_user");
        logger.info("\n=============== BASE URL =================\n"+ url);
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();

        String req = userRegistrationRequest.getRequestParams().toJSONString();
        logger.info("\n===============  Request =====================\n"+req);
        response = ResourceHelper.createUnauthorized(url,req);
        logger.info("\n===============   Response ==================\n"+response.body().asString());
        Thread.sleep(2000);

        UserRegResponse userRegResponse = new UserRegResponse();
        Assert.assertEquals(userRegResponse.getResponseStatusCode(response), 401);
        Assert.assertEquals(userRegResponse.getResponseBody(response).contains("Authentication failed"), true);
    }

    @Test(description = "TC_007: Verify user registration response time", priority = 6)
    void verifyUserRegistrationResponseTime() throws InterruptedException
    {
        String url = propertiesReader.getEndPointUrl("create_user");
        logger.info("\n=============== BASE URL =================\n"+ url);
        UserRegistrationRequest userRegistrationRequest = new UserRegistrationRequest();

        String req = userRegistrationRequest.getRequestParams().toJSONString();
        logger.info("\n===============  Request =====================\n"+req);
        response = ResourceHelper.create(url,req);
        logger.info("\n===============   Response ==================\n"+response.body().asString());

        ValidatableResponse validatableResponse = response.then();
        validatableResponse.time(Matchers.lessThan(3000L));
    }

    @AfterClass
    void tearDown()
    {
        logger.info("\n*********  Finished Case **********");
    }

}
