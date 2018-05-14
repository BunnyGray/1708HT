package cn.tarena.ht.controller;

import cn.tarena.ht.service.PublishService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sysadmin/publish")
public class PublishController extends BaseController {
    @Autowired
    PublishService publishService;

    @RequestMapping("list")
    public String list(Model model) {
        model.addAttribute("msgs", publishService.findAll());
        return "/sysadmin/publish/jPublishList";
    }

    @RequestMapping("toAddPublish")
    public String toAddPublish() {
        return "/sysadmin/publish/jAddPublish";
    }

    @RequestMapping("addPublish")
    public String addPublish(String msg) {
        publishService.addPublish(msg);
        return "redirect:/sysadmin/publish/list";
    }
}
