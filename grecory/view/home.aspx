<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="grecory.view.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blood Bank</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .navbar {

            background-color: rgb(245, 69, 69);
        }

        .navbar-icon {
            color: aliceblue;
        }

        .nav-link {
            color: antiquewhite;
            margin: 10px;
            border-radius: 5px;
            transition: .4s;

        }

        .nav-link:hover {
            background: rgb(248, 241, 241);
        }

        #AboutDonotion {
            background-image: url(../asset/image/bloodDonate12.jpg);
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
            height: 70vh;
        }

        .banner-container {
            height: 10vh;
        }

        .banner-container h1 {
            font-size: 3.5rem;
            background-color: rgba(215, 248, 250, 0.2);
            font-family: 'Handlee', cursive;
        }

        #features {
            padding: 5% 10%;
            background-color: white;
        }

        .features-col1 {
            background-color: rgb(245, 69, 69);
            border: 1px solid rebeccapurple;
            border-radius: 25px;
            padding: 20px;
            margin: 20px 0;
            transition: .4s;
        }



        .features-col3 {
            background-color: rgb(11, 174, 185);
            border: 1px solid rebeccapurple;
            border-radius: 20px;
            padding: 15px;
            margin: 20px 0;
            transition: .4s;
        }

        .features-col h1 {
            color: white;
        }

        .features-col:hover {
            transform: scale(1.1);
            box-shadow: 2px 6px 5px black;
        }
    </style>

</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span> <i class="fas fa-bars navbar-icon"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Blood Info</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features">Explore</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#ContactUs">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>
        <section id="AboutDonotion">
            <br>
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Donate Blood!</h1>
            </div>
            <br>
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Do Something Great!!</h1>
            </div>
            <br>
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Save Life!!!</h1>
            </div>


        </section>

    </header>
    <main>
        <section id="features" class="text-center ">
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Explore Blood Bank</h1>
            </div>
            <hr class="hr-style">
            <div class="row">
                <div class="col-lg-5">
                    <div class="features-col features-col1"
                        onclick="window.open('login.aspx')">
                        <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">

                        <h1 class="font-weight-bold text-center">Log in As Admin</h1>
                    </div>
                </div>
                <div class="col-lg-2">
                </div>
                <div class="col-lg-5">
                    <div class="features-col features-col3" onclick="window.open('User.aspx')">
                        <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">

                        <h1 class="font-weight-bold text-center">Browse As User</h1>
                    </div>
                </div>

            </div>
            <hr class="hr-style">
        </section>
    </main>
    <footer class="text-center text-lg-start text-dark" style="background-color: #ECEFF1">
        <!-- Section: Social media -->
        <section class="d-flex justify-content-between p-4 text-white" style="background-color: #21D192">
            <!-- Left -->
            <div class="me-5">
                <span>Get connected with us on social networks:</span>
            </div>
            <!-- Left -->

            <!-- Right -->
            <div>
                <a href="" class="text-white me-4">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-twitter"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-google"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-instagram"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-linkedin"></i>
                </a>
                <a href="" class="text-white me-4">
                    <i class="fab fa-github"></i>
                </a>
            </div>
            <!-- Right -->
        </section>
        <!-- Section: Social media -->

        <!-- Section: Links  -->
        <section id="ContactUs">
            <div class="container text-center text-md-start mt-5">
                <!-- Grid row -->
                <div class="row mt-3">
                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                        <!-- Content -->
                        <h6 class="text-uppercase fw-bold">Looking For Blood</h6>
                        <hr class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px" />
                        <p>
                            <a href="#features" class="text-dark">Blood Info</a>
                        </p>
                        <p>
                            <a href="#features" class="text-dark">Donor Info</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Our Services</h6>
                        <hr class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px" />
                        <p>
                            <a href="#!" class="text-dark">We Donate Blood</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">We Collect Blood</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Make people Smiled!</a>
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Admin links</h6>
                        <hr class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px" />
                        <p>
                            <a href="#!" class="text-dark">Admin Account</a>
                        </p>
                        <p>
                            <a href="#!" class="text-dark">Log In as Admin</a>
                        </p>
                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                        <!-- Links -->
                        <h6 class="text-uppercase fw-bold">Contact</h6>
                        <hr class="mb-4 mt-0 d-inline-block mx-auto"
                            style="width: 60px; background-color: #7c4dff; height: 2px" />
                        <p><i class="fas fa-home mr-3"></i> Kuet, Khulna, Bangladesh</p>
                        <p><i class="fas fa-envelope mr-3"></i> Admin@gmail.com</p>
                        <p><i class="fas fa-phone mr-3"></i> + 123456</p>
                        <p><i class="fas fa-print mr-3"></i> + 987654</p>
                    </div>
                    <!-- Grid column -->
                </div>
                <!-- Grid row -->
            </div>
        </section>
        <!-- Section: Links  -->

        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
            ® Designed and Developed by
            <a class="text-dark" href="https://www.facebook.com/profile.php?id=100004291620885">Mohammad Khairul Alam
                Bhuiyan</a>
        </div>
        <!-- Copyright -->
    </footer>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>
