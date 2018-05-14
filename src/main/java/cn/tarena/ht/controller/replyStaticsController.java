package cn.tarena.ht.controller;

import cn.tarena.ht.service.ReplyService;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/sysadmin/replyStatics")
public class replyStaticsController extends BaseController {
    private static Map<String, String> map;
    @Autowired
    ReplyService replyService;

    @RequestMapping("downloadXls")
    public void list(Model model, HttpServletResponse response) throws IOException {
        replyService.genericWB(map);
        String fname = "ReplyStatics_" + new SimpleDateFormat("MMddHHmm").format(new Date()) + ".xls";
        response.setHeader("Content-Disposition", "attachment;filename=" + fname);
        //3、创建输入流对象，将文件从服务器的物理磁盘上读到内存中
        InputStream in = new FileInputStream(new File("E:\\FileDownloads\\毕设\\download\\ReplyStatics.xls"));
        //4、获取response响应的输出流
        OutputStream out = response.getOutputStream();
        //5、定义一个字节数组
        byte[] bts = new byte[1024];
        int len = -1;
        //6读取->输出
        while ((len = in.read(bts)) != -1) {
            out.write(bts, 0, len);
        }
        //7、关闭流
        in.close();
        out.close();
        //        Map<String,Integer> map = replyService.getReplyStaticsMap();
        //        model.addAttribute("map",map);
        //        return "/ReplyStatics/jReplyStaticsList";
    }

    @RequestMapping("show")
    public String show(Model model) {
        map = replyService.getReplyStaticsMap();
        model.addAttribute("replyMap", map);
        return "/replyStatics/jReplyStaticsList";
    }
}
