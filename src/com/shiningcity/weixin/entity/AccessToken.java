package com.shiningcity.weixin.entity;

/**
 * 
 * <微信网页授权access_token>
 * 1、微信网页授权是通过OAuth2.0机制实现的，在用户授权给公众号后，公众号可以获取到一个网页授权特有的接口调用凭证
 * （网页授权access_token），通过网页授权access_token可以进行授权后接口调用，如获取用户基本信息；
 * 2、其他微信接口，需要通过基础支持中的“获取access_token”接口来获取到的普通access_token调用。
 * 
 * @author  turongfan
 * @version  [版本号, 2015-1-11]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */
public class AccessToken 
{
    /**
     * 接口访问凭证
     */
    private String access_token;
    
    /**
     * 凭证有效期，单位：秒
     */
    private int expires_in;
    
    /**
     * 用户刷新的Token
     */
    private String refresh_token;

    /**
     * 用户唯一标识，请注意，在未关注公众号时，用户访问公众号的网页，
     * 也会产生一个用户和公众号唯一的OpenID
     */
    private String openid;
    
    /**
     * 用户授权的作用域snsapi_base和snsapi_userinfo
     */
    private String scope;
    
    /**
     * UnionId 开放平台唯一ID
     */
    private String unionid;
    
    public String getUnionid() {
		return unionid;
	}

	public void setUnionid(String unionid) {
		this.unionid = unionid;
	}

	public String getAccess_token()
    {
        return access_token;
    }

    public void setAccess_token(String accessToken)
    {
        access_token = accessToken;
    }

    public int getExpires_in()
    {
        return expires_in;
    }

    public void setExpires_in(int expiresIn)
    {
        expires_in = expiresIn;
    }

    public String getRefresh_token()
    {
        return refresh_token;
    }

    public void setRefresh_token(String refreshToken)
    {
        refresh_token = refreshToken;
    }

    public String getOpenid()
    {
        return openid;
    }

    public void setOpenid(String openid)
    {
        this.openid = openid;
    }

    public String getScope()
    {
        return scope;
    }

    public void setScope(String scope)
    {
        this.scope = scope;
    }

    public String toString()
    {
        return "accessToken:"+access_token
               +"\nexpiresIn:"+expires_in
               +"\nrefreshToken:"+refresh_token
               +"\nopenid:"+openid
               +"\nscope:"+scope;
    }
}
