
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="user_menu.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Students</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="jquery-1.12.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

        <link href="w3.css" rel="stylesheet" type="text/css"/>
        <style>
            .footer 
            {
                position: fixed;
                bottom: 0px;
                width:auto; 
                padding-top:20px;
                color:#fff;
            }
            .scrollit {
                overflow:scroll;
                height:auto;
            }
            
                /* Force table to not be like tables anymore */
                table, thead, tbody, th, td, tr {
                    display: block;
                }

                /* Hide table headers (but not display: none;, for accessibility) */
                thead tr {
                    position: absolute;
                    top: -9999px;
                    left: -9999px;
                }

                tr {
                    margin: 0 0 1rem 0;
                }

                tr:nth-child(odd) {
                    background: #ccc;
                }

                td {
                    /* Behave  like a "row" */
                    border: none;
                    border-bottom: 1px solid #eee;
                    position: relative;
                    padding-left: 50%;
                }

                td:before {
                    /* Now like a table header */
                    position: absolute;
                    /* Top/left values mimic padding */
                    top: 0;
                    left: 6px;
                    width: 45%;
                    padding-right: 10px;
                    white-space: nowrap;
                }
                td:nth-of-type(1):before { content: "Student_Id"; }
                td:nth-of-type(2):before { content: "Student_Name"; }
                td:nth-of-type(3):before { content: "Student_DOB"; }
                td:nth-of-type(4):before { content: "Student_Gender"; }
                td:nth-of-type(5):before { content: "Student_Email"; }
                td:nth-of-type(6):before { content: "Student_Phone"; }
                td:nth-of-type(7):before { content: "Student_Address"; }
                td:nth-of-type(8):before { content: "Student_EContact_Name"; }
                td:nth-of-type(9):before { content: "Student_EContact_Number"; }
                td:nth-of-type(10):before { content: "Student_Joined_Date"; }
                td:nth-of-type(11):before { content: "Edit"; }
                td:nth-of-type(12):before { content: "Delete"; }
            
        </style>

        <script>
            function go1(cid, Contactname)
            {
                var cId = cid;
                var ClassId = Contactname;
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function ()
                {
                    if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
                    {
                        document.getElementById("edit_contact").innerHTML = xmlhttp.responseText;
                    }
                };
                xmlhttp.open("GET", "./edit_attendance.jsp?msg=" + cId + "^" + ClassId, true);
                xmlhttp.send();
            }

            function go2(cid, Contactname, Contactno)
            {
                var ans = confirm("Are you sure to delete this contact");
                if (ans == true)
                {
                    var xml = new XMLHttpRequest();
                    xml.onreadystatechange = function ()
                    {
                        if (xml.readyState == 4 && xml.status == 200)
                        {
                            window.location.reload();
                            alert(xml.responseText);
                        }
                    };
                    xml.open("GET", "deleteattendance?msg=" + cid + "^" + Contactname + "^" + Contactno, true);
                    xml.send();
                }
            }
            $(document).ready(function () {
                $('#data').after('<div id="nav"></div>');
                var rowsShown = 2;
                var rowsTotal = $('#data tbody tr').length;
                var numPages = rowsTotal / rowsShown;
                for (i = 0; i < numPages; i++) {
                    var pageNum = i + 1;
                    $('#nav').append('<a href="#" rel="' + i + '">' + pageNum + '</a> ');
                }
                $('#data tbody tr').hide();
                $('#data tbody tr').slice(0, rowsShown).show();
                $('#nav a:first').addClass('active');
                $('#nav a').bind('click', function () {

                    $('#nav a').removeClass('active');
                    $(this).addClass('active');
                    var currPage = $(this).attr('rel');
                    var startItem = currPage * rowsShown;
                    var endItem = startItem + rowsShown;
                    $('#data tbody tr').css('opacity', '0.0').hide().slice(startItem, endItem).
                            css('display', 'table-row').animate({opacity: 1}, 300);
                });
            });

        </script>
    <body>
        <div class="w3-container w3-animate-zoom" id="main">
            <div class="row" style="height: 90px;">
                <div class="jumbotron" style="background-image:url(jbg.jpg); background-size: 100%; color: #ffffff; ">
                    <h2>Students Records..</h2>
                </div>
            </div>


            <div class="row">
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/project", "root", "system");
                    Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                    ResultSet rs = stmt.executeQuery("select * from student");
                    if (rs.next()) {
                %>

                <div  class="row">
                    <table role="table">
                        <thead role="rowgroup">
                            <tr style="color: #ffffff;" role="row">
                                <th role="columnheader">Student_Id</th>
                                <th role="columnheader">Student_Name</th>
                                <th role="columnheader">Student_DOB</th>
                                <th role="columnheader">Student_Gender</th>
                                <th role="columnheader">Student_Email</th>
                                <th role="columnheader">Student_Phone</th>
                                <th role="columnheader">Student_Address</th>
                                <th role="columnheader">Student_EContact_Name</th>
                                <th role="columnheader">Student_EContact_Number</th>
                                <th role="columnheader">Student_Joined_Date</th>
                                <th role="columnheader">Edit</th>
                                <th role="columnheader">Delete</th>
                            </tr>
                        </thead>
                        <%
                            rs.beforeFirst();
                            while (rs.next()) {
                                int cid = rs.getInt("Stud_Id");
                                String F_name = rs.getString("Stud_FName");
                                String L_name = rs.getString("Stud_LName");
                                String Contactname = F_name + " " + L_name;
                                String Dob = rs.getString("Stud_DOB");
                                String gender = rs.getString("Stud_Gender");
                                String email = rs.getString("Stud_Email");
                                String phone = rs.getString("Stud_Phone");
                                String address = rs.getString("Stud_Address");
                                String city = rs.getString("Stud_City");
                                String province = rs.getString("Stud_Province");
                                String zip = rs.getString("Stud_Zip");
                                String all = address + "," + city + " " + zip + " " + province;
                                String econtact_name = rs.getString("Stud_EContact_Name");
                                String econtact_number = rs.getString("Stud_EContact_Phone");
                                String date_joined = rs.getString("Stud_Date_Joined");
                        %>
                        <tbody role="rowgroup">
                            <tr class="w3-hover-pale-blue" role="row">
                                <td role="cell"><%=cid%></td>
                                <td role="cell"><%=Contactname%></td>
                                <td role="cell"><%=Dob%></td>
                                <td role="cell"><%=gender%></td>
                                <td role="cell"><%=email%></td>
                                <td role="cell"><%=phone%></td>
                                <td role="cell"><%=all%></td>
                                <td role="cell"><%=econtact_name%></td>
                                <td role="cell"><%=econtact_number%></td>
                                <td role="cell"><%=date_joined%></td>
                                <td role="cell"><label  class="btn btn-link" data-toggle="modal" data-target="#myModal" onclick="go1('<%=cid%>', '<%=Contactname%>')" style="color : blue; cursor :pointer;">Edit</label></td>
                                <td role="cell"><label class="btn btn-link" onclick="go2('<%=cid%>', '<%=Contactname%>')" style="color : blue; cursor :pointer;">Delete</label></td>
                            </tr>
                            <%
                                }
                            %>

                        </tbody>
                    </table>
                </div>
                <div class="col-sm-2"></div>
            </div>
            <%
            } else {
            %>



            <p style="color: red; font-style: italic">No records found !</p>


            <%
                }
                String msg = request.getParameter("msg");
                if (msg != null) {
            %>
            <div class="alert alert-success fade in">
                <a href="#" class="close" data-dismiss="alert" label="close">&times;</a>
                <strong><%=msg%>!</strong> 
            </div>
            <%
                }

            %>


        </div>   


        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Edit Student</h4>
                    </div>

                    <div id="edit_contact" class="modal-body "></div>

                    <!--<div class="modal-footer"></div>-->
                    <br>
                    <br>
                </div>

            </div>
        </div>   

        <div class="container-fluid footer" style="color: #ffffff;">
            <div class="container">

                <div class="row">
                    <div class="col-sm-12 text-center" style="font-family: 'Open Sans'; font-size: 12px;"> &copy;2018
                        STEPHANOS KUNGFU CLUB. All Rights Reserved
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
