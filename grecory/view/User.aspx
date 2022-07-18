<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="grecory.view.User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../asset/lib/bootsrap/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .carousel-caption {
            color: black;
        }

            .carousel-caption h3 {
                color: red;
            }

        .carousel-item {
            height: 70vh;
        }

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

        #AboutDonotion {
            background-image:url(../asset/image/bloodDonate12.jpg);
            background-position: center;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: cover;
            height: 90vh;
        }

        .banner-container {
            height: 10vh;
        }

            .banner-container h1 {
                font-size: 3.5rem;
                background-color: rgba(215, 248, 250, 0.2);
                font-family: 'Handlee', cursive;
            }

        .table {
            background-color: rgba(215, 248, 250, 0.3);
        }
    </style>
    <title>User</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span><i class="fas fa-bars navbar-icon"></i></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto ">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Home </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#features">Blood Info</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#AboutDonotion">About Donation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#ContactUs">Contact</a>
                    </li>
                </ul>
            </div>
        </nav>

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
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1">
                </button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                    aria-label="Slide 2">
                </button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                    aria-label="Slide 3">
                </button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../asset/image/bloodDonate5.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption  d-none d-md-block " id="caption1">
                        <h3>Donate Blood!!</h3>
                        <h1>A single drop of blood can make a huge difference.</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../asset/image/bloodDonate1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block ">
                        <h3>Save Life!!</h3>
                        <h1>The gift of blood is a gift to someone's life.</h1>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../asset/image/bloodDonate10.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block ">
                        <h3>Be a hero!!</h3>
                        <h1>Be the reason for someone's heartbeat.</h1>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </header>
    <main>
        <section id="features" class="text-center ">
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Blood Information</h1>
            </div>
            <hr class="hr-style">
            <div class="row">
                <div class="col-lg-5">
                    <div class="features-col features-col1"
                        onclick="window.open('//www.youtube.com/watch?v=Af0gk_kiGac')">
                        <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">

                        <h1 class="font-weight-bold text-center">Blood Availability</h1>
                    </div>
                </div>
                <div class="col-lg-2">
                </div>
                <div class="col-lg-5">
                    <div class="features-col features-col3" onclick="window.open('BloodInformation.aspx')">
                        <img src="../asset/image/blood.png" alt="blood" width="100px" height="100px">

                        <h1 class="font-weight-bold text-center">Looking For Blood?</h1>
                    </div>
                </div>

            </div>
            <hr class="hr-style">
        </section>
        <section id="AboutDonotion">
            <br>
            <div class="banner-container">
                <h1 class="font-weight-bolder mb-2 text-center">Learn About Donation</h1>
            </div>
            <div class="container-fluid">
                <br>
                <div class="row">
                    <div class="col-lg-1">
                    </div>
                    <div class="col-lg-10">
                        <h3 class="text-center text-danger">Compatible Blood Type Donors</h3>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Blood Type</th>
                                    <th scope="col">Donate Blood To</th>
                                    <th scope="col">Receive Blood From</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>A+</td>
                                    <td>A+, AB+</td>
                                    <td>A+,A-,O+,O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>O+</td>
                                    <td>O+ A+ B+ AB+</td>
                                    <td>O+ O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>B+</td>
                                    <td>B+ AB+</td>
                                    <td>B+ B- O+ O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>AB+</td>
                                    <td>AB+</td>
                                    <td>Everyone</td>
                                </tr>
                                <tr>
                                    <th scope="row">5</th>
                                    <td>A-</td>
                                    <td>A+ A- AB+ AB-</td>
                                    <td>A- O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">6</th>
                                    <td>O-</td>
                                    <td>Everyone</td>
                                    <td>O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">7</th>
                                    <td>B-</td>
                                    <td>B+ B- AB+ AB-</td>
                                    <td>B- O-</td>
                                </tr>
                                <tr>
                                    <th scope="row">8</th>
                                    <td>AB-</td>
                                    <td>AB+ AB-</td>
                                    <td>AB- A- B- O-</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>


                </div>




            </div>

        </section>

    </main>


    <!-- Footer -->
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
                        <p><i class="fas fa-home mr-3"></i>Kuet, Khulna, Bangladesh</p>
                        <p><i class="fas fa-envelope mr-3"></i>Admin@gmail.com</p>
                        <p><i class="fas fa-phone mr-3"></i>+ 123456</p>
                        <p><i class="fas fa-print mr-3"></i>+ 987654</p>
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
            <a class="text-dark" href="https://www.facebook.com/profile.php?id=100004291620885">Mohammad Khairul Alam Bhuiyan</a>
        </div>
        <!-- Copyright -->
    </footer>

</body>
</html>
