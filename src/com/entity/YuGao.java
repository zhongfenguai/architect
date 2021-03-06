package com.entity;

/**
 * 作者：czw
 * 日期: 2020/12/15 14:39
 * 描述:
 */
public class YuGao {
    private Integer MovieId;
    private String MovieName;
    private String TypeId;
    private String DaoYan;
    private String ZhuYan;
    private String ShowTime;
    private String PicAddress;
    private String Content;
    private String VideoAddress;

    @Override
    public String toString() {
        return "YuGao{" +
                "MovieId=" + MovieId +
                ", MovieName='" + MovieName + '\'' +
                ", TypeId='" + TypeId + '\'' +
                ", DaoYan='" + DaoYan + '\'' +
                ", ZhuYan='" + ZhuYan + '\'' +
                ", ShowTime='" + ShowTime + '\'' +
                ", PicAddress='" + PicAddress + '\'' +
                ", Content='" + Content + '\'' +
                ", VideoAddress='" + VideoAddress + '\'' +
                '}';
    }

    public Integer getMovieId() {
        return MovieId;
    }

    public void setMovieId(Integer movieId) {
        MovieId = movieId;
    }

    public String getMovieName() {
        return MovieName;
    }

    public void setMovieName(String movieName) {
        MovieName = movieName;
    }

    public String getTypeId() {
        return TypeId;
    }

    public void setTypeId(String typeId) {
        TypeId = typeId;
    }

    public String getDaoYan() {
        return DaoYan;
    }

    public void setDaoYan(String daoYan) {
        DaoYan = daoYan;
    }

    public String getZhuYan() {
        return ZhuYan;
    }

    public void setZhuYan(String zhuYan) {
        ZhuYan = zhuYan;
    }

    public String getShowTime() {
        return ShowTime;
    }

    public void setShowTime(String showTime) {
        ShowTime = showTime;
    }

    public String getPicAddress() {
        return PicAddress;
    }

    public void setPicAddress(String picAddress) {
        PicAddress = picAddress;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String content) {
        Content = content;
    }

    public String getVideoAddress() {
        return VideoAddress;
    }

    public void setVideoAddress(String videoAddress) {
        VideoAddress = videoAddress;
    }

    public YuGao() {
    }

    public YuGao(Integer movieId, String movieName, String typeId, String daoYan, String zhuYan, String showTime, String picAddress, String content, String videoAddress) {
        MovieId = movieId;
        MovieName = movieName;
        TypeId = typeId;
        DaoYan = daoYan;
        ZhuYan = zhuYan;
        ShowTime = showTime;
        PicAddress = picAddress;
        Content = content;
        VideoAddress = videoAddress;
    }
}
