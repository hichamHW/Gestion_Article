package com.com;
import com.com.Dao.dao;

import com.com.Models.Article;

public class Test {

    public static  void main(String[] args){

        int id=0;

        for(int i=0;i<5;i++){

            Article a = new Article();
            a.setNameArticle("A"+id+1);
            a.setText("HELLO WORD");
            a.setAuthor("AT"+id+1);
            ///   a.setUrlImg("jdhjdhhj");
            a.setDate("12/12/1"+id+1);

            dao d= new  dao();


            d.addArticle(a);
        }






    }
}
