<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ include file="template/Header.jsp" %>


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
    height: 100%;
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

.item >img{
height:200;
width:200;
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
image-caption-wrapper{
 padding-top:5px !important
 }




/* Makes images fully responsive */

.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  width: 1000%;
  height: 100%;
}

/* ------------------- Carousel Styling ------------------- */

.carousel-inner {
  border-radius: 25px;
}

.carousel-caption {
  background-color: rgba(0,0,0,.5);
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 10px;
  padding: 0 0 5px 15px;
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
  padding: 0 10px 15px 0;
  text-align: right;
}

.carousel-control.left,
.carousel-control.right {
  background-image: none;
}




@media screen and (min-width:400px) {

  .container {
    max-width: 500px;
}
 h2{
   text-align:center;

    
    position: relative;
    -webkit-animation: mymove 3s infinite; /* Safari 4.0 - 8.0 */
    -webkit-animation-timing-function: linear; /* Safari 4.0 - 8.0 */
    animation: mymove 3s infinite;
    animation-timing-function: linear;
}

/* Safari 4.0 - 8.0 */
@-webkit-keyframes mymove {
    from {left: 0px;}
    to {left: 300px;}
}

@keyframes mymove {
    from {left: 0px;}
    to {left: 300px;}
}



</style>
</head>
 <body >
 <h2 style="color:navy">Welcome to your Own Shop</h2>
 <sec:authorize access="hasRole('ROLE_ADMIN')">
 <jsp:forward page="/adminHome"></jsp:forward>
 </sec:authorize> 
  
  

<form action="Home">
<div class="container">
  

 
  



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
         <li data-target="#caro" data-slide-to="3"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner">
        <div class="item active">
          <img class="img-responsive" src="resources/image/hoimg/ho.jpg" alt="...">
          <div class="carousel-caption">
            <h4>Re-Born yourself</h4>
          </div>
        </div>
        <div class="item">
          <img class="img-responsive" src="resources/image/hoimg/mobed.jpg" alt="...">
          <div class="carousel-caption">
            <h4>RestFul Environment</h4>
          </div>
        </div>
         <div class="item">
          <img class="img-responsive" src="resources/image/hoimg/lo.jpg" alt="...">
          <div class="carousel-caption">
            <h4>RestFul Environment</h4>
          </div>
        </div>
        <div class="item">
          <img class="img-responsive" src="resources/image/hoimg/Draw.jpg" >
          <div class="carousel-caption">
            <h4>Re-Invent your comfort</h4>
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
  <br>

<div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading"> DEAL!!</div>
        <div class="panel-body"><img class="img-responsive" src="resources/image/hoimg/St1.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Buy your luxury</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-danger">
        <div class="panel-heading">Re-Invent</div>
        <div class="panel-body"><img class="img-responsive" src="resources/image/hoimg/st3.jpg" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">Design Your Future</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-success">
        <div class="panel-heading">Family Memo.</div>
        <div class="panel-body"><img src="resources/image/hoimg/st2.jpg" class="img-responsive" style="width:100%;height:50%" alt="Image"></div>
        <div class="panel-footer">Back To Garden</div>
      </div>
    </div>
  </div>
  



</div><br><br>
</section>

<!--gallery for home page-->
<!-- 
<div class="responsive">
  <div class="gallery">
    <a target="_blank" href="resources/image/hoimg/St2.jpg">
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


</div>-->


<%@ include file="template/Footer.jsp" %>
</body>
</html>