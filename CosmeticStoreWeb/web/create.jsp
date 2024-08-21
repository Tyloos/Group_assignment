

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CREATE USER</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">    
        <link href="css/styles.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/28bfb6acdf.js" crossorigin="anonymous"></script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/logincss.css">

    </head>
    <body>
    <c:set var="userError" value="${requestScope.USER_ERROR}" />

    <%-- If userError is null, create a new UserError object --%>
    <c:if test="${userError == null}">
        <jsp:useBean id="userError" class="sample.user.UserError" scope="request" />
        
    </c:if>

    <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-white">
        <div class="container">    
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent1">      
                <a class="navbar-brand mt-2 mt-sm-0 " href="#">
                    <img src="images/logo2.png" height="50" alt="Brand Logo"/>
                </a>
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item active"><a class="nav-link " href="#">HOME</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">ABOUT US</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">PRODUCT CORNER</a></li>
                    <li class="nav-item"><a class="nav-link" href="#">SHIPPING INFORMATION</a></li>
                </ul>
            </div>
            <div class="d-flex align-items-center">
                <div style="width: 10px;"></div>
            </div>
        </div>
    </nav>

    <section class="vh-100" style="background-color: #eee;">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-lg-12 col-xl-11">
                    <div class="card text-black" style="border-radius: 25px;">
                        <div class="card-body p-md-5">
                            <div class="row justify-content-center">
                                <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                                    <form action="MainController" method="POST" class="mx-1 mx-md-4">

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                            <div data-bs-input-init class="form-outline flex-fill mb-0">
                                                <input type="text" id="form3Example1c" name="userID" class="form-control" required=""/>
                                                <label class="form-label" for="form3Example1c">User ID</label>
                                                <c:if test="${not empty requestScope.USER_ERROR.userIDError}">
                                                    <span style="color:red">${requestScope.USER_ERROR.userIDError}</span>
                                                </c:if>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                            <div data-bs-input-init class="form-outline flex-fill mb-0">
                                                <input type="text" id="form3Example3c" name="fullName" class="form-control" required=""/>
                                                <label class="form-label" for="form3Example3c">Full Name</label>
                                                <c:if test="${not empty requestScope.USER_ERROR.fullNameError}">
                                                    <span style="color:red">${requestScope.USER_ERROR.fullNameError}</span>
                                                </c:if>
                                            </div>
                                        </div>

                                        <input type="hidden" name="roleID" value="US"/>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                            <div data-bs-input-init class="form-outline flex-fill mb-0">
                                                <input type="password" name="password" id="form3Example4c" class="form-control" required=""/>
                                                <label class="form-label" for="form3Example4c">Password</label>
                                            </div>
                                        </div>

                                        <div class="d-flex flex-row align-items-center mb-4">
                                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                            <div data-bs-input-init class="form-outline flex-fill mb-0">
                                                <input type="password" id="form3Example4cd" name="confirm" class="form-control" required=""/>
                                                <label class="form-label" for="form3Example4cd">Repeat your password</label>
                                                <c:if test="${not empty requestScope.USER_ERROR.confirmError}">
                                                    <span style="color:red">${requestScope.USER_ERROR.confirmError}</span>
                                                </c:if>
                                            </div>
                                        </div>

                                        <div class="form-check d-flex justify-content-center mb-5">
                                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                                            <label class="form-check-label" for="form2Example3">
                                                I agree all statements in <a href="#!">Terms of service</a>
                                            </label>
                                        </div>

                                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                            <button type="submit" name="action" value="Create" data-bs-button-init data-bs-ripple-init class="btn btn-primary btn-lg">Register</button>
                                        </div>
                                    </form>
                                    <c:if test="${not empty requestScope.ERROR}">
                                        ${requestScope.ERROR}
                                    </c:if>
                                </div>

                                <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp" class="img-fluid" alt="Sample image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="footer bg-dark text-white mt-5" style="margin-top: 0px">
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
        </div>

        <div class="footer-bottom py-3 bg-darker text-center">
            <p class="mb-0">&copy; 2023 TheBeautyStore. All rights reserved.</p>
        </div>
    </footer>
    <script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>