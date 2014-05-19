package common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.validation.Valid;

/**
 * Created by zhengjun on 5/16/14.
 */



@Controller
@RequestMapping("*/chufang")
public class ChufangController {


    @RequestMapping(method = RequestMethod.POST,value = "/post",headers="Accept=application/xml, application/json")
    public  @ResponseBody String receive(@Valid @RequestBody FormData formData)
    {
        System.out.println("requestin");
        System.out.println(formData.toString());
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
