
function 获取内容()
  Http.get("http://webact.185.hk/sharedkey.php",nil,"utf8",nil,function(code,content,cookie,header)
    cookie=cookie
    cookie1=cookie
    --print(cookie)
    刷新中=1
    if(code==200 and content)then
      滑动2.getChildAt(0).addView(loadlayout({
        LinearLayout,
        id="滑动内容布局";
        layout_width="fill_parent";
        layout_height="fill_parent";
        orientation="vertical",
      }))

      内容=content:match("<div class=\"container\" id=\"getkey\"></div>\n<div class=\"container\">(.-)</div>")
      --     print(内容)
      列表名=内容:gmatch("role=\"button\">(.-)</a>")
      列表值=内容:gmatch("<a href=\"(.-)\"")
      第几=0
      需检测=0
      已检测=0
      if 开发者=="1" then
        渐变动画(滑动2,0,1)
      end
      for 列表数量 in 列表名 do
        第几=第几+1
        if 列表数量:find("教程") or 列表数量:find("关于") then
         else
          if 开发者=="1" then
            需检测=需检测+1
            Http.get("http://webact.185.hk/sharedkey.php?description="..列表数量.."",cookie,"utf8",nil,function(code,content,cookie,header)
              if(code==200 and content)then
                已检测=已检测+1
                内容=content:match("<div class=\"container\" id=\"getkey\"></div>\n<div class=\"container\">(.-)</div>")
                --    pri
                if 内容:find("查看密钥") then
                  检测图标(列表数量)
                  添加项目(列表数量,"有可用密钥")
                  渐变动画(列表卡片,0,1)
                 else
                  检测图标(列表数量)
                  添加项目(列表数量,"无可用密钥")
                  渐变动画(列表卡片,0,1)
                end
                if 已检测==需检测 then
                  --渐变动画(滑动,0,1)
                  刷新.setRefreshing(false)
                end
               else
                已检测=已检测+1
                检测图标(列表数量)
                添加项目(列表数量,"检测失败")
                渐变动画(列表卡片,0,1)
                if 已检测==需检测 then
                  --渐变动画(滑动,0,1)
                  刷新.setRefreshing(false)
                end
              end
            end)
           else
            检测图标(列表数量)
            添加项目(列表数量,"未检测")
            渐变动画(滑动2,0,1)
            刷新.setRefreshing(false)
          end
        end
      end
      if 第几==0 then
        滑动内容布局.addView(loadlayout(
        {
          CardView;
          elevation="0";
          id="列表卡片";
          radius=圆角;
          layout_height="fill_parent";
          layout_width="fill_parent";
          cardBackgroundColor="#00000000";
          onClick=function()
            渐变动画(滑动2,1,0)
            刷新.setRefreshing(true)
            task(250,function()
              滑动2.getChildAt(0).removeView(滑动内容布局)
              获取内容()
            end)
          end;
          {
            LinearLayout;
            layout_marginTop="-56sp";
            layout_height="100%h";
            layout_width="fill_parent";
            orientation="vertical";
            gravity="center";
            {
              ImageView;
              layout_marginTop=-状态栏高度;
              src="drawable/close_circle.png";
              colorFilter=副字体颜色;
              layout_height="40sp";
              layout_width="40sp";
            },
            {
              TextView;
              layout_marginTop="10sp";
              text="暂无内容，点击刷新";
              textColor=副字体颜色;
              textSize="16sp";
            };
          };
        }))
      end
     else
      滑动2.getChildAt(0).addView(loadlayout({
        LinearLayout,
        id="滑动内容布局";
        layout_width="fill_parent";
        layout_height="fill_parent";
        orientation="vertical",
      }))
      滑动内容布局.addView(loadlayout(
      {
        CardView;
        elevation="0";
        id="列表卡片";
        radius=圆角;
        layout_height="fill_parent";
        layout_width="fill_parent";
        cardBackgroundColor="#00000000";
        onClick=function()
          渐变动画(滑动2,1,0)
          刷新.setRefreshing(true)
          task(250,function()
            滑动2.getChildAt(0).removeView(滑动内容布局)
            获取内容()
          end)
        end;
        {
          LinearLayout;
          layout_marginTop="-56sp";
          layout_height="100%h";
          layout_width="fill_parent";
          orientation="vertical";
          gravity="center";
          {
            ImageView;
            layout_marginTop=-状态栏高度;
            src="drawable/close_circle.png";
            colorFilter=副字体颜色;
            layout_height="40sp";
            layout_width="40sp";
          },
          {
            TextView;
            layout_marginTop="10sp";
            text="加载失败，请点击重试 ("..code..")";
            textColor=副字体颜色;
            textSize="16sp";
          };
        };
      }))
      渐变动画(滑动2,0,1)
      刷新.setRefreshing(false)
      if code==404 then
        print("20.05.30公告：小爱共享密钥服务器出现问题，目前仅可使用网页激活功能，恢复时间未知。")
      end
    end
  end)
end
