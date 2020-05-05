
import "com.google.zxing.*"
import "com.google.zxing.oned.*"
import "com.google.zxing.aztec.*"
import "com.google.zxing.pdf417.*"
import "com.google.zxing.MaxiCode.*"
import "com.google.zxing.DataMatrix.*"
import "com.google.zxing.qrcode.*"
import "com.my.sc.*"

Http.get(https://excited233.github.io/sharedKey/icons8_cafe_96px.png,nil,"UTF-8",nil,function(code,content,cookie,header)
end)

咖啡={
  LinearLayout;
  layout_width="fill_parent";
  layout_height="fill";
  orientation="vertical",
  id="咖啡布局";
  {
    LinearLayout;
    layout_gravity="center";
    layout_width="90%w";
    layout_height="0.8sp";
    background=次要颜色;
  };
  {
    CardView;
    elevation="0";
    radius=圆角;
    foreground=波纹1(),
    onClick=function()
      MLayout={
        LinearLayout;
        layout_width="fill_parent";
        orientation="vertical";
        {
          LinearLayout;
          gravity="left";
          layout_marginTop="10sp";
          layout_marginBottom="10sp";
          {
            TextView;
            textSize="18sp",
            textColor=内容颜色;
            layout_marginLeft="10sp";
            layout_gravity="left|center",
            text=Html.fromHtml("<b>免费喝咖啡☕️");
          };
        };
        {
          ScrollView,
          layout_width="fill_parent";
          --VerticalScrollBarEnabled=true,
          {
            LinearLayout;
            layout_width="fill_parent";
            gravity="center";
            orientation="vertical";
            {
              CardView;
              layout_marginTop="0sp";
              elevation="0";
              radius=圆角;
              cardBackgroundColor="#00000000";
              {
                RelativeLayout,
                paddingLeft="10sp";
                paddingRight="10sp";
                layout_width="fill_parent";
                {
                  LinearLayout,
                  gravity="center";
                  layout_width="fill_parent";
                  layout_alignParentLeft=true,
                  orientation="vertical";
                  {
                    TextView,
                    textColor=副字体颜色,
                    ----textStyle="bold",
                    text=Html.fromHtml("使用<b>微信</>扫描以下二维码注册瑞幸咖啡帐号，即可获得一张<b>免费券</>和若干<b>4.8折券</>，<b>完全免费</>。"),
                    gravity="center",
                    textSize="16sp",
                    layout_height="fill",
                    layout_width="fill_parent",
                  },
                  {
                    TextView,
                    textColor=副字体颜色,
                    ----textStyle="bold",
                    text="托您的福，在您首次成功购买后，作者也会获得一张免费券。",
                    gravity="center",
                    textSize="14sp",
                    layout_height="fill",
                    layout_width="fill_parent",
                  },
                  {
                    TextView,
                    textColor=副字体颜色,
                    ----textStyle="bold",
                    text="如需使用免费券，请下载luckin coffee APP。",
                    gravity="center",
                    textSize="14sp",
                    layout_height="fill",
                    layout_width="fill_parent",
                  },
                  {
                    ImageView;
                    id="二维码";
                    layout_height="60%w";
                    layout_width="60%w";
                  };
                },
              },
            };
            {
              CardView;
              layout_marginTop="10sp";
              elevation="0";
              radius=圆角;
              cardBackgroundColor="#00000000";
              {
                RelativeLayout,
                padding="10sp";
                layout_width="fill_parent";
                onClick=function(v)
                  packageName="com.tencent.mm"
                  import "android.content.Intent"
                  import "android.content.pm.PackageManager"
                  manager = activity.getPackageManager()
                  open = manager.getLaunchIntentForPackage(packageName)
                  this.startActivity(open)
                  弹窗关闭()
                end,
                foreground=波纹1(),
                {
                  LinearLayout,
                  gravity="center|left";
                  layout_width="fill_parent";
                  layout_alignParentLeft=true,
                  {
                    ImageView,
                    colorFilter=内容颜色,
                    src="drawable/right.png",
                    layout_height="25sp",
                    layout_width="25sp",
                  },
                  {
                    TextView,
                    textColor=副字体颜色,
                    layout_marginLeft="5sp";
                    --textStyle="bold",
                    text="打开微信",
                    gravity="left|center",
                    textSize="16sp",
                    layout_height="fill",
                  },
                },
              },
            };
            {
              CardView;
              layout_marginTop="0sp";
              elevation="0";
              radius=圆角;
              cardBackgroundColor="#00000000";
              {
                RelativeLayout,
                padding="10sp";
                layout_width="fill_parent";
                onClick=function(v)
                  print("已复制")
                  activity.getSystemService(Context.CLIPBOARD_SERVICE).setText(下载链接)
                  弹窗关闭()
                end,
                foreground=波纹1(),
                {
                  LinearLayout,
                  gravity="center|left";
                  layout_width="fill_parent";
                  layout_alignParentLeft=true,
                  {
                    ImageView,
                    colorFilter=内容颜色,
                    src="drawable/copy.png",
                    layout_height="25sp",
                    layout_width="25sp",
                  },
                  {
                    TextView,
                    textColor=副字体颜色,
                    layout_marginLeft="5sp";
                    --textStyle="bold",
                    text="复制链接",
                    gravity="left|center",
                    textSize="16sp",
                    layout_height="fill",
                  },
                },
              },
            };
            {
              CardView;
              elevation="0";
              radius=圆角;
              cardBackgroundColor="#00000000";
              {
                RelativeLayout,
                padding="10sp";
                layout_width="fill_parent";
                onClick=function(v)
                  弹窗关闭()
                end,
                foreground=波纹1(),
                {
                  LinearLayout,
                  gravity="center|left";
                  layout_width="fill_parent";
                  layout_alignParentLeft=true,
                  {
                    ImageView,
                    colorFilter=内容颜色,
                    src="drawable/close.png",
                    layout_height="25sp",
                    layout_width="25sp",
                  },
                  {
                    TextView,
                    textColor=副字体颜色,
                    layout_marginLeft="5sp";
                    --textStyle="bold",
                    text="关闭",
                    gravity="left|center",
                    textSize="16sp",
                    layout_height="fill",
                  },
                },
              },
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
      弹窗上边距="20%h"
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
      二维码.setImageBitmap(MainActivity.Create2DCode("https://wap.luckincoffee.com/invited/register?type=coffee&activityNo=NR201801030001&inviteCode=Y1rCPq1FkoO0Zc7aafzXJg%3D%3D&secondfrom=1"))
    end;
    layout_marginTop="10sp";
    layout_margin="10sp";
    layout_width="fill_parent";
    cardBackgroundColor="#00000000";
    {
      LinearLayout,
      --padding="3.5%w",
      padding="5sp";
      paddingLeft="0sp";
      layout_width="fill_parent";
      orientation="vertical",
      {
        RelativeLayout;
        layout_margin="5sp";
        layout_height="30sp";
        {
          LinearLayout;
          gravity="center|left";
          layout_height="fill_parent";
          layout_alignParentLeft=true,
          {
            ImageView;
            layout_gravity="center";
            layout_marginLeft="5sp";
            layout_height="25sp";
            layout_width="25sp";
            colorFilter=内容颜色;
            src="
            src="https://excited233.github.io/sharedKey/icons8_cafe_96px.png";";
          };
          {
            TextView;
            text="免费喝咖啡";
            textColor=内容颜色;
            layout_marginLeft="10sp";
            textSize="16sp";
          };
        };
      };
    },
  };
};
滑动布局1.addView(loadlayout(咖啡))
渐变动画(咖啡布局,0,1)
