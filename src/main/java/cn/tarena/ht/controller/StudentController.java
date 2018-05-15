package cn.tarena.ht.controller;

import cn.tarena.ht.pojo.Student;
import cn.tarena.ht.service.StudentService;
import cn.tarena.ht.tool.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/sysadmin/student")
public class StudentController extends BaseController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("list")
    public String list(Model model) {
        List<Student> students = studentService.findAll();
        model.addAttribute("students", students);
        return "/sysadmin/student/jStudentList";
    }

    @RequestMapping("toview")
    public String toView(String userId, Model model) {
        model.addAttribute("user", studentService.findOne(userId));
        return "/sysadmin/student/jStudentView";
    }

    @RequestMapping("/toupdate")
    public String toUpdate(String userId, Model model) {
        Student student = studentService.findOne(userId);
        model.addAttribute("student", student);
        return "/sysadmin/student/jStudentUpdate";
    }

    @RequestMapping("/update")
    public String update(Student student) {
        student.setPasswd(MD5Utils.md5(student.getPasswd()));
        studentService.updateOne(student);
        return "redirect:/sysadmin/student/list";
    }

    @RequestMapping("/delete")
    public String update(@RequestParam(value = "userId", required = false) String[] ids) {
        if (ids != null) {
            studentService.deleteByIds(ids);
        }
        return "redirect:/sysadmin/student/list";
    }

    @RequestMapping("/tocreate")
    public String toCreate() {
        return "/sysadmin/student/jStudentCreate";
    }

    @RequestMapping("/tosave")
    public String save(Student student) {
        studentService.save(student);
        return "redirect:/sysadmin/student/list";
    }
}
