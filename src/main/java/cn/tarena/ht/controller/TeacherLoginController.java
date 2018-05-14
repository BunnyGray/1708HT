package cn.tarena.ht.controller;

import cn.tarena.ht.pojo.Student;
import cn.tarena.ht.service.StudentService;
import cn.tarena.ht.service.TeacherLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("/teacher")
public class TeacherLoginController extends BaseController {
    @Autowired
    TeacherLoginService teacherLoginService;
    @Autowired
    StudentService studentService;

    @RequestMapping("showPageResult")
    public String list(String name, Model model) throws UnsupportedEncodingException {
        //        {reply_result=通过, reply_grade=70, query_result=20}
        model.addAttribute("result", teacherLoginService.findResult(new String(name.getBytes("iso-8859-1"), "utf-8")));
        return "/teacher/jStudentList";
    }

    @RequestMapping("showStudentInfo")
    public String suggest(String name, Model model) throws UnsupportedEncodingException {
        model.addAttribute("studentInfo", teacherLoginService.findMyStuInfo(new String(name.getBytes("iso-8859-1"), "utf-8")));
        return "/teacher/jStudentInfoList";
    }

    @RequestMapping("uploadDoc")
    public String uploadDoc() {
        return "/teacher/jUploadDoc";
    }

    @RequestMapping("upload")
    public String upload(MultipartFile filename, Model model) {
        if (!filename.isEmpty()) {
            String path = "E:\\FileDownloads\\毕设\\upload\\";
            String fname = filename.getOriginalFilename().substring(0, filename.getOriginalFilename().lastIndexOf("."));
            String time = new SimpleDateFormat("MMddHHmm").format(new Date());
            String fFullName = path + fname + "_" + time + filename.getOriginalFilename().substring(filename.getOriginalFilename().lastIndexOf("."));
            File file = new File(fFullName);
            model.addAttribute("fname", filename.getOriginalFilename());
            try {
                filename.transferTo(file);
                model.addAttribute("msg", "成功");
            } catch (IOException e) {
                model.addAttribute("msg", "文件上传失败");
                e.printStackTrace();
            }
        }
        return "/teacher/jUploadDoc";
    }

    @RequestMapping("uploadStudentInfo")
    public String uploadStudentInfo() {
        //        String[] n = name.split(",type=");
        //        System.err.println(new String(n[0].getBytes("iso-8859-1"), "utf-8"));
        //        System.err.println(new String(n[1].getBytes("iso-8859-1"), "utf-8"));
        //        model.addAttribute("name", new String(name.getBytes("iso-8859-1"), "utf-8"));
        return "/teacher/jUploadStudentInfo";
    }

    @RequestMapping("save")
    public String uploadStudentInfo(Student student) {
        studentService.save(student);
        return "/teacher/main";
    }

    @RequestMapping("showSuggestTeacherInfo")
    public String showSuggestTeacherInfo(String name, Model model) throws UnsupportedEncodingException {
        model.addAttribute("teachers", teacherLoginService.findTeacherList(new String(name.getBytes("iso-8859-1"), "utf-8")));
        return "/teacher/jTeacherInfoList";
    }
}
