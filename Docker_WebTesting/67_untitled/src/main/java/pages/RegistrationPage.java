package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.util.concurrent.TimeUnit;

public class RegistrationPage extends PageBase{
	public RegistrationPage(WebDriver driver)
	{
		super(driver);	
	}

	// - - - - - - - - - - - - - - - - - - - - - -

	@FindBy(xpath = "//span[@class='close']") WebElement closeUp;

	public void clickClose()
	{
		clickButton(closeUp);
	}

	// - - - - - - - - - - - - - - - - - - - - - -


	@FindBy(id="gender-male")
	WebElement genderRadioBtn;
	
	@FindBy(id="FirstName")
	WebElement fnTextbox;
	
	@FindBy(id="LastName")
	WebElement lnTextbox;
	
	@FindBy(id="Email")
	WebElement emailTextbox;
	
	@FindBy(id="Password")
	WebElement passTextbox;
	
	@FindBy(id="ConfirmPassword")
	WebElement confirmPassTextbox;
	
	@FindBy(id="register-button")
	WebElement registerBtn;
	
	@FindBy(css="div.result")
	//@FindBy(css="div.result")
	public WebElement successMessage;
	

	public void registrationForm(String firstName, String lastName, String email, String password)
	{
		clickButton(genderRadioBtn);
		fillTextField(fnTextbox, firstName);
		fillTextField(lnTextbox, lastName);
		fillTextField(emailTextbox, email);
		fillTextField(passTextbox, password);
		fillTextField(confirmPassTextbox, password);
		clickButton(registerBtn);	
	}

	// - - - - - - - - - - - - - - - - - - - - - -
	// LOGAUT

	//@FindBy(css="a.ico-logout")
	@FindBy(xpath = "//a[@class='ico-logout']")
	WebElement logoutLink;

	public void clickLogout()
	{
		clickButton(logoutLink);
	}

	// LOGAUT


	@FindBy(linkText="My account")
	WebElement myAccountLink;

	public void clickMyAccount()
	{
		clickButton(myAccountLink);
	}
}








