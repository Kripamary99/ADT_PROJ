<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Yesha</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- styles -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap-responsive.css" rel="stylesheet">
  <link href="css/prettyPhoto.css" rel="stylesheet">
  <link href="font/stylesheet.css" rel="stylesheet">
  <link href="css/animate.css" rel="stylesheet">
  <link href="css/flexslider.css" rel="stylesheet">
  <link rel="stylesheet" media="screen" href="css/sequencejs.css">
  <link href="css/style.css" rel="stylesheet">
  <link href="color/default.css" rel="stylesheet">

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="ico/favicon.ico">
  <style type="text/css">
    .button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button3 {
  background-color: #ef6603;
  border-radius: 12px;
}
  </style>

</head>

<body>
<?php include("header.php");  ?>
  <!-- section featured -->
  <section id="featured">

    <!-- sequence slider -->
    <div id="sequence-theme">
      <img class="prev" src="img/bt-prev.png" alt="Previous">
      <img class="next" src="img/bt-next.png" alt="Next">
      <div class="container">
        <div class="row">
          <div class="span12">
            <div id="sequence">
              <ul>
                <li class="animate-in">
                  <div class="info letter-container">
                    <h2 class="fade">Ride</h2>
                  </div>
                  <h4 class="subtitle">Do what you love and get Paid</h4>
                  <div class="bottomup">
                    <img src="img/slider/parallax/img-1.png" alt="">
                  </div>
                </li>
                <li class="animate-in">
                  <div class="info letter-container">
                    <h2 class="fade">Drive with Yesha Make money on your schedule</h2>
                  </div>
                  <h4 class="subtitle">Be Your boss</h4>
                  <div class="lefttop">
                    <img src="img/slider/parallax/img-2.png" alt="">
                  </div>
                </li>
                <li class="animate-in">
                  <div class="info letter-container">
                    <h2 class="fade">Safety behind the wheel</h2>
                  </div>
                  <h4 class="subtitle">Driver and Rider Safety is our priority</h4>
                  <div class="righttop">
                    <img src="img/slider/parallax/img-3.png" alt="">
                  </div>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end sequence slider -->
  </section>
  <!-- end featured -->

  <!-- Section about -->
  <section id="about" class="section">
    <div class="gray-shadow">
    </div>
    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="headline">
            <h3><span>Earn</span></h3>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="row">
        <div class="span12">
          <div class="section-intro">
            <p>
              Drive with Yesha and earn great money as an independent contractor. Get Paid weeklu just for helping our community of riders get riders around town. Be your own boss and get paid in fares for driving on your own schedule.
            </p>
          </div>
        </div>
      </div>
      <div id="sequence">

              <img src="img/slider/flexslider/img-1.png" alt="">
          </div>
  </section>

  <section id="Ride" class=" gray-bg" style="padding-left:60px;">
   <!-- <video width="1416" height="850" controls>
    <source src="img/video/movie.mp4" type="video/mp4">
  </video> -->
  <iframe width="1416" height="850" src="https://www.youtube.com/embed/VW-hTjBsEoA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </section>
  <!-- section works -->
  <form action="pages/RiderSignin.php">
  <center><button class="button button3">Sign In To Ride</button>
</form>
<form action="pages/DriverSignin.php">
  <button class="button button3">Sign In To Drive</button></center>
</form>
  <?php include("footer.php"); ?>

  <!-- Javascript Library Files -->
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery.easing.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="js/jquery.lettering.js"></script>
  <script src="js/parallax/jquery.parallax-1.1.3.js"></script>
  <script src="js/nagging-menu.js"></script>
  <script src="js/sequence.jquery-min.js"></script>
  <script src="js/sequencejs-options.sliding-horizontal-parallax.js"></script>
  <script src="js/portfolio/jquery.quicksand.js"></script>
  <script src="js/portfolio/setting.js"></script>
  <script src="js/jquery.scrollTo.js"></script>
  <script src="js/jquery.nav.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <script src="js/prettyPhoto/jquery.prettyPhoto.js"></script>
  <script src="js/prettyPhoto/setting.js"></script>
  <script src="js/jquery.flexslider.js"></script>

  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Custom Javascript File -->
  <script src="js/custom.js"></script>

</body>

</html>
