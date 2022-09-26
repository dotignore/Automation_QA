import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class test {
    @Test
    public void testSearchGoogle() {
        System.setProperty("webdriver.chrome.driver", "/Users/ignore/Documents/Selenium/67_Mac_simple/Resources/chromedriver");
        WebDriver driver = new ChromeDriver();
        driver.get("http://google.com");
        WebElement searchBox = driver.findElement(By.name("q"));
        searchBox.sendKeys("ChromeDriver");
        searchBox.submit();
    }
}
