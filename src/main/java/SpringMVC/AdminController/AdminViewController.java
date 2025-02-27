package SpringMVC.AdminController;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
@RequestMapping("/admin")
public class AdminViewController {
	
	private static final String API_URL = "http://localhost:8085/FutaBusBooking/api/admin/nguoidung";
	
	@GetMapping
    public String homeAdminPage(@RequestParam(value = "page", defaultValue = "1") int page,
                                @RequestParam(value = "loaiNguoiDung", defaultValue = "1") int loaiNguoiDung,
                                Model model) {
        
        RestTemplate restTemplate = new RestTemplate();
        String apiUrlWithParams = API_URL + "?page=" + page + "&loaiNguoiDung=" + loaiNguoiDung;
        ResponseEntity<Map> response = restTemplate.getForEntity(apiUrlWithParams, Map.class);

        Map<String, Object> responseData = response.getBody();
        model.addAttribute("nguoiDungList", responseData.get("nguoiDungList"));
        model.addAttribute("currentPage", responseData.get("currentPage"));
        model.addAttribute("totalPages", responseData.get("totalPages"));

        return "admin/Home"; 
    }

}


