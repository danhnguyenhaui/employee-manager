package cop.empl.manager.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class RestAppController
{
    @GetMapping(value="/employee-manager")
    public ModelAndView home() {
        return new ModelAndView("site.home");
    }
    @GetMapping(value="/")
    public String home1() {
        return "home";
    }
    @GetMapping(value="/employee-manager/profile")
    public ModelAndView profile() {
        return new ModelAndView("profile");
    }
    @GetMapping(value="/employee-manager/list-profile")
    public ModelAndView listProfile() {
        return new ModelAndView("list-profile");
    }
    @GetMapping(value="/employee-manager/add-new-profile")
    public ModelAndView addNewProfile() {
        return new ModelAndView("add-new-profile");
    }
}
