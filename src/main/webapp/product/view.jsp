<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết sản phẩm</title>
</head>
<body>
<h1>Chi Tiết Sản Phẩm</h1>
<p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>
<table border="1" cellpadding="5">
    <tr><td>Mã:</td><td>${requestScope.product.id}</td></tr>
    <tr><td>Tên:</td><td>${requestScope.product.name}</td></tr>
    <tr><td>Giá:</td><td>${requestScope.product.price}</td></tr>
    <tr><td>Mô tả:</td><td>${requestScope.product.description}</td></tr>
    <tr><td>Nhà sản xuất:</td><td>${requestScope.product.manufacturer}</td></tr>
</table>
</body>
</html>