<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>New Order</title>
</head>
<body>
<div align="center">
    <h1>Make your order</h1>
    <form action="home" method="post">
        <table>
            <tr>
                <td>From</td>
                <td>
                    <input type="text" name="shippingAddress" required>
                </td>
            </tr>
            <tr>
                <td>To</td>
                <td>
                    <input type="text" name="destinationAddress" required>
                </td>
            </tr>
            <tr>
                <td>Passengers</td>
                <td>
                    <input type="number" name="passengers" required>
                </td>
            </tr>
            <tr>
                <td>Category</td>
                <td>
                    <input type="radio" id="categoryChoice1"
                           name="category" value="Business">
                    <label for="categoryChoice1">Business</label>

                    <input type="radio" id="categoryChoice2"
                           name="category" value="Economy">
                    <label for="categoryChoice2">Economy</label>
                </td>
            </tr>

        </table>
        <input type="submit" name="submitOrder" value="Submit">
    </form>
    <div>
        <c:choose>
            <c:when test="${requestScope.numberOfCarByPlaces == 0}">
                <div style="color: red">Sorry, but now we dont have car with this number of places, now.</div>
                <div style="color: darkslateblue">But you can make multiple orders, dividing places.</div>
            </c:when>
            <c:when test="${requestScope.numberOfCarByCategory == 0}">
                <div style="color: red">Sorry, but now we dont have car with this category, now.</div>
                <div style="color: darkslateblue">But you can make order with another category.</div>
            </c:when>
        </c:choose>

    </div>
</div>

</body>
</html>
