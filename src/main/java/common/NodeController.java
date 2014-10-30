package common;

/**
 * Created by zhengjun on 10/8/14.
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("*/node")
public class NodeController {


    @RequestMapping(method = RequestMethod.GET)
//@ResponseBody
    public String helloworld() {
//        model.addAttribute("name", name);
        System.out.println("Node Controller");
        String ret = "hello,yes";
        return "node";

//        return "testangular";
    }



}