package emergon.controller;

import emergon.dto.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/")
@Controller
public class HomeController {
    
    @ResponseBody//tells the controller to serialize the object into JSON and send it back to the HttpResponse object
    @RequestMapping
    public String showMessage(){
        return "Hello from Spring Boot";
    }
    
    @RequestMapping("/home")
    public String showHome(){
        return "home";
    }
    
    @ResponseBody//tells the controller to serialize the object into JSON and send it back to the HttpResponse object
    @RequestMapping("/person")
    public Person showPerson(){
        Person p = new Person(1, "Jack", 30);
        return p;
    }
}
