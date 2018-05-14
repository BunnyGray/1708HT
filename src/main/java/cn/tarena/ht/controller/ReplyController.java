package cn.tarena.ht.controller;

import cn.tarena.ht.pojo.Reply;
import cn.tarena.ht.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/sysadmin/reply")
public class ReplyController {
    @Autowired
    ReplyService replyService;

    @RequestMapping("list")
    public String list(Model model) {
        isComplete();
        model.addAttribute("replys", replyService.findAll());
        return "/sysadmin/reply/jReplyList";
    }

    @RequestMapping("toupdatequery")
    public String toUpdateQuery(Model model) {
        model.addAttribute("replys", replyService.findAllUnfinished());
        return "sysadmin/reply/toUpdateQuery";
    }

    @RequestMapping("updateResult")
    public String updateResult(Reply reply) {
        if (reply != null) {
            replyService.updateResult(reply);
            //            isComplete();
        }
        return "redirect:/sysadmin/reply/list";
    }

    @RequestMapping("toupdategrade")
    public String toUpdateGrade(Model model) {
        model.addAttribute("replys", replyService.findAllUnfinished());
        return "/sysadmin/reply/toUpdateGrade";
    }

    @RequestMapping("updateGrade")
    public String updateGesult(Reply reply) {
        if (reply != null) {
            replyService.updateGrade(reply);
            //            isComplete();
        }
        return "redirect:/sysadmin/reply/list";
    }

    @RequestMapping("toupdategradeandresult")
    public String toUpdateGradeAndResult(Model model) {
        model.addAttribute("replys", replyService.findAllUnfinished());
        return "/sysadmin/reply/toUpdateGradeAndResult";
    }

    @RequestMapping("UpdateGradeAndResult")
    public String updateGradeAndResult(Reply reply) {
        if (reply != null) {
            replyService.updateGradeAndResult(reply);
            //            isComplete();
        }
        return "redirect:/sysadmin/reply/list";
    }

    private void isComplete() {
        List<Reply> replies = replyService.findAll();
        for (int i = 0; i < replies.size(); i++) {
            if (Complete(replies.get(i))) {
                replyService.updateStatus(replies.get(i));
            }else{
                replyService.updateStatusToFalse(replies.get(i));
            }
        }
    }

    private boolean Complete(Reply reply) {
        return replyService.isFinishGrade(reply) && replyService.isFinishResult(reply) && replyService.isFinishQuery(reply);
    }
}
