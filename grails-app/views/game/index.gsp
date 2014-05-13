
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
        position: absolute;
        top: 0;
        left: 0;
        min-height: 400px;
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
                <a class="navbar-brand" href="#">Sports Metrics</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="http://www.bootply.com" target="ext">About</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                            <li><a href="#">One more separated link</a></li>
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
    </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img src="/assets/example/bg_suburb.jpg" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Sports Metrics</h1>
                    <pthis is="" an="" example="" layout="" with="" carousel="" that="" uses="" the="" bootstrap="" 3="" styles.<="" small=""><p></p>
                    <p><a class="btn btn-lg btn-primary" href="http://getbootstrap.com">Learn More</a>
                    </p></pthis></div>
            </div>
        </div>
        <div class="item">
            <img src="http://lorempixel.com/1500/600/abstract/1" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Changes to the Grid</h1>
                    <p>Bootstrap 3 still features a 12-column grid, but many of the CSS class names have completely changed.</p>
                    <p><a class="btn btn-large btn-primary" href="#">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img src="http://placehold.it/1500X500" class="img-responsive">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Percentage-based sizing</h1>
                    <p>With "mobile-first" there is now only one percentage-based grid.</p>
                    <p><a class="btn btn-large btn-primary" href="#">Browse gallery</a></p>
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

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-md-4 text-center">
            <img class="img-circle" src="http://placehold.it/140x140">
            <h2>Mobile-first</h2>
            <p>Tablets, phones, laptops. The new 3 promises to be mobile friendly from the start.</p>
            <p><a class="btn btn-default" href="#">View details »</a></p>
        </div>
        <div class="col-md-4 text-center">
            <img class="img-circle" src="http://placehold.it/140x140">
            <h2>One Fluid Grid</h2>
            <p>There is now just one percentage-based grid for Bootstrap 3. Customize for fixed widths.</p>
            <p><a class="btn btn-default" href="#">View details »</a></p>
        </div>
        <div class="col-md-4 text-center">
            <img class="img-circle" src="http://placehold.it/140x140">
            <h2>LESS is More</h2>
            <p>Improved support for mixins make the new Bootstrap 3 easier to customize.</p>
            <p><a class="btn btn-default" href="#">View details »</a></p>
        </div>
    </div><!-- /.row -->


<!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-right" src="http://placehold.it/512">
        <h2 class="featurette-heading">Details. <span class="text-muted">It'll blow your mind.</span></h2>

        <g:each in="${ game }" var="gameI" status="i">
            ${ gameI}
        </g:each>    </div>

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-left" src="http://placehold.it/512">
        <h2 class="featurette-heading">Smaller Footprint. <span class="text-muted">Lightweight.</span></h2>
        <p class="lead">The new Bootstrap 3 promises to be a smaller build. The separate Bootstrap base and responsive.css files have now been merged into one. There is no more fixed grid, only fluid.</p>
    </div>

    <hr class="featurette-divider">

    <div class="featurette">
        <img class="featurette-image img-circle pull-right" src="http://placehold.it/512">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Flatness.</span></h2>
        <p class="lead">A big design trend for 2013 is "flat" design. Gone are the days of excessive gradients and shadows. Designers are producing cleaner flat designs, and Bootstrap 3 takes advantage of this minimalist trend.</p>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>This Bootstrap layout is compliments of Bootply. · <a href="http://www.bootply.com/62603">Edit on Bootply.com</a></p>
    </footer>

</div><!-- /.container -->

<script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


<script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

<script>

    var salesData=[
        {label:"Basic", color:"#3366CC"},
        {label:"Plus", color:"#DC3912"},
        {label:"Lite", color:"#FF9900"},
        {label:"Elite", color:"#109618"},
        {label:"Delux", color:"#990099"}
    ];

    var svg = d3.select("body").append("svg").attr("width",700).attr("height",300);

    svg.append("g").attr("id","salesDonut");
    svg.append("g").attr("id","quotesDonut");
    <g:each in="${game}" var="gameScore">
    Donut3D.draw("salesDonut", randomData(), 150, 150, 130, 100, 30, 0.4);
    </g:each>
    <g:each in="${game}" var="gameScore">
    Donut3D.draw("quotesDonut", randomData(), 450, 150, 130, 100, 30, 0);
    </g:each>
    function changeData(){
        Donut3D.transition("salesDonut", randomData(), 130, 100, 30, 0.4);
        Donut3D.transition("quotesDonut", randomData(), 130, 100, 30, 0);
    }

    function randomData(){
        return salesData.map(function(d){
            return {label:d.label, value:50, color:d.color};});
    }
</script>




<!-- JavaScript jQuery code from Bootply.com editor -->

<script type='text/javascript'>

    $(document).ready(function() {



    });

</script>


</body>
</html>