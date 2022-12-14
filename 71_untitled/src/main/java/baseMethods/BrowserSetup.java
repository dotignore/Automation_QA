package baseMethods;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.apache.commons.lang3.StringUtils;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.opera.OperaDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriverService;
import org.openqa.selenium.remote.DesiredCapabilities;

public class BrowserSetup {

    WebDriver driver;

    public WebDriver BrowserName(String browser)
    {
        if(browser.equalsIgnoreCase("Chrome"))
        {
           // WebDriverManager.chromedriver().setup();
            System.setProperty("webdriver.chrome.driver", System.getProperty("user.dir")+"/drivers/chromedriver");
            driver = new ChromeDriver();
            return driver;
        }
        else if(browser.equalsIgnoreCase("Firefox"))
        {
            //WebDriverManager.firefoxdriver().setup();
            System.setProperty("webdriver.gecko.driver", System.getProperty("user.dir")+"/drivers/geckodriver.exe");
            driver = new FirefoxDriver();
            return driver;
        }
        else if(browser.equalsIgnoreCase("Edge"))
        {
            WebDriverManager.edgedriver().setup();
            driver = new EdgeDriver();
            return driver;
        }
        else if(browser.equalsIgnoreCase("Headless"))
        {
            DesiredCapabilities caps = new DesiredCapabilities();
            caps.setJavascriptEnabled(true);
            caps.setCapability(PhantomJSDriverService.PHANTOMJS_EXECUTABLE_PATH_PROPERTY ,
                 System.getProperty("user.dir")+"/drivers/phantomjs.exe");
            String[] phantomArg = {"--web-security=no" , "--ignore-ssl-errors=yes"};
            caps.setCapability(PhantomJSDriverService.PHANTOMJS_CLI_ARGS , phantomArg);
            driver = new PhantomJSDriver(caps);
            return driver;
        }
        else if(browser.equalsIgnoreCase("Chrome-Headless"))
        {
            WebDriverManager.chromedriver().setup();

            ChromeOptions options = new ChromeOptions();
            options.addArguments("--headless");
            options.addArguments("--window-size-1290,1080");
            driver = new ChromeDriver(options);
            return driver;
        }
        else
        {
            WebDriverManager.operadriver().setup();
            driver = new OperaDriver();
            return driver;
        }
    }

    public void maximizeScreen()
    {
        driver.manage().window().maximize();
    }

    public void closeBrowser()
    {
        driver.quit();
    }

}
