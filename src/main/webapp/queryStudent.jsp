<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() +"://"+request.getServerName() +":"+request.getServerPort()
                        + request.getContextPath()+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>queryStudent</title>
</head>
    <script type="text/javascript" src="js/jQuery.js"></script>
    <script type="text/javascript">
        $(function () {
            queryStudent()
            $("#btn").click(function () {
                queryStudent()
            })
        })

        function queryStudent(){
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    $("#tbody").html("");
                    $.each(data,function (i,json) {
                        // $("#tbody").append(
                        //     "<tr>"
                        //     +"<td>"+json.name+"</td>"+
                        //     +"<td>"+json.id+"</td>"+
                        //     +"<td>"+json.age+"</td>"+
                        //     "</tr>"
                        // )
                        $("#tbody").append("<tr>")
                                    .append("<td>"+json.id+"</td>")
                                    .append("<td>"+json.name+"</td>")
                                    .append("<td>"+json.age+"</td>")
                                    .append("</tr>")
                    })
                }
            })
        }
    </script>
<body>
    <center>
        <button id="btn">QUERY STUDENT</button>
        <table>
            <thead>
                <tr>
                    <td>ID</td>
                    <td>NAME</td>
                    <td>AGE</td>
                </tr>
            </thead>
            <tbody id="tbody">

            </tbody>
        </table>
    </center>

</body>
</html>
