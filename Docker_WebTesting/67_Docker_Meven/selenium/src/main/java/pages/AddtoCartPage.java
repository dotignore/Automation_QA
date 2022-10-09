package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class AddtoCartPage extends PageBase{

	public AddtoCartPage(WebDriver driver) {
		super(driver);
	}
	
	@FindBy(css="span.product-subtotal")
	public WebElement toataPricelLabel;
	
	@FindBy(css="div.no-data")
	WebElement noDataLabel;

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	@FindBy(css="input.qty-input")				// 01
	WebElement quantityTxtBox;

	//@FindBy(xpath="//*[@id=\"shopping-cart-form\"]/div[2]/div[1]/input[1]")			// 02
	@FindBy(xpath = "//button[@class='button-2 update-cart-button']")

	WebElement updateCartBtn;

	public void changeQuantity(String quantity)
	{
		clearTextField(quantityTxtBox);
		fillTextField(quantityTxtBox, quantity);
		clickButton(updateCartBtn);
	}

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


	//@FindBy(name="removefromcart")
	// @FindBy(xpath = "//button[@class='remove-btn']")
	@FindBy(xpath = "//button[@class='button-2 update-cart-button']")
	WebElement removeProductCheckbox;

	public void clearCart()
	{
		clickButton(removeProductCheckbox);
		clickButton(updateCartBtn);
	}

	// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

	@FindBy(id="termsofservice")
	WebElement termsOfServiceCheckbox;
	
	@FindBy(id="checkout")
	WebElement checkoutBtn;
	
	public void clickCheckout()
	{
		clickButton(termsOfServiceCheckbox);
		clickButton(checkoutBtn);
	}
	
}
