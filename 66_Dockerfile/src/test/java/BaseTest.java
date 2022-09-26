import org.junit.After;
import org.junit.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class BaseTest {
    WebDriver driver;

    @Before
    public void setup()
    {
        driver = DriverHelper.defaultDriver();
    }

    @After
    public void teardown()
    {
        driver.quit();
    }

    public WebElement get(String path)
    {
        return driver.findElement(By.xpath(path));
    }
}
