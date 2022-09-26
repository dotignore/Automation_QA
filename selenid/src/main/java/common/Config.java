package common;

import com.codeborne.selenide.Configuration;

public class Config {
	/** Specify the browser to test:
	 *
	 **/
	public static String BROWSER_NAME = "chrome"; //firefox opera edge ie
	/**Whether to clean the browser's cookies after each iteration*/
	public static boolean CLEAR_COOKIES = true;
	/**Clean the directory with the screen before starting the build*/
	public static boolean CLEAR_REPORTS_DIR = true;
	/**Whether to keep the browser open after the tests*/
	public static final boolean HOLD_BROWSER_OPEN = false;

	static {
		Configuration.holdBrowserOpen = HOLD_BROWSER_OPEN;
		Configuration.reportsFolder = "build/reports/tests";
		Configuration.browser = BROWSER_NAME;
	}
}
