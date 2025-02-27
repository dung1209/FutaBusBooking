package SpringMVC.UserController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserViewController {

    @GetMapping("/")
    public String homePage() {
        return "user/Home";
    }

    @GetMapping("/book-tickets")
    public String bookTicketsPage() {
        return "user/BookTickets";
    }
    
    @GetMapping("/trip-selection")
    public String tripSelectionPage() {
        return "user/TripSelection";
    }

    @GetMapping("/checkout")
    public String checkoutPage() {
        return "user/Checkout";
    }

    @GetMapping("/thank-you")
    public String thankYouPage() {
        return "user/Thankyou";
    }
}
