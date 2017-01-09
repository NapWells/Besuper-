package com.liu.pojo;

/**
 * Created by anybody on 2017/1/4.
 */
public class News {
    //图文消息的标题
    private String Title;

    //图文消息的描述
    private String Description;

    //图文消息的图片链接
    private String PicUrl;

    //点击图文消息跳转的链接
    private String Url;

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }

    public String getPicUrl() {
        return PicUrl;
    }

    public void setPicUrl(String picUrl) {
        PicUrl = picUrl;
    }

    public String getUrl() {
        return Url;
    }

    public void setUrl(String url) {
        Url = url;
    }
}
