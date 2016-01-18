package com.shiningcity.weixin;

import org.apache.log4j.Logger;

import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.utils.WeixinUtil;

public class TokenThread implements Runnable {  
    private static Logger logger = Logger.getLogger(TokenThread.class);  
    // 第三方用户唯一凭证  
    public static String appid = "";  
    // 第三方用户唯一凭证密钥  
    public static String appsecret = "";  
    public static GlobalAccessToken accessToken = null;  
  
    public void run() {  
        while (true) {  
            try {  
                accessToken = WeixinUtil.getAccessToken(appid, appsecret);  
                if (null != accessToken) {  
                    logger.info(String.format("获取access_token成功，有效时长%d秒 token:%s", accessToken.getExpiresIn(), accessToken.getAccessToken()));  
                    // 休眠7000秒  
                    Thread.sleep((accessToken.getExpiresIn() - 200) * 1000);  
                } else {  
                    // 如果access_token为null，60秒后再获取  
                    Thread.sleep(60 * 1000);  
                }  
            } catch (InterruptedException e) {  
                try {  
                    Thread.sleep(60 * 1000);  
                } catch (InterruptedException e1) {  
                    logger.error(e1.getMessage());  
                }  
                logger.error(e.getMessage());  
            }  
        }  
    }  
} 