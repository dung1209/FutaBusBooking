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
    
    private static final int PAGE_SIZE = 5;
    
    @RequestMapping("/admin")
    public String homeAdminPage(Model model, @RequestParam(value = "page", defaultValue = "1") int page, @RequestParam(value = "loaiNguoiDung", defaultValue = "1") int loaiNguoiDung) {
        
        NguoiDungDao nguoiDungDao = new NguoiDungDao();
        
        int offset = (page - 1) * PAGE_SIZE;
        List<NguoiDung> nguoiDungList = nguoiDungDao.getNguoiDungByPage(offset, PAGE_SIZE,loaiNguoiDung);
        
        long totalNguoiDung = nguoiDungDao.getTotalNguoiDung(loaiNguoiDung);
        int totalPages = (int) Math.ceil((double) totalNguoiDung / PAGE_SIZE);

        model.addAttribute("nguoiDungList", nguoiDungList);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        
        return "admin/Home";
    }
}
