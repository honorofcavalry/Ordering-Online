package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092700611210";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCqvMDg5P2rg4Yviqf/xMlZzRl5u9nAEUy3gJEITJ7np8vgqltFwH94TnY5c1fFT/oL96qqrXtlUwTqbS3U8Dcn7EAIEIuYvPq3hDYg7tAyz51UQptiPsukIQi03rVDImBkrAXMp2zCufXC3TzOteIWGIZl7GBv1HSO0H2h9tUkyoGF6dLlpu5r2Mt1nYb8J2kN/Wn3kWQe4tRX5AD71LcROIxSBL97PbZL6fENXLyMdNm8yPuNeeM9fbJo1UdPy47p/Kt0LIRAlYZu2+bphCGKPUGkPrnE11rg//yS664m/qcwej+bFRMWFAHfZ5Q/OpjTWNqH2h8znyYXLdyM2qVLAgMBAAECggEBAJP7w+VpNKDK/6wHLvOVubtW9IS5l9NMa0UFby9VUcmRezlADpoXbaR1xSyoV2PSnPRwdoE2miRJX5JcjQPqLLQypZEX3hbFfT1An7XNp7DSmBenH4x4xwJ8C1LRUSReEFRRcTlfx/nDOkrqfMDhjpL+MMb4qOFksJ30AWA3U6htWQCQX5yyLZwKWx5PvFUD/V8jbdUT0HmkdYUgLLPLrMGG5JE5zpwd58io+ffS+mw3KG4a26brbqaMfAzIUoriMRd5wgtm7CWaJDXS87ZFwSqa5nSN9R6E9SApLphPG/Get0EnaQirDFxiqIjUuo2UjtCXqUG3f/VjW4B4q/iaqkECgYEA+PHb+gZwXw4UobVCYpK21A2yoiRKpvVYH+WqNAwN+K0Zd/7hWE1IUDkUa4QbSgd6mT2o4j8R/wiB5QfYlQOuw6KEXIoSy6Grv6ioI3JYRa2kveBg9nheXft8kJx3NCOE2CMViFhpLHrRWObj1Va3PbtAF2ILW8T1yPFgv3QMzuECgYEAr5N8Cs+/KO4dZs+ift1Th4jDd+mx29DEX4o1NqA2JkEGJI/u8veohajCLPOJDOK4kR4cUZjl/maNpzyPuZjvyOM3floz703P29I3c8L8uF52qfCwZ0NcCIO5LOyAM8IbLOzVUUjdDCDQn+6yl5yuXfNlSwM6YgJaRkIky8nUFasCgYBRvpmNMDAWBnmf3/U8iRCf8R+HPoOE72tQjgmlrY+o6K5ESN2WMUpdjWC3LVoIpQwM5cJfCHbQV+rPWhQ0WlE4zFTKTkx9sUjEVo1fllyGBM7jypoMVNon4jy0/6vk4wTsNBkN/HoMsQetOaP2mdLx4lrZUsiICdTrdtdeBq1uAQKBgQCa1nIaBsQKkJOVS59+SimT6WSYp5uWwzGrH/N1zSxz5/xG2jhcRVR1KzKy+cLvfjJOqENJIpISHNbnmV0WzG0KuHcEEwCiFfktXuJQULEW1xfHHuAy8RCE4cW4fIlDG/djUyl8mcl3HKlfod4WHrMXX8MAuEQQkwqR01sn7UIAKQKBgQC4lw+KIh4nxR36qYKIeoLuLfZOiLLOkjCpuEBdQz+IYdPe9vdJfoR1TR2CfadoRuf+hMxtdXhIY0Aw+ePQZPwTIlzinjH8/IxlMscHUkfEYuvYvt0A5Oqpo0c4EBzxY20hNHDOkdCs5LbyV7sRw7rVauKrasrrm07mZlWPKGmZ0w==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvPSZvbe1l9oZJRnV/rON3sBC2a38sDQCQl38Hc5olz5A3jz/RtlG9zi8uR3Bn+QtiRHWnoxcDZG8uo2Y4U1K5tcFpe6m3Y3vT7y6/762W843fdKNt5696n2uC4OEwLVAKW7hUvY1aBvXXq7FRkzCCAYkL7HaruEp1SobLXgSiQDpjCvXvyvGE3nBO31o5z2EqplP55LwFXjpNboepxTea1bVnmXZT4JH2xniXXvrB8hnYVaOMk/oLNJcWmf+UDAvE8PPBKdpKmoB3ksYXbE6jtud0/B7jKMBEpEAbdgIKHsI8jgVNpc61OurXeSiAy0fZS4OBpZfvhzHoGm7uIQQGwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/Ordering-Online/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/Ordering-Online/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

