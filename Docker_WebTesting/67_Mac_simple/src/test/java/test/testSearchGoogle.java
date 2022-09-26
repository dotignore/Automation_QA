package test;

import org.junit.jupiter.api.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class testSearchGoogle {
    @Test
    public void testSearchGoogle() {
        //System.setProperty("webdriver.chrome.driver", "/bin/chromedriver");
        //System.setProperty("webdriver.chrome.driver", "/usr/autotest/Resources/chromedriver_linux");
        System.setProperty("webdriver.chrome.driver", "/Users/ignore/Documents/Selenium/67_Mac_simple/Resources/chromedriver_mac");

        //WebDriver driver = new ChromeDriver();

        ChromeOptions options = new ChromeOptions();
        options.addArguments("--headless");
        options.addArguments("--window-size=1920,1080");
        WebDriver driver = new ChromeDriver(options);

//options.addArguments("--verbose");
//options.addArguments("--whitelisted-ips=''");
//options.addArguments("--disable-extensions");
//options.addArguments("--disable-notifications");
//options.addArguments("disable-infobars");
//options.addArguments("--incognito");
//options.addArguments("--disable-gpu");
//options.addArguments("--no-sandbox");
//options.addArguments("--disable-gpu --disable-software-rasterizer");
//options.addArguments("--disable-gpu-sandbox");
//options.addArguments("--disable-features=VizDisplayCompositor");


        driver.get("http://google.com");
        WebElement searchBox = driver.findElement(By.name("q"));
        searchBox.sendKeys("ChromeDriver");
        searchBox.submit();

    }
}