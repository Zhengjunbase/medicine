package common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by zhengjun on 5/14/14.
 */
@Controller
@RequestMapping("*/hello")
public class HelloController {


@RequestMapping(method = RequestMethod.GET)
//@ResponseBody
    public String helloworld() {
//        model.addAttribute("name", name);
        System.out.println("Hello Controller");
        String ret = "hello,yes";
        return "c";
    }



}
