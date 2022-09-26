package google;

import io.qameta.allure.Description;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;
import pages.google.GoogleLandingPage;
import tools.BaseTest;

import java.net.MalformedURLException;

public class SearchButtonTest extends BaseTest {
    private GoogleLandingPage googleLandingPage;

    @BeforeClass
    public void setUp() throws MalformedURLException {
        super.setUp("local-chrome");
        googleLandingPage = getGoogleLandingPage();
    }

    @Test
    @Description("Verify search button is displayed.")
    public void verifySearchButtonIsDisplayed() {
        Assert.assertTrue(googleLandingPage.isSearchButtonDisplayed(), "Search button is displayed." );
    }

    @AfterClass
    public void tearDown() {
        super.tearDown();
    }
}
