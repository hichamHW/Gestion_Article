<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<%@page  import="com.com.Models.Article" %>
<%@page  import="com.com.controller.Home" %>
<%@page  import="com.com.Dao.dao" %>
<%@ page import="java.io.*" %>

<%@page  import="java.util.*" %>
<html >
<head>
    <title>Gestion Article</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>






<nav class="navbar navbar-expand-sm navbar-dark bg-primary">
    <a class="navbar-brand" href="#">GESTION ARTICLE</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation"></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">List <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link"  data-toggle="modal" data-target="#modelId">Add new</a>
            </li>

        </ul>

    </div>
</nav>




<div class="container " style="top: 50px;">





    <table class="table">
        <thead>

        <%
            int q=6 ;
        %>
        <tr>
            <th>N° <%= q
            %></th>
            <th>Name</th>
            <th>Author</th>
            <th>Date</th>
            <th>Text</th>
            <th>Image</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <%



            ArrayList<Article> li =  (ArrayList<Article>) request.getAttribute("List");

            if(request.getAttribute("List") !=null){


                 for (Article a :li){


        %>




        <tr>
            <td scope="row"><%=a.getIdArticle() %></td>
            <td><%=a.getNameArticle() %></td>
            <td><%=a.getAuthor()  %></td>
            <td><%=a.getDate() %></td>
            <td><%=a.getText()  %></td>
            <td>


                <img src="https://i.stack.imgur.com/ORxu7.jpg" style="width: 70px; height: 70px;">

            </td>


            <td>

                <a class="btn btn-primary" href="" data-toggle="modal" data-target="#modelId<%=a.getIdArticle()%>" >Edit</a>
                <a class="btn btn-danger" href="http://localhost:8222/?Delete=<%=a.getIdArticle()%>" >Delete</a>


                <!-- Modal -->
                <div class="modal fade" id="modelId<%=a.getIdArticle()%>" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">New article</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                                <form action="Home" method="post">


                                    <div class="modal-body">






                                        <div class="form-group">
                                            <label for="">Name Article</label>
                                            <input type="text" class="form-control" name="name" id="" aria-describedby="helpId" placeholder="" value="<%=a.getNameArticle() %>">

                                        </div>


                                        <div class="form-group">
                                            <label for="">Name author</label>
                                            <input type="text" class="form-control" name="author" id="" aria-describedby="helpId" placeholder="" value="<%=a.getDate() %>">

                                        </div>

                                        <div class="form-group">
                                            <label for="">Date publication</label>
                                            <input type="date" class="form-control" name="date" id="" aria-describedby="helpId" value="<%=a.getDate() %>" placeholder="">


                                        </div>


                                        <div class="form-group">
                                            <label for="">Text Article</label>
                                            <textarea class="form-control" name="text" id=""   value="<%=a.getText() %>" rows="3" ></textarea>
                                        </div>

                                        <div class="form-group">
                                            <label for="">Image Article</label>
                                            <input type="text" class="form-control" name="img" id="" aria-describedby="helpId"  value="<%=a.getUrlImg() %>"placeholder="">

                                        </div>




                                    </div>
                                    <div class="modal-footer">

                                        <div class="form-group">

                                            <input name="" id="" class="btn btn-primary" type="submit" value="Save">
                                        </div>

                                    </div>

                                </form>
                        </div>
                    </div>
                </div>

            </td>
        </tr>

        <%
            }


            }else{

                %>

                <h1>




        </h1>
           <%

            }

        %>

        </tbody>
    </table>
</div>































<!-- Modal -->
<div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">New article</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="Home" method="post">


            <div class="modal-body">






                    <div class="form-group">
                        <label for="">Name Article</label>
                        <input type="text" class="form-control" name="name" id="" aria-describedby="helpId" placeholder="">

                    </div>


                    <div class="form-group">
                        <label for="">Name author</label>
                        <input type="text" class="form-control" name="author" id="" aria-describedby="helpId" placeholder="">

                    </div>

                    <div class="form-group">
                        <label for="">Date publication</label>
                        <input type="date" class="form-control" name="date" id="" aria-describedby="helpId" placeholder="">


                    </div>


                    <div class="form-group">
                        <label for="">Text Article</label>
                        <textarea class="form-control" name="text" id="" rows="3"></textarea>
                    </div>

                    <div class="form-group">
                        <label for="">Image Article</label>
                        <input type="text" class="form-control" name="img" id="" aria-describedby="helpId" placeholder="">

                    </div>




            </div>
            <div class="modal-footer">

                <div class="form-group">

                    <input name="" id="" class="btn btn-primary" type="submit" value="Save">
                </div>

            </div>

            </form>
        </div>
    </div>
</div>



<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>