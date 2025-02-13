package SpringMVC.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ThankyouController {
	
	@RequestMapping("/thankyou")
	public String thankyouPage() {

		return "user/Thankyou";
	}
	
}