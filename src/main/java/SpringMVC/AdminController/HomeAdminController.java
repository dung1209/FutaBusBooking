package SpringMVC.AdminController;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Dao.NguoiDungDao;
import FutaBus.bean.NguoiDung;

@Controller
public class HomeAdminController {
    
    private static final int PAGE_SIZE = 5; // Số bản ghi mỗi trang
    
    @RequestMapping("/admin")
    public String homeAdminPage(Model model, @RequestParam(value = "page", defaultValue = "1") int page) {
        
        NguoiDungDao nguoiDungDao = new NguoiDungDao();
        
        // Tính toán offset và limit
        int offset = (page - 1) * PAGE_SIZE;
        List<NguoiDung> nguoiDungList = nguoiDungDao.getNguoiDungByPage(offset, PAGE_SIZE);
        
        // Lấy tổng số người dùng để tính số trang
        long totalNguoiDung = nguoiDungDao.getTotalNguoiDung();
        int totalPages = (int) Math.ceil((double) totalNguoiDung / PAGE_SIZE);
        
        // Truyền dữ liệu vào Model
        model.addAttribute("nguoiDungList", nguoiDungList);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        
        return "admin/Home";
    }
}



//package SpringMVC.AdminController;
//
//import java.util.List;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import Dao.NguoiDungDao;
//import FutaBus.bean.NguoiDung;
//
//@Controller
//public class HomeAdminController {
//	
//	@RequestMapping("/admin")
//	public String homeAdminPage(Model model) {
//		
//		NguoiDungDao nguoiDungDao = new NguoiDungDao();
//		List<NguoiDung> nguoiDung = nguoiDungDao.getAllNguoiDung();
//		
//		model.addAttribute("nguoiDung", nguoiDung);
//		return "admin/Home";
//	}
//	
//}