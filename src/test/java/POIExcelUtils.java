import org.apache.poi.hssf.usermodel.*;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

/**
 * @author lizhiyong
 * @version $Id: POIExcelUtils.java, v 0.1
 * 2014年9月18日 上午9:28:30 Exp $
 */
public class POIExcelUtils {
    /**
     * 定制日期格式
     */
    private static String DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";
    /**
     * 定制浮点数格式
     */
    private static String NUMBER_FORMAT = "#,##0.00";
    /**
     * 定制百分比格式
     */
    private static String PRECENT_FORMAT = "0.00%";
    private static HSSFWorkbook workbook = new HSSFWorkbook();
    private static HSSFSheet sheet = workbook.createSheet();
    private static HSSFRow row;

    /**
     * 导出Excel文件
     *
     * @param file
     * @throws IOException
     */
    public static void exportXLS(File file) throws IOException {
        try {
            FileOutputStream fOut = new FileOutputStream(file);
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
    public static void createRow(int index) {
        row = sheet.createRow(index);
    }

    /**
     * 设置单元格的字符值格式
     *
     * @param index 列号
     * @param value 单元格填充的值
     */
    public static void setStringCell(int index, String value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellValue(value);
        cell.setCellType(HSSFCell.CELL_TYPE_STRING);
    }

    /**
     * 设置单元格日期格式
     *
     * @param index 列号
     * @param value 单元格填充值
     */
    public static void setDateCell(int index, Calendar value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellValue(value.getTime());
        //建立新的cell样式
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        HSSFDataFormat format = workbook.createDataFormat();
        //设置cell样式为定制的日期格式
        cellStyle.setDataFormat(format.getFormat(DATE_FORMAT));
        //居中
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        //设置该cell日期的显示格式
        cell.setCellStyle(cellStyle);
    }

    /**
     * 设置单元格整数數值格式
     *
     * @param index 列号
     * @param value 单元格填充值
     */
    public static void setIntCell(int index, int value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
        cell.setCellValue(value);
    }

    /**
     * 设置单元格浮点数值格式
     *
     * @param index 列号
     * @param value 单元格填充值
     */
    public static void setNumberCell(int index, double value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellType(HSSFCell.CELL_TYPE_NUMERIC);
        cell.setCellValue(value);
        //建立新的cell样式
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        HSSFDataFormat format = workbook.createDataFormat();
        //设置cell样式为定制的浮点数格式
        cellStyle.setDataFormat(format.getFormat(NUMBER_FORMAT));
        //设置该cell浮点数的显示格式
        cell.setCellStyle(cellStyle);
    }

    /**
     * 设置单元格百分比格式
     *
     * @param index 列号
     * @param value 单元格填充值
     */
    public static void setPercentCell(int index, double value) {
        HSSFCell cell = row.createCell(index);
        cell.setCellValue(value);
        //建立新的cell样式
        HSSFCellStyle cellStyle = workbook.createCellStyle();
        HSSFDataFormat format = workbook.createDataFormat();
        cellStyle.setDataFormat(format.getFormat(PRECENT_FORMAT));
        cell.setCellStyle(cellStyle);
    }

    public static void main(String[] args) {
        System.out.println(" 开始导出Excel文件 ");
        createRow(0);
        setStringCell(0, " 编号 ");
        setStringCell(1, " 名称 ");
        setStringCell(2, " 日期 ");
        setStringCell(3, " 金额 ");
        createRow(1);
        setIntCell(0, 1);
        setStringCell(1, " 工商银行 ");
        setDateCell(2, Calendar.getInstance());
        setNumberCell(3, 111123.99);
        createRow(2);
        setIntCell(0, 2);
        setStringCell(1, " 招商银行 ");
        setDateCell(2, Calendar.getInstance());
        setNumberCell(3, 222456.88);
        try {
            String filePath = "E:/lizhiyong.xls";
            exportXLS(new File(filePath));
            System.out.println(" 导出Excel文件[成功] ");
        } catch (IOException e1) {
            System.out.println(" 导出Excel文件[失败] ");
            e1.printStackTrace();
        }
    }
    /**
     * 生成一个Excel文件POI
     *
     * @param inputFile  输入模板文件路径
     * @param outputFile 输入文件存放于服务器路径
     * @param dataList   待导出数据
     * @throws Exception
     */
  /*  @SuppressWarnings("rawtypes")
    public static File exportExcelFile(String channelCode, String filePath, List titleList, List dataList, String fileName) throws Exception {
        File file = new File(filePath);
        if (!file.exists()) {
            file.mkdir();
            System.out.println("文件夹已创建");
        }
        if (ChannelCodeEnums.PINGAN.getChannelCode().equals(channelCode)) {
            //设置列宽
            sheet.setColumnWidth(0, 5000);
            sheet.setColumnWidth(1, 4000);
            sheet.setColumnWidth(2, 8000);
        }
        //定义文件名格式并创建
        File excelFile = File.createTempFile(fileName, ".xls", new File(filePath));
        //添加头信息
        int row = 0;
        for (Iterator iterator = titleList.iterator(); iterator.hasNext(); ) {
            LinkedHashMap titleMap = (LinkedHashMap) iterator.next();
            //新增一行
            createRow(row);
            int cell = 0;
            for (Iterator titleIterator = titleMap.entrySet().iterator(); titleIterator.hasNext(); ) {
                java.util.Map.Entry titleEntry = (java.util.Map.Entry) titleIterator.next();
                //向列中添加值
                setStringCell(cell, (String) titleEntry.getValue());
                cell++;
            }
            row++;
        }
        //下面开始添加单元格信息
        int rows = titleList.size();
        for (Iterator iterator = dataList.iterator(); iterator.hasNext(); ) {
            LinkedHashMap dataMap = (LinkedHashMap) iterator.next();
            //新增一行
            createRow(rows);
            int cells = 0;
            for (Iterator dataIterator = dataMap.entrySet().iterator(); dataIterator.hasNext(); ) {
                java.util.Map.Entry dataEntry = (java.util.Map.Entry) dataIterator.next();
                if (ChannelCodeEnums.PINGAN.getChannelCode().equals(channelCode)) {
                    if ("refChannelOrderNo".equals(dataEntry.getKey())) {
                        //向列中添加值
                        setStringCell(cells, (String) dataEntry.getValue());
                    } else if ("amount".equals(dataEntry.getKey())) {
                        //向列中添加浮点型数值
                        setNumberCell(cells, Double.parseDouble((String) dataEntry.getValue()));
                    } else {
                        //向列中添加值
                        setStringCell(cells, (String) dataEntry.getValue());
                    }
                } else {
                    //向列中添加值
                    setStringCell(cells, (String) dataEntry.getValue());
                }
                cells++;
            }
            rows++;
        }
        exportXLS(excelFile);
        return excelFile;
    }*/
}
