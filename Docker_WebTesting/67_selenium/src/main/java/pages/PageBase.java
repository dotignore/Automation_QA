package pages;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.time.Duration;

public class PageBase {

	protected WebDriver driver;
	public PageBase(WebDriver driver)
	{
		PageFactory.initElements(driver, this);
		this.driver=driver;
	}

//  допис для вайт
//
//	protected WebDriverWait driverWait;
//	public PageBase(WebDriverWait driverWait)
//	{
//		WebDriverWait wait = new WebDriverWait(driverWait, 10);
//		wait.until(ExpectedConditions.elementToBeClickable(By.id("Login")));
//		driverWait.findElement(By.id("Login")).click();
//	}

	public JavascriptExecutor js;
	public Select select;
	public Actions action;

	protected static void clickButton(WebElement button) {
		button.click();
	}

	protected static void fillTextField(WebElement field, String text) {
		field.sendKeys(text);
	}

	protected static void clearTextField(WebElement field) {
		field.clear();
	}

	public void scrollToBottom()
	{
		js.executeScript("scrollBy(0,2500)");
	}
}
