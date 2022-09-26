import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

public class HelloTest extends BaseTest {

    @Test
    public void githubLink() {
        System.out.println("=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=1=");
        driver.get("https://kaiwells.me");
        System.out.println("=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=2=");
        String ghLink = get("//ul/li/a").getAttribute("href");
        System.out.println("=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=3=");
        assertThat(ghLink).isEqualTo("https://github.com/quells");
        System.out.println("=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=4=");
    }
}
