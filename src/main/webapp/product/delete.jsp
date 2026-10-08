<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xác nhận xóa</title>
</head>
<body>
<h1>Xác Nhận Xóa Sản Phẩm</h1>
<p>Bạn có chắc chắn muốn xóa sản phẩm <strong>${requestScope.product.name}</strong> không?</p>
<form action="${pageContext.request.contextPath}/products?action=delete" method="post">
    <input type="hidden" name="id" value="${requestScope.product.id}" />
    <button type="submit">Đồng ý xóa</button>
    <a href="${pageContext.request.contextPath}/products">Hủy bỏ</a>
</form>
</body>
</html>