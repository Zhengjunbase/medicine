import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.context.WebApplicationContext;

/**
 * Created by zhengjun on 6/8/14.
 */

@WebAppConfiguration
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class AbstractContextControllerTest {
    @Autowired
    protected WebApplicationContext wac;
}
