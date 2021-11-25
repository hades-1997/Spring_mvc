<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en-US" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Jadoo | Travel Agency Landing Page UI</title>
    <link rel="apple-touch-icon" sizes="180x180" href="${pageContext.request.contextPath}/resources/css/assets/img/favicons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="${pageContext.request.contextPath}/resources/css/assets/img/favicons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="${pageContext.request.contextPath}/resources/css/assets/img/favicons/favicon-16x16.png">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/css/assets/img/favicons/favicon.ico">
<%--    <link rel="manifest" href="${pageContext.request.contextPath}/resources/css/css/assets/img/favicons/manifest.json">--%>
    <meta name="msapplication-TileImage" content="${pageContext.request.contextPath}/resources/css/assets/img/favicons/mstile-150x150.png">
    <meta name="theme-color" content="#ffffff">
    <link href="${pageContext.request.contextPath}/resources/css/assets/css/theme.css" rel="stylesheet" />
</head>
<body>
<main class="main" id="top">
    <nav class="navbar navbar-expand-lg navbar-light fixed-top py-5 d-block"
         data-navbar-on-scroll="data-navbar-on-scroll">
        <div class="container"><a class="navbar-brand" href="index.html"><img src="${pageContext.request.contextPath}/resources/css/assets/img/logo.svg" height="34"
                                                                              alt="logo" /></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"> </span></button>
            <div class="collapse navbar-collapse border-top border-lg-0 mt-4 mt-lg-0" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto pt-2 pt-lg-0 font-base align-items-lg-center align-items-start">
                    <li class="nav-item px-3 px-xl-4"><a class="nav-link fw-medium" aria-current="page"
                                                         href="#service">Service</a></li>
                    <li class="nav-item px-3 px-xl-4"><a class="nav-link fw-medium" aria-current="page" href="${pageContext.request.contextPath}/showMyLoginPage">Login</a></li>
                    <li class="nav-item px-3 px-xl-4"><a class="btn btn-outline-dark order-1 order-lg-0 fw-medium"
                                                         href="${pageContext.request.contextPath}/register/showRegistrationForm">Sign Up</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <section style="padding-top: 7rem;">
        <div class="bg-holder" style="background-image:url(${pageContext.request.contextPath}/resources/css/assets/img/hero/hero-bg.svg);">
        </div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 col-lg-6 order-0 order-md-1 text-end"><img class="pt-7 pt-md-0 hero-img"
                                                                                src="${pageContext.request.contextPath}/resources/css/assets/img/hero/hero-img.png" alt="hero-header" /></div>
                <div class="col-md-7 col-lg-6 text-md-start text-center py-6">
                    <h4 class="fw-bold text-danger mb-3">Best Destinations around the world</h4>
                    <h1 class="hero-title">Travel, enjoy and live a new and full life</h1>
                    <p class="mb-4 fw-medium">Built Wicket longer admire do barton vanity itself do in it.<br
                            class="d-none d-xl-block" />Preferred to sportsmen it engrossed listening. Park gate<br
                            class="d-none d-xl-block" />sell they west hard for the.</p>
                    <div class="text-center text-md-start"> <a
                            class="btn btn-primary btn-lg me-md-4 mb-3 mb-md-0 border-0 primary-btn-shadow" href="#!"
                            role="button">Find out more</a>
                        <div class="w-100 d-block d-md-none"></div><a href="#!" role="button" data-bs-toggle="modal"
                                                                      data-bs-target="#popupVideo"><span
                                class="btn btn-danger round-btn-lg rounded-circle me-3 danger-btn-shadow"> <img
                                src="${pageContext.request.contextPath}/resources/css/assets/img/hero/play.svg" width="15" alt="paly" /></span></a><span class="fw-medium">Play
                Demo</span>
                        <div class="modal fade" id="popupVideo" tabindex="-1" aria-labelledby="popupVideo" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered modal-lg">
                                <div class="modal-content">
                                    <iframe class="rounded" style="width:100%;max-height:500px;" height="500px"
                                            src="https://www.youtube.com/embed/_lhdhL4UDIo" title="YouTube video player"
                                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen="allowfullscreen"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="pt-5" id="destination">

        <div class="container">
            <div class="position-absolute start-100 bottom-0 translate-middle-x d-none d-xl-block ms-xl-n4"><img
                    src="${pageContext.request.contextPath}/resources/css/assets/img/dest/shape.svg" alt="destination" /></div>
            <div class="mb-7 text-center">
                <h5 class="text-secondary">Top Selling </h5>
                <h3 class="fs-xl-10 fs-lg-8 fs-7 fw-bold font-cursive text-capitalize">Top Destinations</h3>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="card overflow-hidden shadow"> <img class="card-img-top" src="${pageContext.request.contextPath}/resources/css/assets/img/dest/dest1.jpg"
                                                                   alt="Rome, Italty" />
                        <div class="card-body py-4 px-3">
                            <div class="d-flex flex-column flex-lg-row justify-content-between mb-3">
                                <h4 class="text-secondary fw-medium"><a class="link-900 text-decoration-none stretched-link"
                                                                        href="#!">Rome, Italty</a></h4><span class="fs-1 fw-medium">$5,42k</span>
                            </div>
                            <div class="d-flex align-items-center"> <img src="${pageContext.request.contextPath}/resources/css/assets/img/dest/navigation.svg"
                                                                         style="margin-right: 14px" width="20" alt="navigation" /><span class="fs-0 fw-medium">10 Days
                    Trip</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card overflow-hidden shadow"> <img class="card-img-top" src="${pageContext.request.contextPath}/resources/css/assets/img/dest/dest2.jpg"
                                                                   alt="London, UK" />
                        <div class="card-body py-4 px-3">
                            <div class="d-flex flex-column flex-lg-row justify-content-between mb-3">
                                <h4 class="text-secondary fw-medium"><a class="link-900 text-decoration-none stretched-link"
                                                                        href="#!">London, UK</a></h4><span class="fs-1 fw-medium">$4.2k</span>
                            </div>
                            <div class="d-flex align-items-center"> <img src="${pageContext.request.contextPath}/resources/css/assets/img/dest/navigation.svg"
                                                                         style="margin-right: 14px" width="20" alt="navigation" /><span class="fs-0 fw-medium">12 Days
                    Trip</span></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card overflow-hidden shadow"> <img class="card-img-top" src="${pageContext.request.contextPath}/resources/css/assets/img/dest/dest3.jpg"
                                                                   alt="Full Europe" />
                        <div class="card-body py-4 px-3">
                            <div class="d-flex flex-column flex-lg-row justify-content-between mb-3">
                                <h4 class="text-secondary fw-medium"><a class="link-900 text-decoration-none stretched-link"
                                                                        href="#!">Full Europe</a></h4><span class="fs-1 fw-medium">$15k</span>
                            </div>
                            <div class="d-flex align-items-center"> <img src="${pageContext.request.contextPath}/resources/css/assets/img/dest/navigation.svg"
                                                                         style="margin-right: 14px" width="20" alt="navigation" /><span class="fs-0 fw-medium">28 Days
                    Trip</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end of .container-->
    </section>
    <section id="testimonial">

        <div class="container">
            <div class="row">
                <div class="col-lg-5">
                    <div class="mb-8 text-start">
                        <h5 class="text-secondary">Testimonials </h5>
                        <h3 class="fs-xl-10 fs-lg-8 fs-7 fw-bold font-cursive text-capitalize">What people say about Us.</h3>
                    </div>
                </div>
                <div class="col-lg-1"></div>
                <div class="col-lg-6">
                    <div class="pe-7 ps-5 ps-lg-0">
                        <div class="carousel slide carousel-fade position-static" id="testimonialIndicator"
                             data-bs-ride="carousel">
                            <div class="carousel-indicators">
                                <button class="active" type="button" data-bs-target="#testimonialIndicator" data-bs-slide-to="0"
                                        aria-current="true" aria-label="Testimonial 0"></button>
                                <button class="false" type="button" data-bs-target="#testimonialIndicator" data-bs-slide-to="1"
                                        aria-current="true" aria-label="Testimonial 1"></button>
                                <button class="false" type="button" data-bs-target="#testimonialIndicator" data-bs-slide-to="2"
                                        aria-current="true" aria-label="Testimonial 2"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item position-relative active">
                                    <div class="card shadow" style="border-radius:10px;">
                                        <div class="position-absolute start-0 top-0 translate-middle"> <img
                                                class="rounded-circle fit-cover" src="${pageContext.request.contextPath}/resources/css/assets/img/testimonial/author.png" height="65"
                                                width="65" alt="" /></div>
                                        <div class="card-body p-4">
                                            <p class="fw-medium mb-4">&quot;On the Windows talking painted pasture yet its express parties
                                                use. Sure last upon he same as knew next. Of believed or diverted no.&quot;</p>
                                            <h5 class="text-secondary">Mike taylor</h5>
                                            <p class="fw-medium fs--1 mb-0">Lahore, Pakistan</p>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
                                         style="border-radius:10px;transform:translate(25px, 25px)"> </div>
                                </div>
                                <div class="carousel-item position-relative ">
                                    <div class="card shadow" style="border-radius:10px;">
                                        <div class="position-absolute start-0 top-0 translate-middle"> <img
                                                class="rounded-circle fit-cover" src="${pageContext.request.contextPath}/resources/css/assets/img/testimonial/author2.png" height="65"
                                                width="65" alt="" /></div>
                                        <div class="card-body p-4">
                                            <p class="fw-medium mb-4">&quot;Jadoo is recognized as one of the finest travel agency in the
                                                world. When it came to planning a trip, I found them to be dependable.&quot;</p>
                                            <h5 class="text-secondary">Thomas Wagon</h5>
                                            <p class="fw-medium fs--1 mb-0">CEO of Red Button</p>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
                                         style="border-radius:10px;transform:translate(25px, 25px)"> </div>
                                </div>
                                <div class="carousel-item position-relative ">
                                    <div class="card shadow" style="border-radius:10px;">
                                        <div class="position-absolute start-0 top-0 translate-middle"> <img
                                                class="rounded-circle fit-cover" src="${pageContext.request.contextPath}/resources/css/assets/img/testimonial/author3.png" height="65"
                                                width="65" alt="" /></div>
                                        <div class="card-body p-4">
                                            <p class="fw-medium mb-4">&quot;On the Windows talking painted pasture yet its express parties
                                                use. Sure last upon he same as knew next. Of believed or diverted no.&quot;</p>
                                            <h5 class="text-secondary">Kelly Willium</h5>
                                            <p class="fw-medium fs--1 mb-0">Khulna, Bangladesh</p>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm position-absolute top-0 z-index--1 mb-3 w-100 h-100"
                                         style="border-radius:10px;transform:translate(25px, 25px)"> </div>
                                </div>
                            </div>
                            <div
                                    class="carousel-navigation d-flex flex-column flex-between-center position-absolute end-0 top-lg-50 bottom-0 translate-middle-y z-index-1 me-3 me-lg-0"
                                    style="height:60px;width:20px;">
                                <button class="carousel-control-prev position-static" type="button"
                                        data-bs-target="#testimonialIndicator" data-bs-slide="prev"><img src="${pageContext.request.contextPath}/resources/css/assets/img/icons/up.svg"
                                                                                                         width="16" alt="icon" /></button>
                                <button class="carousel-control-next position-static" type="button"
                                        data-bs-target="#testimonialIndicator" data-bs-slide="next"><img src="${pageContext.request.contextPath}/resources/css/assets/img/icons/down.svg"
                                                                                                         width="16" alt="icon" /></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="position-relative pt-9 pt-lg-8 pb-6 pb-lg-8">
        <div class="container">
            <div class="row row-cols-lg-5 row-cols-md-3 row-cols-2 flex-center">
                <div class="col">
                    <div class="card shadow-hover mb-4" style="border-radius:10px;">
                        <div class="card-body text-center"> <img class="img-fluid" src="${pageContext.request.contextPath}/resources/css/assets/img/partner/1.png" alt="" /></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-hover mb-4" style="border-radius:10px;">
                        <div class="card-body text-center"> <img class="img-fluid" src="${pageContext.request.contextPath}/resources/css/assets/img/partner/2.png" alt="" /></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-hover mb-4" style="border-radius:10px;">
                        <div class="card-body text-center"> <img class="img-fluid" src="${pageContext.request.contextPath}/resources/css/assets/img/partner/3.png" alt="" /></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-hover mb-4" style="border-radius:10px;">
                        <div class="card-body text-center"> <img class="img-fluid" src="${pageContext.request.contextPath}/resources/css/assets/img/partner/4.png" alt="" /></div>
                    </div>
                </div>
                <div class="col">
                    <div class="card shadow-hover mb-4" style="border-radius:10px;">
                        <div class="card-body text-center"> <img class="img-fluid" src="${pageContext.request.contextPath}/resources/css/assets/img/partner/5.png" alt="" /></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="pt-6">

        <div class="container">
            <div class="py-8 px-5 position-relative text-center"
                 style="background-color: rgba(223, 215, 249, 0.199);border-radius: 129px 20px 20px 20px;">
                <div class="position-absolute start-100 top-0 translate-middle ms-md-n3 ms-n4 mt-3"> <img
                        src="${pageContext.request.contextPath}/resources/css/assets/img/cta/send.png" style="max-width:70px;" alt="send icon" /></div>
                <div class="position-absolute end-0 top-0 z-index--1"> <img src="${pageContext.request.contextPath}/resources/css/assets/img/cta/shape-bg2.png" width="264"
                                                                            alt="cta shape" /></div>
                <div class="position-absolute start-0 bottom-0 ms-3 z-index--1 d-none d-sm-block"> <img
                        src="${pageContext.request.contextPath}/resources/css/assets/img/cta/shape-bg1.png" style="max-width: 340px;" alt="cta shape" /></div>
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-md-10">
                        <h2 class="text-secondary lh-1-7 mb-7">Subscribe to get information, latest news and other interesting
                            offers about Cobham</h2>
                        <form class="row g-3 align-items-center w-lg-75 mx-auto">
                            <div class="col-sm">
                                <div class="input-group-icon">
                                    <input class="form-control form-little-squirrel-control" type="email" placeholder="Enter email "
                                           aria-label="email" /><img class="input-box-icon" src="${pageContext.request.contextPath}/resources/css/assets/img/cta/mail.svg" width="17"
                                                                     alt="mail" />
                                </div>
                            </div>
                            <div class="col-sm-auto">
                                <button class="btn btn-danger orange-gradient-btn fs--1">Subscribe</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!-- end of .container-->
    </section>
    <section class="pb-0 pb-lg-4">

        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-7 col-12 mb-4 mb-md-6 mb-lg-0 order-0"> <img class="mb-4"
                                                                                         src="${pageContext.request.contextPath}/resources/css/assets/img/logo2.svg" width="150" alt="jadoo" />
                    <p class="fs--1 text-secondary mb-0 fw-medium">Book your trip in minute, get full Control for much longer.
                    </p>
                </div>
                <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-1 order-md-2">
                    <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Company</h4>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">About</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Careers</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Mobile</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-2 order-md-3">
                    <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">Contact</h4>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Help/FAQ</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Press</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Affiliate</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-4 mb-4 mb-lg-0 order-lg-3 order-md-4">
                    <h4 class="footer-heading-color fw-bold font-sans-serif mb-3 mb-lg-4">More</h4>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Airlinefees</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Airline</a></li>
                        <li class="mb-2"><a class="link-900 fs-1 fw-medium text-decoration-none" href="#!">Low fare tips</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-5 col-12 mb-4 mb-md-6 mb-lg-0 order-lg-4 order-md-1">
                    <div class="icon-group mb-4"> <a class="text-decoration-none icon-item shadow-social" id="facebook"
                                                     href="#!"><i class="fab fa-facebook-f"> </i></a><a class="text-decoration-none icon-item shadow-social"
                                                                                                        id="instagram" href="#!"><i class="fab fa-instagram"> </i></a><a
                            class="text-decoration-none icon-item shadow-social" id="twitter" href="#!"><i class="fab fa-twitter">
                    </i></a></div>
                    <h4 class="fw-medium font-sans-serif text-secondary mb-3">Discover our app</h4>
                    <div class="d-flex align-items-center"> <a href="#!"> <img class="me-2" src="${pageContext.request.contextPath}/resources/css/assets/img/play-store.png"
                                                                               alt="play store" /></a><a href="#!"> <img src="${pageContext.request.contextPath}/resources/css/assets/img/apple-store.png" alt="apple store" /></a>
                    </div>
                </div>
            </div>
        </div><!-- end of .container-->
    </section>
    <div class="py-5 text-center">
        <p class="mb-0 text-secondary fs--1 fw-medium">All rights reserved@jadoo.co </p>
    </div>
</main>
<script src="${pageContext.request.contextPath}/resources/css/css/vendors/@popperjs/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/vendors/bootstrap/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src="${pageContext.request.contextPath}/resources/css/vendors/fontawesome/all.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/css/assets/js/theme.js"></script>
<link
        href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;family=Volkhov:wght@700&amp;display=swap"
        rel="stylesheet">
</body>

</html>