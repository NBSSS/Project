
<%@ include file="Header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
<style>

body {

   background-image: url("resources/image/hoimg/back1.jpg");

   
    background-size: cover;
   
}
/*--------------------href link color-----------------*/

/* visited link */
a:visited {
    color: black;
}

/* mouse over link */
a:hover {
    color: green;
}

/* selected link */
a:active {
    color: blue;
}






/*---------------------------adding images responsive to home page------------------*/

div.gallery {
    border: 1px solid #ccc;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px){
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px){
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "  ";
    display: table;
    clear: both;
}





/* Makes images fully responsive */

.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  width: 100%;
  height: 100%;
}

/* ------------------- Carousel Styling ------------------- */

.carousel-inner {
  border-radius: 15px;
}

.carousel-caption {
  background-color: rgba(0,0,0,.5);
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 10;
  padding: 0 0 10px 25px;
  color: #fff;
  text-align: center;
}

.carousel-indicators {
  position: absolute;
  bottom: 0;
  right: 0;
  left: 0;
  width: 100%;
  z-index: 15;
  margin: 0;
  padding: 0 25px 25px 0;
  text-align: right;
}

.carousel-control.left,
.carousel-control.right {
  background-image: none;
}




@media screen and (min-width:400px) {

  .container {
    max-width: 500px;




</style>
</head>
 <body > 
  <center>
  <h2 >Welcome to your Own Shop</h2>
   </center>
<form action="Home">
<div class="container">
  


<div class="container">
   <li><a href="supplier"> Add Supplier</a></li>
   <li><a href="CategoryDetail">Category</a></li>
    <li><a href="ProductDetail">Product</a></li>
  
</div>


</div>
</form>
<section class="section-white">
  <div class="container">

    <div id="caro" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#caro" data-slide-to="0" class="active"></li>
        <li data-target="#caro" data-slide-to="1"></li>
        <li data-target="#caro" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img src="resources/image/hoimg/s8.jpg" alt="...">
          <div class="carousel-caption">
            <h2>Unbox your Phone</h2>
          </div>
        </div>
        <div class="item">
          <img src="resources/image/hoimg/mi.jpg" alt="...">
          <div class="carousel-caption">
            <h2>World sleek Air-Book</h2>
          </div>
        </div>
        <div class="item">
          <img src="resources/image/hoimg/toyota.jpg" alt="...">
          <div class="carousel-caption">
            <h2>New-Fortuner</h2>
          </div>
        </div>
      </div>

      <!-- Controls -->
      <a class="left carousel-control" href="#caro" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
      </a>
      <a class="right carousel-control" href="#caro" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
      </a>
    </div>

  </div>
</section>



<!--gallery for home page-->

<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="resources/image/hoimg/book.jpg">
      <img src="resources/image/hoimg/book.jpg"  style="padding:20px" width="300" height="200">
    </a>
    <div class="desc">Knowledge Section</div>
  </div>
</div>


<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="resources/image/hoimg/homedecor.jpg">
      <img src="resources/image/hoimg/homedecor.jpg" style="padding:20px" width="300" height="200">
    </a>
    <div class="desc">Decor</div>
  </div>
</div>



      
<div  class="responsive" >
<div class="gallery">
   
    <a  target="_blank" href="resources/image/hoimg/end.jpg">
      <img src="resources/image/hoimg/end.jpg" style="padding:20px" width="300" height="200">
    </a>
    <div class="desc">Ford Endeavour</div>
  </div>


</div>

<%@ include file="footer.jsp" %>
</body>
</html>
