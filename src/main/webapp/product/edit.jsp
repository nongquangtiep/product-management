<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật sản phẩm</title>
</head>
<body>
<h1>Cập Nhật Thông Tin Sản Phẩm</h1>
<c:if test="${not empty requestScope.message}">
    <p style="color: green;">${requestScope.message}</p>
</c:if>
<p><a href="${pageContext.request.contextPath}/products">Quay lại danh sách</a></p>

<form action="${pageContext.request.contextPath}/products?action=edit" method="post">
    <input type="hidden" name="id" value="${requestScope.product.id}" />
    <table>
        <tr>
            <td>Tên sản phẩm:</td>
            <td><input type="text" name="name" value="${requestScope.product.name}" required /></td>
        </tr>
        <tr>
            <td>Giá:</td>
            <td><input type="number" step="0.01" name="price" value="${requestScope.product.price}" required /></td>
        </tr>
        <tr>
            <td>Mô tả:</td>
            <td><input type="text" name="description" value="${requestScope.product.description}" /></td>
        </tr>
        <tr>
            <td>Nhà sản xuất:</td>
            <td><input type="text" name="manufacturer" value="${requestScope.product.manufacturer}" required /></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Cập nhật" /></td>
        </tr>
    </table>
</form>
</body>
</html>