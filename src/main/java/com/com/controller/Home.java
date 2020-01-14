package com.com.controller;

import com.com.Dao.dao;
import com.com.Models.Article;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.Adler32;

@WebServlet( "/Home")

public class Home extends HttpServlet {

  public ArrayList<Article> articles = new ArrayList<Article>();


    public void ADDList()
    {

        int id= 0;
        for(int i=0;i<5;i++){

            Article a = new Article();
            a.setNameArticle("A"+id+1);
            a.setText("HELLO WORD");
            a.setAuthor("AT"+id+1);
         ///   a.setUrlImg("jdhjdhhj");
            a.setDate("12/12/1"+id+1);
            a.setIdArticle(id+1);
            id= id+1;

            articles.add(a);
        }




    }


    public void init() throws ServletException {
        ADDList();
    }



    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



        String name= request.getParameter("name");
        String author=  request.getParameter("author");
        String date= request.getParameter("date");
        String text= request.getParameter("text");
        String urlmimg=request.getParameter("img");



        if( name==null || author == null || date == null ||  text == null || urlmimg==null ){

            request.setAttribute("List",articles);

            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);


        }

        else {


            Article a= new Article();
            a.setNameArticle(name);
            a.setAuthor(author);
            a.setDate(date);
            a.setUrlImg(urlmimg);
            a.setText(text);

            a.setIdArticle(articles.size()+1);
            articles.add(a);


            for (Article d:articles ){

                System.out.println(d.toString());
            }



            request.setAttribute("List",articles);

            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);

        }





    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String delet=  request.getParameter("Delete");

        Integer id= Integer.parseInt(delet);
        if(delet !=null){



            articles.remove(articles.size()-1);

            request.setAttribute("List",articles);

            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index.jsp");
            rd.forward(request, response);
        }
    }
}
