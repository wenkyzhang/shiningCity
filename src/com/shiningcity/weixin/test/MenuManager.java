package com.shiningcity.weixin.test;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.shiningcity.weixin.entity.GlobalAccessToken;
import com.shiningcity.weixin.menu.entity.Button;
import com.shiningcity.weixin.menu.entity.CommonButton;
import com.shiningcity.weixin.menu.entity.ComplexButton;
import com.shiningcity.weixin.menu.entity.Menu;
import com.shiningcity.weixin.menu.entity.ViewButton;
import com.shiningcity.weixin.utils.WeixinUtil;

/**
 * 微信自定义菜单测试代码
 * 菜单对象包含多个菜单项（最多只能有3个），这些菜单项即可以是子菜单项（不含二级菜单的一级菜单），也可以是父菜单项（包含二级菜单的菜单项），
 * @author  turongfan
 * @version  [版本号, 2015-1-11]
 * @see  [相关类/方法]
 * @since  [产品/模块版本]
 */

public class MenuManager {
	private static Logger log = LoggerFactory.getLogger(MenuManager.class);

	public static void main(String[] args) {
		// 第三方用户唯一凭证
		String appId = "wxe9731c97c539d7d1";
		// 第三方用户唯一凭证密钥
		String appSecret = "147af2c13c48831bbfedd04c6601abfd";

		// 调用接口获取access_token
		GlobalAccessToken at = WeixinUtil.getAccessToken(appId, appSecret);

		if (null != at) {
			// 调用接口创建菜单
			int result = WeixinUtil.createMenu(getMenu(), at.getAccessToken());

			// 判断菜单创建结果
			if (0 == result)
				log.info("菜单创建成功！");
			else
				log.info("菜单创建失败，错误码：" + result);
		}
	}

	/**
	 * 组装菜单数据
	 * 
	 * @return
	 */
	private static Menu getMenu() {
		CommonButton btn11 = new CommonButton();
		btn11.setName("天气预报");
		btn11.setType("click");
		btn11.setKey("11");

		CommonButton btn12 = new CommonButton();
		btn12.setName("公交查询");
		btn12.setType("click");
		btn12.setKey("12");

		CommonButton btn13 = new CommonButton();
		btn13.setName("周边搜索");
		btn13.setType("click");
		btn13.setKey("13");

		CommonButton btn14 = new CommonButton();
		btn14.setName("历史上的今天");
		btn14.setType("click");
		btn14.setKey("14");
		
		CommonButton btn15 = new CommonButton();
		btn15.setName("电影排行榜");
		btn15.setType("click");
		btn15.setKey("32");

		CommonButton btn21 = new CommonButton();
		btn21.setName("歌曲点播");
		btn21.setType("click");
		btn21.setKey("21");

		CommonButton btn22 = new CommonButton();
		btn22.setName("经典游戏");
		btn22.setType("click");
		btn22.setKey("22");

		CommonButton btn23 = new CommonButton();
		btn23.setName("美女电台");
		btn23.setType("click");
		btn23.setKey("23");

		CommonButton btn24 = new CommonButton();
		btn24.setName("人脸识别");
		btn24.setType("click");
		btn24.setKey("24");

		CommonButton btn25 = new CommonButton();
		btn25.setName("聊天唠嗑");
		btn25.setType("click");
		btn25.setKey("25");

		CommonButton btn31 = new CommonButton();
		btn31.setName("Q友圈");
		btn31.setType("click");
		btn31.setKey("31");

		CommonButton btn33 = new CommonButton();
		btn33.setName("幽默笑话");
		btn33.setType("click");
		btn33.setKey("33");
		
		CommonButton btn34 = new CommonButton();
		btn34.setName("用户反馈");
		btn34.setType("click");
		btn34.setKey("34");
		
		CommonButton btn35 = new CommonButton();
		btn35.setName("关于我们");
		btn35.setType("click");
		btn35.setKey("35");
		
		ViewButton btn32 = new ViewButton();
		btn32.setName("使用帮助");
		btn32.setType("view");
		btn32.setUrl("http://liufeng.gotoip2.com/xiaoqrobot/help.jsp");

		ComplexButton mainBtn1 = new ComplexButton();
		mainBtn1.setName("生活助手");
		mainBtn1.setSub_button(new Button[] { btn11, btn12, btn13, btn14, btn15 });

		ComplexButton mainBtn2 = new ComplexButton();
		mainBtn2.setName("休闲驿站");
		mainBtn2.setSub_button(new Button[] { btn21, btn22, btn23, btn24, btn25 });

		ComplexButton mainBtn3 = new ComplexButton();
		mainBtn3.setName("更多");
		mainBtn3.setSub_button(new Button[] { btn31, btn33, btn34, btn35, btn32 });

		/**
		 * 这是公众号xiaoqrobot目前的菜单结构，每个一级菜单都有二级菜单项<br>
		 * 
		 * 在某个一级菜单下没有二级菜单的情况，menu该如何定义呢？<br>
		 * 比如，第三个一级菜单项不是“更多体验”，而直接是“幽默笑话”，那么menu应该这样定义：<br>
		 * menu.setButton(new Button[] { mainBtn1, mainBtn2, btn33 });
		 */
		Menu menu = new Menu();
		menu.setButton(new Button[] { mainBtn1, mainBtn2, mainBtn3 });

		return menu;
	}
}