package cn.tarena.ht.service;

import cn.tarena.ht.mapper.ReplyMapper;
import cn.tarena.ht.pojo.Reply;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.Region;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ReplyServiceImpl implements ReplyService {
    private HSSFWorkbook workbook = new HSSFWorkbook();
    private HSSFSheet sheet = workbook.createSheet();
    private HSSFRow row;
    @Autowired
    ReplyMapper replyMapper;
    @Autowired
    StudentService studentService;

    @Override
    public List<Reply> findAll() {
        return replyMapper.findAll();
    }

    @Override
    public List<Reply> findAllUnfinished() {
        return replyMapper.findAllUnfinished();
    }

    @Override
    public void updateResult(Reply reply) {
        replyMapper.updateResult(reply);
    }

    @Override
    public void updateGrade(Reply reply) {
        replyMapper.updateGrade(reply);
    }

    @Override
    public void updateGradeAndResult(Reply reply) {
        replyMapper.updateGradeAndResult(reply);
    }

    @Override
    public boolean isFinishGrade(Reply reply) {
        return replyMapper.getGrades(reply) != null;
    }

    @Override
    public boolean isFinishResult(Reply reply) {
        return replyMapper.getResult(reply) != null;
    }

    @Override
    public boolean isFinishQuery(Reply reply) {
        return replyMapper.getQuery(reply) != null;
    }

    @Override
    public void updateStatus(Reply reply) {
        replyMapper.updateStatus(reply);
    }

    @Override
    public void updateStatusToFalse(Reply reply) {
        replyMapper.updateStatusToFalse(reply);
    }
    public Map<String, String> getReplyStaticsMap() {
        Map<String,String> map = new HashMap<String,String>();
        map.put("pageTitleSum", String.valueOf(replyMapper.pageTitleSum()));
        map.put("passRate", String.valueOf(replyMapper.pass()*100/replyMapper.findAll().size()));
        map.put("studentSum", String.valueOf(studentService.findAll().size()));
        map.put("teaProfessor", String.valueOf(replyMapper.teaProfessor()));
        map.put("teaAssociateProfessor", String.valueOf(replyMapper.teaAssociateProfessor()));
        map.put("teaTeacher", String.valueOf(replyMapper.teaTeacher()));
        map.put("teaSeniorProgrammer", String.valueOf(replyMapper.teaSeniorProgrammer()));
        map.put("teaPositiveSeniorProgrammer", String.valueOf(replyMapper.teaPositiveSeniorProgrammer()));
        map.put("infoFinished", String.valueOf(replyMapper.infoFinished()));
        map.put("infoUnFished", String.valueOf(replyMapper.findAll().size()-replyMapper.infoFinished()));
        map.put("infoSum", String.valueOf(replyMapper.findAll().size()));
        map.put("majorCUS", String.valueOf(replyMapper.majorCUS()));
        map.put("majorCT", String.valueOf(replyMapper.majorCT()));
        map.put("majorSE", String.valueOf(replyMapper.majorSE()));
        map.put("time6", String.valueOf(replyMapper.time6()));
        map.put("time12", String.valueOf(replyMapper.time12()));
        map.put("typeApplyStudy", String.valueOf(replyMapper.typeApplyStudy()));
        map.put("typeEngineDesign", String.valueOf(replyMapper.typeEngineDesign()));
        map.put("typeProductStudy", String.valueOf(replyMapper.typeProductStudy()));
        map.put("queryTime", replyMapper.queryTime());
        return map;
    }

    public void genericWB(Map<String, String> map) {
        System.err.println(" 开始导出Excel文件 ");
        HSSFCellStyle style = workbook.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        createRow(0);
        sheet.addMergedRegion(new Region(0, (short) 0, 0, (short) 1));
        setStringCell(0, "统计类别");
        setStringCell(1, "");
        setStringCell(2, "统计结果");
        createRow(1);
        setStringCell(0, "论文题目统计（论文总数）");
        setStringCell(1, "");
        setStringCell(2, map.get("pageTitleSum"));
        sheet.addMergedRegion(new Region(1, (short) 0, 1, (short) 1));
        createRow(2);
        setStringCell(0, "通过率统计（论文通过率/%）");
        setStringCell(1, "");
        setStringCell(2, map.get("passRate"));
        sheet.addMergedRegion(new Region(2, (short) 0, 2, (short) 1));
        createRow(3);
        setStringCell(0, "研究生统计（研究生总数/人）");
        setStringCell(1, "");
        setStringCell(2, map.get("studentSum"));
        sheet.addMergedRegion(new Region(3, (short) 0, 3, (short) 1));
        createRow(4);
        setStringCell(0, "导师统计（/人）");
        setStringCell(1, "教授");
        setStringCell(2, map.get("teaProfessor"));
        createRow(5);
        setStringCell(1, "副教授");
        setStringCell(2, map.get("teaAssociateProfessor"));
        createRow(6);
        setStringCell(1, "讲师");
        setStringCell(2, map.get("teaTeacher"));
        createRow(7);
        setStringCell(1, "高级工程师");
        setStringCell(2, map.get("teaSeniorProgrammer"));
        createRow(8);
        setStringCell(1, "正高级高级工程师");
        setStringCell(2, map.get("teaPositiveSeniorProgrammer"));
        sheet.addMergedRegion(new Region(4, (short) 0, 8, (short) 0));
        createRow(9);
        setStringCell(0, "信息录入统计（/人）");
        setStringCell(1, "完成录入");
        setStringCell(2, map.get("infoFinished"));
        createRow(10);
        setStringCell(1, "未完成录入");
        setStringCell(2, map.get("infoUnFished"));
        createRow(11);
        setStringCell(1, "总计");
        setStringCell(2, map.get("infoSum"));
        sheet.addMergedRegion(new Region(9, (short) 0, 11, (short) 0));
        createRow(12);
        setStringCell(0, "专业人数统计（/人）");
        setStringCell(1, "计算机应用技术");
        setStringCell(2, map.get("majorCUS"));
        createRow(13);
        setStringCell(1, "计算机技术");
        setStringCell(2, map.get("majorCT"));
        createRow(14);
        setStringCell(1, "软件工程");
        setStringCell(2, map.get("majorSE"));
        sheet.addMergedRegion(new Region(12, (short) 0, 14, (short) 0));
        createRow(15);
        setStringCell(0, "毕业时间统计（/人）");
        setStringCell(1, "6月毕业");
        setStringCell(2, map.get("time6"));
        createRow(16);
        setStringCell(1, "12月毕业");
        setStringCell(2, map.get("time12"));
        sheet.addMergedRegion(new Region(15, (short) 0, 16, (short) 0));
        createRow(17);
        setStringCell(0, "论文类型统计（/个）");
        setStringCell(1, "应用研究");
        setStringCell(2, map.get("typeApplyStudy"));
        createRow(18);
        setStringCell(1, "工程设计");
        setStringCell(2, map.get("typeEngineDesign"));
        createRow(19);
        setStringCell(1, "产品研究");
        setStringCell(2, map.get("typeProductStudy"));
        sheet.addMergedRegion(new Region(17, (short) 0, 19, (short) 0));
        createRow(20);
        setStringCell(0, "统计时间");
        setStringCell(1, "");
        setStringCell(2, map.get("queryTime"));
        sheet.addMergedRegion(new Region(20, (short) 0, 20, (short) 1));
        try {
            String filePath = "E:\\FileDownloads\\毕设\\download\\ReplyStatics.xls";
            exportXLS(new File(filePath));
            System.out.println(" 导出Excel文件[成功] ");
        } catch (IOException e1) {
            System.out.println(" 导出Excel文件[失败] ");
            e1.printStackTrace();
        }
    }

    public void exportXLS(File file) throws IOException {
        try {
            FileOutputStream fOut = new FileOutputStream(file);
            HSSFCellStyle style = workbook.createCellStyle();
            style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
            style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
            //遍历该工作薄中所有的行
            for (org.apache.poi.ss.usermodel.Row row : workbook.getSheetAt(0)) {
                //遍历一行中的所有的单元格
                for (org.apache.poi.ss.usermodel.Cell cell : row) {
                    cell.setCellStyle(style);
                }
                row.setHeight((short) (1.5 * 256));
            }
            sheet.setColumnWidth(0, 31 * 256);
            sheet.setColumnWidth(1, 31 * 256);
            sheet.setColumnWidth(2, 20 * 256);
            sheet.setDefaultRowHeightInPoints(50);
            workbook.write(fOut);
            fOut.flush();
            fOut.close();
        } catch (IOException e) {
            e.getStackTrace();
        }
    }

    /**
     * 增加一行
     *
     * @param index 行号
     */
    public void createRow(int index) {
        row = sheet.createRow(index);
    }

    /**
     * 设置单元格的字符值格式
     *
     * @param index 列号
     * @param value 单元格填充的值
     */
    public void setStringCell(int index, String value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellValue(value);
        cell.setCellType(HSSFCell.CELL_TYPE_STRING);
    }

    /**
     * 设置单元格整数數值格式
     *
     * @param index 列号
     * @param value 单元格填充值
     */
    public void setStringCell(int index, int value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
        cell.setCellValue(value);
    }
}
