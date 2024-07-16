<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manager Form</title>
<link rel="icon" href="/images/logo - Copy.png">
<link rel="stylesheet" href="manager_form.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
</head>
<body class="container">
<h1 class="text-center mb-3">List of orders</h1>

<form method="get" action="Order">
  <label>Order Number</label><br>
  <input type="number" name="input1" class="wd"><br><br>
  <label>Name</label><br>
  <input type="text" name="input2" class="wd"><br><br>
  <label>City</label><br>
  <input type="text" name="input3" class="wd"><br><br>
  <label>Phone Number</label><br>
  <input type="text" name="input4" class="wd"><br><br>
  <label>Email</label><br>
  <input type="text" name="input5" class="wd"><br><br>
  <label>Payment Status</label><br>
  <input type="radio" name="input6" value="Paid">
  <label>Paid</label><br>
  <input type="radio" name="input6" value="Not Paid">
  <label>Not Paid</label><br><br>
  <button type="submit" class="btn btn-dark">Submit</button>
</form>   
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    <script src="script2.js"></script> 
</body>
</html>
