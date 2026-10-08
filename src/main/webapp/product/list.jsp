<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h1>Danh Sách Sản Phẩm</h1>

<form action="${pageContext.request.contextPath}/products?action=search" method="post" style="margin-bottom: 15px;">
    <input type="text" name="keyword" placeholder="Nhập tên sản phẩm..." value="${requestScope.keyword}" />
    <button type="submit">Tìm kiếm</button>
    <a href="${pageContext.request.contextPath}/products">Bỏ lọc</a>
</form>

<p>
    <a href="${pageContext.request.contextPath}/products?action=create">Thêm sản phẩm mới</a>
</p>

<table border="1" cellpadding="5" cellspacing="0">
    <thead>
        <tr>
            <th>Tên sản phẩm</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Nhà sản xuất</th>
            <th>Thao tác</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${requestScope.products}" var="p">
            <tr>
                <td><a href="${pageContext.request.contextPath}/products?action=view&id=${p.id}">${p.name}</a></td>
                <td>${p.price}</td>
                <td>${p.description}</td>
                <td>${p.manufacturer}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/products?action=edit&id=${p.id}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/products?action=delete&id=${p.id}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>