package SpringMVC.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookTicketsController {
	
	@RequestMapping("/book-tickets")
	public String bookticketsPage() {

		return "user/BookTickets";
	}
	
}