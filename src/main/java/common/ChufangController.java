package common;


import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zhengjun on 5/16/14.
 */



@Controller
@RequestMapping("*/chufang")
public class ChufangController {


    @RequestMapping(method = RequestMethod.POST,value = "/post")
    public  @ResponseBody String receive( HttpEntity<String> entity)
    {
        System.out.println("requestin");
        System.out.println(entity.getBody());
//
        JSONArray array =  null;
//        JsonObject jobj = (JsonObject)paser.parse(entity.getBody());

        JSONObject jobj = new JSONObject("{\"name\":\"Gerry\",\"age\":\"20\",\"city\":\"Sydney\"}");
        JSONObject j =  new JSONObject(entity.getBody());
//        ObjectMapper mapper = new ObjectMapper();
//        try {
//            FormData data = mapper.readValue(entity.getBody(),FormData.class);
//            System.out.println(data.getAge());
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

//        JSONPObject jobj =
        System.out.println("test");
        System.out.println(j);
//        System.out.println("test");

        return "good";
    }
//    public  String  receiveChufang( @Valid @RequestBody  FormData formData){
//        String ret;
//        System.out.println("requestin");
//        System.out.println(formData.toString());
////        System.out.println(input);
////        System.out.println("requset in"+request.toString()+request.getParameter("data").toString());
//
////        JSONObject jObj = new JSONObject(input);
////        System.out.println(jObj.toString());
//        System.out.println("tet");
////        return "good";
//
//    }
}
