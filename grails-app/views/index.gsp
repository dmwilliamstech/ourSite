
<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Nba Metrics</title>
    <meta name="generator" content="Bootply" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">

    <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <script src="http://d3js.org/d3.v3.min.js"></script>
    <g:javascript src='Donut3D.js' />










    <!-- CSS code from Bootply.com editor -->

    <style type="text/css">
    /* BOOTSTRAP 3.x GLOBAL STYLES
-------------------------------------------------- */
    body {
        padding-bottom: 40px;
        color: #5a5a5a;
    }



    /* CUSTOMIZE THE NAVBAR
    -------------------------------------------------- */

    /* Special class on .container surrounding .navbar, used for positioning it into place. */
    .navbar-wrapper {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        z-index: 10;
    }



    /* CUSTOMIZE THE CAROUSEL
    -------------------------------------------------- */

    /* Carousel base class */
    .carousel {
        margin-bottom: 60px;
    }
    /* Since positioning the image, we need to help out the caption */
    .carousel-caption {
        z-index: 10;
    }

    /* Declare heights because of positioning of img element */
    .carousel .item {
        height: 400px;
        background-color:#555;
    }
    .carousel img {
        position: relative;

        height: auto;
        background-position: center center;
         margin: 0 auto;

        width: auto;
    }



    /* MARKETING CONTENT
    -------------------------------------------------- */

    /* Pad the edges of the mobile views a bit */
    .marketing {
        padding-left: 15px;
        padding-right: 15px;
    }

    /* Center align the text within the three columns below the carousel */
    .marketing .col-lg-4 {
        text-align: center;
        margin-bottom: 20px;
    }
    .marketing h2 {
        font-weight: normal;
    }
    .marketing .col-lg-4 p {
        margin-left: 10px;
        margin-right: 10px;
    }


    /* Featurettes
    ------------------------- */

    .featurette-divider {
        margin: 80px 0; /* Space out the Bootstrap <hr> more */
    }
    .featurette {
        padding-top: 120px; /* Vertically center images part 1: add padding above and below text. */
        overflow: hidden; /* Vertically center images part 2: clear their floats. */
    }
    .featurette-image {
        margin-top: -120px; /* Vertically center images part 3: negative margin up the image the same amount of the padding to center it. */
    }

    /* Give some space on the sides of the floated elements so text doesn't run right into it. */
    .featurette-image.pull-left {
        margin-right: 40px;
    }
    .featurette-image.pull-right {
        margin-left: 40px;
    }

    /* Thin out the marketing headings */
    .featurette-heading {
        font-size: 50px;
        font-weight: 300;
        line-height: 1;
        letter-spacing: -1px;
    }



    /* RESPONSIVE CSS
    -------------------------------------------------- */

    @media (min-width: 768px) {

        /* Remve the edge padding needed for mobile */
        .marketing {
            padding-left: 0;
            padding-right: 0;
        }

        /* Navbar positioning foo */
        .navbar-wrapper {
            margin-top: 20px;
            margin-bottom: -90px; /* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
        }
        /* The navbar becomes detached from the top, so we round the corners */
        .navbar-wrapper .navbar {
            border-radius: 4px;
        }

        /* Bump up size of carousel content */
        .carousel-caption p {
            margin-bottom: 20px;
            font-size: 21px;
            line-height: 1.4;
        }

    }
    path.slice{
        stroke-width:2px;
    }
    polyline{
        opacity: .3;
        stroke: black;
        stroke-width: 2px;
        fill: none;
    }
    svg text.percent{
        fill:white;
        text-anchor:middle;
        font-size:12px;
    }
    </style>
</head>

<!-- HTML code from Bootply.com editor -->

<body  >

<div class="navbar-wrapper">
    <div class="container">
        <div class="navbar navbar-inverse navbar-static-top">

            <div class="navbar-header">
                <a class="navbar-toggle" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="navbar-brand" href="#">Our Family</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="#about" target="ext">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">More <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Coming soon</a></li>
                            <li><a href="#">Coming soon</a></li>
                            <li><a href="#">Coming soon</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Coming soon</a></li>
                            <li><a href="#">Coming soon</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
    </div><!-- /container -->
</div><!-- /navbar wrapper -->


<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
    <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="images/kalynTraining.png" class="img-responsive" width="100%" height="30%">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Ready for War!</h1>
                    <pthis is="" an="" example="" layout="" with="" carousel="" that="" uses="" the="" bootstrap="" 3="" styles.<="" small=""><p></p>
                    <!--p><a class="btn btn-lg btn-primary" href="http://getbootstrap.com">Learn More</a>
                    </p></pthis--></div>
            </div>
        </div>
        <div class="item">
            <img src="images/joCaptPlanet.png" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Saving the world</h1>
                    <p>At the DC auto show.</p>
                    <!--p><a class="btn btn-large btn-primary" href="#">Learn more</a></p-->
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/krispykremeThuggin.png" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>After the dentist</h1>
                    <p>Whats better than Krispy Kreme after the dentist.</p>
                    <!--p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p-->
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/kayElijahKinect.png" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>They do get along</h1>
                    <p>Watching someone on the Kinect</p>
                    <!--p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p-->
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/usCollege.png" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>After a party</h1>
                    <p>We were so young</p>
                    <!--p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p-->
                </div>
            </div>
        </div>
        <div class="item">
            <img src="images/joDriving.png" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Jo driving convertible</h1>
                    <p>Already showing off.</p>
                    <!--p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p-->
                </div>
            </div>
        </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="icon-prev"></span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="icon-next"></span>
    </a>
</div>
<!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->
 <div class="featurette-heading">
 </div>
<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-md-4 text-center">
            <img class="img-circle" src="images/jovanSuperWhy.png">
            <h2>Jovan</h2>
            <p>Jovan loves superheros(Spiderman specifically), playing sports, parkour and anything that can cause brain damage or broken bones.</p>
            <p><a class="btn btn-default" href="#">View details »</a></p>
        </div>
        <div class="col-md-4 text-center">
            <img class="img-circle" src="images/kayDress.png">
            <h2>Kalyn</h2>
            <p>Kalyn is my princess, she loves dolls, painting nails, dancing, singing and watching cartoons.</p>
            <p><a class="btn btn-default" href="#">View details »</a></p>
        </div>
        <div class="col-md-4 text-center">
            <img class="img-circle" src="images/elijahFace.png">
            <h2>Elijah</h2>
            <p>Elijah is the roughest, toughest creature this side of the Atlantic ocean. He crawls, chews, bites, climbs, hits, slams, falls, stands and screams. Anything a spartan does or Vin Diesal needs a stunt double for in Fast and the Furious,HE DOES!</p>
            <a class="btn btn-default" href="#">View details »</a></p>
        </div>
    </div><!-- /.row -->


<!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-right" src="images/danaFace.png">
        <h2 class="featurette-heading">Dana<span class="text-muted"></span></h2>
        <p>To sum her up, imagine a lawyer/judge/accountant/CEO/Black Widow(Avengers)/Hilary from Fresh Prince and you know Dana.</p>

  </div>

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-left" src="images/myFace.png">
        <h2 class="featurette-heading">Last but not least.......<span class="text-muted">Me</span></h2>
        <p class="lead">I am a full-time husband, father, software engineer and weight-lifting entusiasts. I enjoy staying update to date with current technologies by reading, taking classes and encountering other techies</p>
    </div>

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-right" src="images/fam.png">
        <h2 class="featurette-heading">One big happy family<span class="text-muted">SOMETIMES.</span></h2>
        <!--p class="lead">A big design trend for 2013 is "flat" design. Gone are the days of excessive gradients and shadows. Designers are producing cleaner flat designs, and Bootstrap 3 takes advantage of this minimalist trend.</p-->
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <!--p>This Bootstrap layout is compliments of Bootply. · <a href="http://www.bootply.com/62603">Edit on Bootply.com</a></p-->
    </footer>

</div><!-- /.container -->

<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


<script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



<!-- JavaScript jQuery code from Bootply.com editor -->

<script type='text/javascript'>

    $(document).ready(function() {



    });

</script>


</body>
</html>