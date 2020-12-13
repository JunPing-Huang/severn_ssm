<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addStudent</title>
</head>
<body>
    <center>
        <form action="student/addStudent.do" method="post">
            <table>
                <tr>
                    <td>name</td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>age</td>
                    <td>
                        <input type="text" name="age">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="注册">
                    </td>
                </tr>
            </table>
        </form>
    </center>

</body>
</html>
