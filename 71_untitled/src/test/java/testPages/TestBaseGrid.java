package testPages;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.testng.ITestResult;
import org.testng.annotations.*;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

public class TestBaseGrid {

    public static String BaseUrl = "https://demo.nopcommerce.com";
    protected ThreadLocal<RemoteWebDriver> driver=null;

    @BeforeClass
    @Parameters(value = {"browser"})
    public void setUp(@Optional("Chrome") String browser) throws MalformedURLException {
        driver = new ThreadLocal<>();
        DesiredCapabilities caps = new DesiredCapabilities();
        //caps.setCapability("browserName" , browser);
        caps.setBrowserName(browser);
        driver.set(new RemoteWebDriver (new URL("http://localhost:4444/wd/hub"),caps));
        getDriver().navigate().to(BaseUrl);
    }

    public WebDriver getDriver()
    {
        return driver.get();
    }
    @AfterClass
    public void stopDriver()
    {
        getDriver().quit();
        driver.remove();
    }
    @AfterMethod
    public void screenshotOnFailure(ITestResult result) throws IOException {
        if(ITestResult.FAILURE == result.getStatus())
        {
            System.out.println("Failed.. Taking Screenshot...");
            TakesScreenshot ts = (TakesScreenshot) getDriver();
            File source = ts.getScreenshotAs(OutputType.FILE);
            FileUtils.copyFile(source, new File("./screenshot/" + result.getName()+".png"));
        }

    }
}
