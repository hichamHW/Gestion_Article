package com.com.Models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Article {



    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int idArticle;
    private String NameArticle;
    private String author;
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    private String Date;
    private String urlImg;


    public int getIdArticle() {
        return idArticle;
    }

    public void setIdArticle(int idArticle) {
        this.idArticle = idArticle;
    }

    public String getNameArticle() {
        return NameArticle;
    }

    public void setNameArticle(String nameArticle) {
        NameArticle = nameArticle;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }


    @Override
    public String toString() {
        return "Article{" +
                "idArticle=" + idArticle +
                ", NameArticle='" + NameArticle + '\'' +
                ", Date='" + Date + '\'' +
                ", urlImg='" + urlImg + '\'' +
                '}';
    }
}
