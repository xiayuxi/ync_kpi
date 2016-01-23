package com.ync365.oa.web.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController {
    @RequestMapping("index")
    public String index() {
        return "home/index";
    }

    @RequestMapping("myhome")
    public String myhome() {
        return "home/myhome";
    }
}
