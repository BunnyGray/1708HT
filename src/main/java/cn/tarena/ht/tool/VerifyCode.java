package cn.tarena.ht.tool;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

/* 利用java程序绘制验证码图片 */
public class VerifyCode {
    private static int width = 120;
    private static int height = 30;
    private static String codes = "23456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ";
    private static String[] fontNames = { "微软雅黑", "黑体", "华文楷体", "幼圆", "宋体",
            "楷体" };

    private String valistr = ""; //保存验证码文本

    /**
     * 绘制验证码图片
     */
    public void drawImage(OutputStream output) {
        // 1.创建一个图片缓冲区对象(代表一副图像),
        // 并设置图片的宽高和类型
        BufferedImage bi = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);

        // 2.拿到画笔(得到绘制环境)
        Graphics2D g = (Graphics2D) bi.getGraphics();

        // 3.开始画图
		/* 画一个(椭)圆 */
        // g.drawOval(0, 0, width, height);

		/* 画一个矩形 */
        // g.drawRect(0, 0, width-1, height-1);
        // g.drawRect(5, 5, 20, 20);

		/* 设置背景颜色 */
        g.fillRect(0, 0, width, height);

		/* 设置画笔颜色 */
        g.setColor(Color.RED);

		/* 设置字体大小 */
        g.setFont(new Font("微软雅黑", Font.BOLD, 22));

		/* 画一个字符(串) */
        for (int i = 0; i < 4; i++) {
			/* 设置字体颜色随机 */
            g.setColor(new Color(getRandom(0, 175), getRandom(0, 175),
                    getRandom(0, 175)));

			/* 设置字体随机 */
            g.setFont(new Font(fontNames[getRandom(0, fontNames.length)],
                    Font.BOLD, 22));

			/* 将图片旋转指定的度数 */
			/* 将随机获取的度数转成弧度!!! */
            double theta = getRandom(-45, +45) * Math.PI / 180;
            g.rotate(theta, i * 30 + 7, height - 7);

			/* 随机获取一个字符 */
            String code = codes.charAt(getRandom(0, codes.length())) + "";
            g.drawString(code, i * 30 + 7, height - 7);

            valistr = valistr + code;

			/* 将图片再旋转回来 */
            g.rotate(-theta, i * 30 + 7, height - 7);
        }

		/* 画干扰线 */
        for (int i = 0; i < 6; i++) {
			/* 设置字体颜色随机 */
            g.setColor(new Color(getRandom(0, 175), getRandom(0, 175),
                    getRandom(0, 175)));
            //随机画一条线
            g.drawLine(getRandom(0, width), getRandom(0, height),
                    getRandom(0, width), getRandom(0, height));
        }

		/* 画一个边框 */
        //设置边框的颜色
        g.setColor(Color.GRAY);
        g.drawRect(0, 0, width-1, height-1);

        // 4.保存图片到指定位置(硬盘/发送给浏览器)
        try {
            ImageIO.write(bi, "JPEG", output);
        } catch (IOException e) {
            e.printStackTrace();
        }
        // 5.释放资源
        g.dispose();
    }

    /**
     * 返回验证码文本
     * @return
     */
    public String getCode(){
        return valistr;
    }

    /* 获取一个指定范围的随机数 0~10 3~10 */
    public int getRandom(int start, int end) {
        Random random = new Random();
        return random.nextInt(end - start) + start;
    }

    public static void main(String[] args) throws Exception {
        VerifyCode vc = new VerifyCode();
        vc.drawImage(new FileOutputStream("E:\\FileDownloads\\毕设\\verifycode\\vc.jpg"));
        System.err.println(vc.getCode());
        System.out.println("执行完成!!");
    }
}
