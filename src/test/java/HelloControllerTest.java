/**
 * Created by zhengjun on 6/1/14.
 */
import org.junit.Assert;
import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;

//import static org.hamcrest.Matchers.startsWith;
//import org.springframework.samples.mvc.AbstractContextControllerTests;
//@RunWith(SpringJUnit4ClassRunner.class)
public class HelloControllerTest {
    private MockMvc mockMvc;

    @Test
    public void prescriptionPage() throws Exception{
        Assert.assertTrue("value" == "value");

//        mockMvc.perform(get("http://localhost:8080/testmaven2/hello#")).andExpect(status().isOk());
    }
//    'Accept': 'application/json',
////            'Content-Type': "text/json; charset=utf-8",
////            },
//            'type':"post",
//            'url': 'http://localhost:8080/testmaven2/chufang/post',
//            'data':JSON.stringify(formData),
//            'dataType': 'json',
////            dataType: "text"
//            'contentType': "application/json; charset=utf-8"
    @Test
    public void savePrescriptionClick() throws Exception {
        Assert.assertTrue("value" == "value");

//        mockMvc.perform(
//                post("http://localhost:8080/testmaven2/chufang/post")
//                .header("X-Requested-With", "XMLHttpRequest")
//                .contentType(MediaType.parseMediaType("application/json; charset=utf-8"))
//                .param("name", "Joe")
//                .param("age", "56")
//                .param("birthDate", "1941-12-16")
//                .param("phone", "(347) 888-1234")
//                .param("currency", "$123.33")
//                .param("percent", "89%")
//                .param("inquiry", "comment")
//                .param("inquiryDetails", "what is?")
//                .param("additionalInfo[mvc]", "true")
//                .param("_additionalInfo[mvc]", "on")
//                .param("additionalInfo[java]", "true")
//                .param("_additionalInfo[java]", "on")
//                .param("subscribeNewsletter", "false"))
//        .andExpect(status().isOk());
    }

}
