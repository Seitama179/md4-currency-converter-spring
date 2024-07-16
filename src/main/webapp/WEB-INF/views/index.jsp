<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Currency Converter</title>
</head>
<body>
<h1>Currency Converter</h1>
<br/>
<form action="convert" method="post">
  <label for="exchangeRate">Exchange Rate (1 USD to VND):</label>
  <input type="text" id="exchangeRate" name="exchangeRate" required><br><br>

  <label for="usdAmount">Amount in USD:</label>
  <input type="text" id="usdAmount" name="usdAmount" required><br><br>

  <input type="submit" value="Convert">
</form>
</body>
</html>