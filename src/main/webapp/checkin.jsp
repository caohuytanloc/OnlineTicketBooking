<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Làm Thủ Tục</title>
</head>
<body>
<c:set var="stuff" value="<%= new java.util.Date()%>"/>
Time on the Server is ${stuff}
<h1> Làm Thủ Tục</h1>
<h3> Nhâp mã vé </h3>
<form action="selectSeat" method="post">
    <!-- Các trường dữ liệu của form -->
    <input type="text" name="fieldName" placeholder="Mã vé" />
    <input type="submit" value="Check-in">
</form>

</body>
</html>