--test
versionCode=tonumber(packinfo.versionCode)
if versionCode>=60 and pcall(function() activity.getPackageManager().getPackageInfo("tooyoung.sharedkey",0) end) then
  MLayout={
    LinearLayout;
    layout_width="fill_parent";
    orientation="vertical";
    {
      LinearLayout;
      gravity="left";
      layout_marginTop="10dp";
      {
        TextView;
        textSize="18dp";
        textColor=内容颜色;
        layout_marginLeft="10dp";
        layout_gravity="left|center",
        text=Html.fromHtml("<b>请卸载旧版本");
      };
    };
    {
      ScrollView,
      layout_width="fill_parent";

      {
        LinearLayout;
        layout_width="fill_parent";
        gravity="center";
        orientation="vertical";
        {
          CardView;
          layout_marginTop="0dp";
          elevation="0";
          radius=圆角;
          cardBackgroundColor="#00000000";
          {
            RelativeLayout,
            padding="10dp";
            layout_width="fill_parent";
            {
              LinearLayout,
              gravity="center|left";
              layout_width="fill_parent";
              layout_alignParentLeft=true,
              orientation="vertical";
              {
                TextView,
                textColor=副字体颜色,

                text="新版本更换包名，请卸载旧版本";
                gravity="left|center",
                textSize="16dp";
                layout_height="fill",
              },
            },
          },
        };
        {
          LinearLayout;
          gravity="right|center";
          layout_width="fill_parent";

          {
            CardView;
            layout_margin="15dp";
            layout_marginRight="0dp";
            elevation="0";
            radius=圆角;
            cardBackgroundColor=次要颜色;
            {
              RelativeLayout,
              padding="10dp";
              onClick=function(v)
                弹窗关闭()
              end,
              foreground=波纹1(),
              {
                LinearLayout,
                gravity="center";
                layout_alignParentLeft=true,
                {
                  ImageView,
                  colorFilter=字体颜色,
                  src="drawable/close.png",
                  layout_height="25dp";
                  layout_width="25dp";
                },
                {
                  TextView,
                  textColor=副字体颜色,
                  layout_marginLeft="5dp";

                  text="稍后",
                  gravity="left|center",
                  textSize="16dp";
                  layout_height="fill",
                },
              },
            },
          };
          {
            CardView;
            layout_margin="15dp";
            elevation="0";
            radius=圆角;
            cardBackgroundColor=主题颜色;
            {
              RelativeLayout,
              padding="10dp";
              onClick=function(v)
                if pcall(function()
                    import "android.net.Uri"
                    import "android.content.Intent"
                    包名="tooyoung.sharedkey"
                    uri = Uri.parse("package:"..包名)
                    intent = Intent(Intent.ACTION_DELETE,uri)
                    activity.startActivity(intent)
                  end)==true then
                 else
                  print("卸载失败，请手动卸载")
                end
              end,
              foreground=波纹1(),
              {
                LinearLayout,
                gravity="center";
                layout_alignParentLeft=true,
                {
                  ImageView,
                  colorFilter=元素颜色,
                  src="drawable/delete.png",
                  layout_height="25dp";
                  layout_width="25dp";
                },
                {
                  TextView,
                  textColor=元素颜色,
                  layout_marginLeft="5dp";

                  text="卸载",
                  gravity="left|center",
                  textSize="16dp";
                  layout_height="fill",
                },
              },
            },
          };
        };

      };
    };
  };

  弹窗滑动时间=250
  弹窗阴影变化时间=250
  弹窗高度="fill"
  弹窗圆角=圆角
  弹窗外部颜色="#85000000"
  弹窗阴影="5sp"
  弹窗背景=背景颜色2
  弹窗宽度="fill_parent"
  弹窗上边距="0sp"
  弹窗下边距="10sp"
  弹窗左边距="10sp"
  弹窗右边距="10sp"
  弹窗保存参数()
  function 触摸弹窗空白区域事件(视图,事件)
    弹窗关闭()
  end
  function 点击弹窗空白区域事件()
    弹窗关闭()
  end
  function 弹窗位置改变事件(弹窗位置)
    if 弹窗位置==1 then
      弹窗关闭()
    end
  end
  function 弹窗滑动事件(滑动弹窗,滑动偏移百分比,滑动偏移像素)
    if 滑动弹窗==1 then
      弹窗关闭()
    end
  end
  function 弹窗状态改变事件(弹窗状态)
  end
  弹窗设置布局(MLayout)
  弹窗打开()
end
