package cn.tarena.ht.controller;

import cn.tarena.ht.service.MsgService;
import cn.tarena.ht.service.StudentLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentLoginController {
    @Autowired
    StudentLoginService studentLoginService;
    @Autowired
    MsgService msgService;

    @RequestMapping("showPageResult")
    public String list(String stuNo, Model model) {
        //        {reply_result=通过, reply_grade=70, query_result=20}
        model.addAttribute("result", studentLoginService.findAll(stuNo));
        return "/student/jStudentList";
    }
    @RequestMapping("showPageSuggest")
    public String suggest(String stuNo, Model model) {
        model.addAttribute("suggest", studentLoginService.findSuggest(stuNo));
        return "/student/jStudentSuggest";
    }
    @RequestMapping("showLastMsg")
    public String showLastMsg(Model model) {
        model.addAttribute("msg", msgService.getLastMsg());
        return "/stat/showMsg";
    }
}
