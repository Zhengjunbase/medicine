package common;

/**
 * Created by zhengjun on 10/8/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("*/vertex")
public class VertexController {


    @RequestMapping(method = RequestMethod.GET)
//@ResponseBody
    public String helloworld() {
//        model.addAttribute("name", name);
        System.out.println("vertex Controller");
        String ret = "hello,yes";
        return "vertex";

//        return "testangular";
    }



}