package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class WishlistPage extends PageBase{

	public WishlistPage(WebDriver driver) {
		super(driver);
	}
	
	@FindBy(css="h1")
	public WebElement wishlistHeader;
	
	@FindBy(css="a.product-name")
	public WebElement wishlistItem;

	// @FindBy(css="div.no-data")
	@FindBy(xpath = "//div[@class='no-data']")
	public WebElement wishlistStatus;



	// @FindBy(name="removefromcart")
	@FindBy(xpath = "//button[@class='remove-btn']")
	WebElement removeItemCheckbox;

	//@FindBy(css="input.button-2.update-wishlist-button")		// old
	@FindBy(xpath = "//button[@class='button-2 update-wishlist-button']")
	WebElement updateWishlist;

	public void removeItemFromWishList()
	{
		clickButton(updateWishlist);
		clickButton(removeItemCheckbox);
	}
}
