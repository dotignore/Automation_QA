import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeDriverService;
import org.openqa.selenium.chrome.ChromeOptions;

public class DriverHelper
{
    static WebDriver defaultDriver()
    {
        ChromeDriverService service = new ChromeDriverService.Builder()
                .withWhitelistedIps("")
                .withVerbose(true)
                .build();
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        options.addArguments("--disable-gpu");
        return new ChromeDriver(service, options);
    }
}
