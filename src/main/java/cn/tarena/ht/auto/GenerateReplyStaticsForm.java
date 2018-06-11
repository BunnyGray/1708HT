package cn.tarena.ht.auto;

import cn.tarena.ht.service.ReplyService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Haozg
 * <p>
 * 2018年05月17日16:08
 */
public class GenerateReplyStaticsForm extends AbstractAutoJob {
    @Autowired
    ReplyService replyService;
    public JobInvokeResult executeJob() {
        JobInvokeResult result = new JobInvokeResult();
        try {
            replyService.genericWB(replyService.getReplyStaticsMap());
            result.status = "0";
        } catch (Exception e) {
            result.err = "自动更新答辩统计表失败";
            e.printStackTrace();
        }
        return result;
    }
}
