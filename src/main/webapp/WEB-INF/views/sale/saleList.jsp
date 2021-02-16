<%-- 
    Document   : home
    Created on : Feb 15, 2021, 9:52:05 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales</title>
    </head>
    <body>
        <h1>This is my List of sales</h1>
        <div>
            <h3>Sales</h3>
            <p>
                ${message}
            </p>
            <a href="${pageContext.request.contextPath}/sale/create">Add sale</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>Code</th>
                        <th>Date</th>
                        <th>Customer</th>
                        <th>Product</th>
                        <th>Salesman</th>
                        <th>Quantity</th>
                        <th>Cost</th>
                        <th colspan="2">Actions</th>
                    </tr>
                </thead>
                <c:forEach items="${listOfSales}" var = "sale">
                    <tr>
                        <td>${sale.scode}</td>
                        <td>${sale.sdate}</td>
                        <td>${sale.customer.cname}</td>
                        <td>${sale.product.pdescr}</td>
                        <td>${sale.salesman.sname}</td>
                        <td>${sale.quant}</td>
                        <td>${sale.cost}</td>
                        <td>      
                            <a href="${pageContext.request.contextPath}/sale/update/${sale.scode}">Update</a>
                        </td>
                        <td>
                            <a href="${pageContext.request.contextPath}/sale/delete?id=${sale.scode}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>