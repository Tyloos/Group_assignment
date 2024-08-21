<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">    
        <!--    <link href="css/styles.css" rel="stylesheet">-->
        <link href="css/admin-styles.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/28bfb6acdf.js" crossorigin="anonymous"></script>
    </head>
    <body>

        <c:if test="${sessionScope.LOGIN_USER == null || sessionScope.LOGIN_USER.roleID != 'AD'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <div class="container">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                    <a class="navbar-brand mt-2 mt-sm-0" href="#">
                        <img src="images/logo2.png" height="50" alt="Brand Logo"/>
                    </a>

                    <div class="navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <span class="nav-link">Welcome: ${sessionScope.LOGIN_USER.fullName}</span>
                            </li>
                            <li class="nav-item">
                                <c:url var="logoutLink" value="MainController">
                                    <c:param name="action" value="Logout"/>
                                </c:url>
                                <a class="nav-link" href="${logoutLink}">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="bg-dark py-2 px-3 rounded">
                <form class="d-flex justify-content-between align-items-center" action="MainController" method="POST">
                    <div class="d-flex align-items-center">
                        <span class="text-white fw-bold me-3">Products:</span>
                        <button type="submit" class="btn btn-link text-white" name="action" value="Search">User</button>
                        <button type="submit" class="btn btn-link text-white" name="action" value="Shopping">Products</button>
                        <button type="submit" class="btn btn-link text-white" name="action" value="Order">Orders</button>
                    </div>
                </form>
            </div>
        </div>
                            
    <div class="container">
    <h2 class="text-center" style="margin-top: 30px">Add New Product</h2>
    <form action="MainController" method="post" style="margin-bottom: 30px">
        <!-- Product Category Dropdown -->
        <div class="form-group">
            <label for="category">Product Category:</label>
            <select class="form-control" id="category" name="category">
                <c:forEach var="category" items="${LIST_CAT}">
                    <option value="${category.categoryID}">${category.categoryName}</option>
                </c:forEach>
            </select>
        </div>

        <!-- Product Name Input -->
        <div class="form-group">
            <label for="productName">Product Name:</label>
            <input type="text" class="form-control" id="productName" name="name" required>
        </div>

        <!-- Product Description Input -->
        <div class="form-group">
            <label for="description">Product Description:</label>
            <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
        </div>

        <!-- Product Price Input -->
        <div class="form-group">
            <label for="price">Product Price:</label>
            <input type="number" class="form-control" id="price" name="price" step="0.01" required>
        </div>

        <!-- Product Quantity Input -->
        <div class="form-group">
            <label for="quantity">Product Quantity:</label>
            <input type="number" class="form-control" id="quantity" name="quantity" required>
        </div>

        <!-- Submit Button -->
        <input type="hidden" name="action" value="CreateProduct">
        <button type="submit" class="btn btn-primary" style="margin-top: 20px">Add Product</button>
    </form>
</div>

                            
<footer class="footer">
            <div class="container py-4">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Follow Us</h5>
                        <ul class="list-unstyled">
                            <li><i class="fab fa-facebook"></i> Facebook</li>
                            <li><i class="fab fa-twitter"></i> Twitter</li>
                            <li><i class="fab fa-instagram"></i> Instagram</li>
                        </ul>
                    </div>

                    <div class="col-md-3">
                        <h5>Help & Info</h5>
                        <ul class="list-unstyled">
                            <li>Contact Us</li>
                            <li>FAQs</li>
                            <li>Returns & Refunds</li>
                            <li>Delivery Information</li>
                            <li>Student, 16-26 Year Old & Apprentice Discount</li>
                        </ul>
                    </div>

                    <div class="col-md-3">
                        <h5>Company Info</h5>
                        <ul class="list-unstyled">
                            <li>Terms of Service</li>
                            <li>Privacy Policy</li>
                        </ul>
                    </div>

                    <div class="col-md-3">
                        <h5>About TheBeautyStore</h5>
                        <ul class="list-unstyled">
                            <li>About Us</li>
                            <li>Beauty Blog</li>
                            <li>Brands</li>
                            <li>Working with Us</li>
                            <li>Looking for Influencers</li>
                        </ul>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p>&copy; 2024 The Beauty Store. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </footer>

        <script src="js/bootstrap.bundle.min.js"></script>
    </body>
</html>