package SpringMVC.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TripSelectionController {
	
	@RequestMapping("/trip-selection")
	public String tripSelectionPage() {

		return "user/TripSelection";
	}
	
}