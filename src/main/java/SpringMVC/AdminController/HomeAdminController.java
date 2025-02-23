package SpringMVC.AdminController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeAdminController {
	
	@RequestMapping("/admin")
	public String homeAdminPage() {

		return "admin/Home";
	}
	
}