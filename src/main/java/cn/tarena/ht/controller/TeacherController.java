package cn.tarena.ht.controller;

import cn.tarena.ht.pojo.Teacher;
import cn.tarena.ht.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;

@Controller
@RequestMapping("/sysadmin/teacher")
public class TeacherController extends BaseController {
    @Autowired
    TeacherService teacherServie;

    @RequestMapping("list")
    public String list(Model model) {
        model.addAttribute("teachers", teacherServie.findAll());
        return "/sysadmin/teacher/jTeacherList";
    }

    @RequestMapping("toview")
    public String view(String userId, Model model) {
        model.addAttribute("user", teacherServie.findOne(userId));
        return "/sysadmin/teacher/jTeacherView";
    }

    @RequestMapping("toupdate")
    public String toUpdate(String userId, Model model) {
        model.addAttribute("teacher", teacherServie.findOne(userId));
        return "/sysadmin/teacher/jTeacherUpdate";
    }
    @RequestMapping("update")
    public String update(Teacher teacher) {
        teacherServie.updateOne(teacher);
        return "redirect:/sysadmin/teacher/list";
    }
    @RequestMapping("tocreate")
    public String toCreate() {
        return "/sysadmin/teacher/jTeacherCreate";
    }
    @RequestMapping("tosave")
    public String save(Teacher teacher) {
        teacherServie.save(teacher);
        return "redirect:/sysadmin/teacher/list";
    }
    @RequestMapping("delete")
    public String delete(@RequestParam (value = "userId",required = false) String ids[]) {
        if (ids!=null){
            System.out.println(Arrays.toString(ids));
            teacherServie.deleteByIds(ids);
        }
        return "redirect:/sysadmin/teacher/list";
    }
}
