package com.shiningcity.weixin.entity;

/**
 * 
 * <GlobalAccessToken对应公众号的access_token>
 * access_token是公众号的全局唯一票据， 公众号调用各接口时都需使用access_token。
 * 开发者需要进行妥善保存。access_token的存储至少要保留512个字符空间。
 * access_token的有效期目前为2个小时，需定时刷新，重复获取将导致上次获取的access_token失效。
 * 
 * @author  turongfan
 * @version  [版本号, 2015-1-11]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class GlobalAccessToken 
{
    // 接口访问凭证
    private String accessToken;
    
    // 凭证有效期，单位：秒
    private int expiresIn;

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public int getExpiresIn() {
        return expiresIn;
    }

    public void setExpiresIn(int expiresIn) {
        this.expiresIn = expiresIn;
    }
}