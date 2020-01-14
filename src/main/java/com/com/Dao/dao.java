package com.com.Dao;

import com.com.Models.Article;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class dao {



    public  void addArticle(Article A){

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("org.hibernate.tutorial.jpa");


        try {
            EntityManager em = emf.createEntityManager();


            em.getTransaction().begin();
            em.persist(A);



            em.getTransaction().commit();

        } catch (Exception e) {

        }


        emf.close();


    }


    public  void DeleteArticle(int Id){


        EntityManagerFactory emf = Persistence.createEntityManagerFactory("org.hibernate.tutorial.jpa");


        try {
            EntityManager em = emf.createEntityManager();


            em.getTransaction().begin();
            Article aa=em.find(Article.class,Id);
            em.remove(aa);



            em.getTransaction().commit();

        } catch (Exception e) {

        }


        emf.close();



    }

    public Article FindeByid(int id){



        EntityManagerFactory emf = Persistence.createEntityManagerFactory("org.hibernate.tutorial.jpa");


        Article a= null;


        try {
            EntityManager em = emf.createEntityManager();


            em.getTransaction().begin();
           a  =  em.find(Article.class,id);



            em.getTransaction().commit();

        } catch (Exception e) {

        }


        emf.close();

        return a;

    }


    public ArrayList<Article> ListArticles(){

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("org.hibernate.tutorial.jpa");



        List<Article> li= null;
        try {
            EntityManager em = emf.createEntityManager();
            em.getTransaction().begin();



            Query q = em.createQuery("SELECT u from Article as u ");
            li= q.getResultList();
            System.out.println("\nStudent List : \n");



            em.getTransaction().commit();





        } catch (Exception e) {

        }


        emf.close();


        return (ArrayList<Article>) li;

    }


}
