<%@ page import="java.sql.*" %>
<%@page import="java.util.ArrayList"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
%> 


<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            Material Dashboard by Creative Tim
        </title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
        <script src="assets/js/core/jquery.min.js"></script>
        <script src="assets/js/core/popper.min.js"></script>
    </head>
    <br><br><br>
    <div class="text-center">
        <!-- Button HTML (to Trigger Modal) -->
        <h1>
            <%
                out.println(request.getParameter("fullname"));
            %>
        </h1>
    </div>
    <br><br>
    <body class="">
        <!-- End Navbar -->

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div id="card-id" class="card">
                            <div class="card-header card-header-tabs card-header-primary">
                                <div class="nav-tabs-navigation">
                                    <div class="nav-tabs-wrapper">
                                        <ul class="nav nav-tabs" data-tabs="tabs">

                                            <%
                                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quizjsp", "root", "");
                                                Statement st = con.createStatement();

                                                String item = request.getParameter("items");
                                                if (item == null) {
                                                    response.sendRedirect("http://localhost/Quizjsp/index.jsp");
                                                }
                                                ResultSet rs = st.executeQuery("SELECT * FROM webtek19 ORDER BY RAND() LIMIT " + item);
                                                ArrayList<String> li = new ArrayList<String>();
                                                ArrayList<String> li2 = new ArrayList<String>();
                                                ArrayList<String> li3 = new ArrayList<String>();
                                                int count = 1;
                                                if (!rs.next()) {
                                                    out.print("No Questions");
                                                } else {
                                                    rs.beforeFirst();

                                                    while (rs.next()) {
                                                        out.println("<li class='nav-item'>");
                                                        if (count == 1) {
                                                            out.println("<a class='nav-link active' href='#" + "aw" + rs.getString("id") + "' data-toggle='tab'>");
                                                        } else {
                                                            out.println("<a class='nav-link' href='#" + "aw" + rs.getString("id") + "' data-toggle='tab'>");

                                                        }

                                                        out.println(count);
                                                        out.println("</a>");
                                                        out.println("</li>&nbsp");
                                                        count++;
                                                        li.add(rs.getString("question"));
                                                        li2.add("aw" + rs.getString("id"));
                                                        li3.add(rs.getString("answer"));

                                                    }
                                                    out.println("<div class='pull-right'>");
                                                    out.println("<button id='sub-btn' type='button' class='btn btn-success' data-toggle='modal' data-target='#exampleModal'>Submit</button >");
                                                    out.println("</div>");
                                                }
                                            %>                                                  
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="card-body">
                                <div class="tab-content">

                                    <%
                                        for (int i = 0; li.size() > i; i++) {
                                            if (i == 0) {
                                                out.println("<div class='tab-pane active' id='" + li2.get(i) + "'>");
                                            } else {
                                                out.println("<div class='tab-pane' id='" + li2.get(i) + "'>");
                                            }

//                                                        out.println("<h1>" + li.get(i) + "</h1>");
                                            out.println("<h4 class='card-title text-center'><b>" + li.get(i) + "</b></h4>");
                                            out.println("<br>");
                                            out.println("<input type='text' placeholder='Enter Answer' class='form-control' id='" + li2.get(i) + "a'>");
                                            out.println("</div>");

                                        }
                                    %>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <br>
                    <div class="text-center">
                        <h5 class="modal-title" id="exampleModalLabel">Submit Answers?</h5>
                    </div>
                    <form action="" method="POST">
                        <div class="modal-body">
                            <div class="card-body">
                                <div class="table-responsive">

                                    <table class="table">
                                        <thead class=" text-primary">
                                        <th>
                                            Number
                                        </th>
                                        <th>
                                            Question
                                        </th>
                                        <th>
                                            Your Answer
                                        </th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <%
                                                    int num = Integer.parseInt(item);
                                                    out.println("<script>");
                                                    out.println("btn = document.getElementById('sub-btn')");
                                                    out.println("btn.addEventListener('click', function(){");
                                                    for (int i = 0; i < num; i++) {
                                                        out.println("var val = document.getElementById('" + li2.get(i) + "a').value;"
                                                                + "document.getElementById('" + li2.get(i) + ""
                                                                + "b').innerHTML = val");
                                                    }
                                                    out.println("})");
                                                    out.println("</script>");
                                                    for (int i = 1; i < num + 1; i++) {
                                                        String ayd = li2.get(i - 1) + "a";
                                                        out.println("<tr>");
                                                        out.println("<td>");
                                                        out.println(i);
                                                        out.println("</td>");
                                                        out.println("<td>");
                                                        out.println(li.get(i - 1));
                                                        out.println("</td>");
                                                        out.println("<td id='" + li2.get(i - 1) + "b'>");
                                                        out.println("</td>");
                                                        out.println("</tr>");

                                                    }
                                                %>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="button" id="fsubmit" value="submit" data-dismiss="modal" class="btn btn-primary">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>                            

        <!--   Core JS Files   -->

        <script src="assets/js/core/bootstrap-material-design.min.js"></script>
        <%
            out.println("<script>");
            out.println("btn = document.getElementById('fsubmit')");
            out.println("btn.addEventListener('click', function(){");
            out.println("var answers = []");
            for (int i = 0; i < num; i++) {
                out.println("var val = document.getElementById('" + li2.get(i) + "a').value.toLowerCase();");
                out.println("console.log(val.toLowerCase() == '" + li3.get(i) + "'.toLowerCase())");
                out.println("console.log(val,'" + li3.get(i) + "'.toLowerCase())");
                out.println("var score = 0");
                out.println("if(val.toLowerCase() == '" + li3.get(i) + "'.toLowerCase()){"
                        + "score+=1"
                        + "}");
                out.println("answers.push(val)");
            }
            out.print("document.getElementById('card-id').innerHTML = '"
                    + "<h5 class=text-center>Final Score: '+score+'/"+num+"</h5>"
                    + "<div class=table-responsive>"
                    + "<table class=table><thead class=text-primary><th>Questions</th><th>Answers</th><th>Correct Answers</th>"
                    + "</thead><tbody>");
            for (int i = 0; i < num; i++) {
                out.print("<tr>"
                            + "<td>"+li.get(i)+"</td>"
                            + "<td>'+answers["+i+"]+'</td>"
                            + "<td>"+li3.get(i)+"</td>"
                        + "</tr>");
            }
            out.println("</tbody></table</div><br><br><p><a href=index.jsp> Try Again</a></p>'");
            out.println("})");
            out.println("</script>");
        %>
    </body>

</html>
