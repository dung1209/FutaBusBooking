package SpringMVC.ApiController;

import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import Dao.NguoiDungDao;
import FutaBus.bean.NguoiDung;

@RestController
@RequestMapping("/api/admin")
public class AdminApiController {

    private static final int PAGE_SIZE = 5;

    @GetMapping("/nguoidung")
    public Map<String, Object> getNguoiDung(
            @RequestParam(value = "page", defaultValue = "1") int page,
            @RequestParam(value = "loaiNguoiDung", defaultValue = "1") int loaiNguoiDung) {

        NguoiDungDao nguoiDungDao = new NguoiDungDao();

        int offset = (page - 1) * PAGE_SIZE;
        List<NguoiDung> nguoiDungList = nguoiDungDao.getNguoiDungByPage(offset, PAGE_SIZE, loaiNguoiDung);

        long totalNguoiDung = nguoiDungDao.getTotalNguoiDung(loaiNguoiDung);
        int totalPages = (int) Math.ceil((double) totalNguoiDung / PAGE_SIZE);

        return Map.of(
            "nguoiDungList", nguoiDungList,
            "currentPage", page,
            "totalPages", totalPages
        );
    }
    
}
