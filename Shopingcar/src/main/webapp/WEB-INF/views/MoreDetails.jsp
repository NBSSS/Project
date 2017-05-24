<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ include file="template/Header.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<style>
ul > li{margin-right:25px;font-weight:lighter;cursor:pointer}
li.active{border-bottom:3px solid silver;}

.item-photo{display:flex;justify-content:center;align-items:center;border-right:1px solid #f6f6f6;}
.menu-items{list-style-type:none;font-size:11px;display:inline-flex;margin-bottom:0px;margin-top:20px}
.btn-success{width:100%;border-radius:0px;}
.section{width:100%;margin-left:-15px;padding:2px;padding-left:15px;padding-right:15px;background:#f8f9f9}
.title-price{margin-top:30px;margin-bottom:0px;color:black}
.title-attr{margin-top:0px;margin-bottom:0px;color:black;}
.btn-minus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-right:0px;}
.btn-plus{cursor:pointer;font-size:7px;display:flex;align-items:center;padding:5px;padding-left:10px;padding-right:10px;border:1px solid gray;border-radius:2px;border-left:0px;}
div.section > div {width:100%;display:inline-flex;}
div.section > div > input {margin:0px;padding-left:5px;font-size:10px;padding-right:5px;max-width:18%;text-align:center;}
.attr,.attr2{cursor:pointer;margin-right:5px;height:20px;font-size:10px;padding:2px;border:1px solid gray;border-radius:2px;}
.attr.active,.attr2.active{ border:1px solid orange;}

@media (max-width: 426px) {
    .container {margin-top:0px !important;}
    .container > .row{padding:0px !important;}
    .container > .row > .col-xs-12.col-sm-5{
        padding-right:0px ;    
    }
    .container > .row > .col-xs-12.col-sm-9 > div > p{
        padding-left:0px !important;
        padding-right:0px !important;
    }
    .container > .row > .col-xs-12.col-sm-9 > div > ul{
        padding-left:10px !important;
        
    }            
    .section{width:104%;}
    .menu-items{padding-left:0px;}
}
</style>
<div class="container">
   


       

	<div class="row">
   <div class="col-xs-4 item-photo">
                    <img style="max-width:100%;" src="${pageContext.request.contextPath }/resources/image/s187.jpg/">
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    
                    <h3>Samsung Galaxy S8 </h3>    
                   

                    
                    <h6 class="title-price"><small>Product Price</small></h6>
                    <h3 style="margin-top:0px;">Rs.&nbsp ${product.price }</h3>

                    <!-- Detalles especificos del producto -->
                    <div class="section">
                        <h6 class="title-attr" style="margin-top:15px;" ><small>COLOR</small></h6>                    
                        <div>
                            <div class="attr" style="width:25px;background:#5a5a5a;"></div>
                            <div class="attr" style="width:25px;background:white;"></div>
                        </div>
                    </div>
                    <div class="section" style="padding-bottom:5px;">
                        <h6 class="title-attr"><small>Memory</small></h6>                    
                        <div>
                            
                            <div class="attr2">64 GB</div>
                        </div>
                    </div>   
                    <div class="section" style="padding-bottom:20px;">
                        <h6 class="title-attr"><small>Qty.</small></h6>                    
                        <div>
                            <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                            <input value="1" />
                            <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                        </div>
                    </div>                

                  
                    <div class="section" style="padding-bottom:20px;">
                        < button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Add to Cart</button>
                        <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Wishlist</a></h6>
                    </div>                                        
                </div>                              

                <div class="col-xs-9">
                    <ul class="menu-items">
                        <li class="active">Product Details ${product.descp}</li>
                        
                    </ul>
                    <div style="width:100%;border-top:1px solid silver">
                       
                        </p>
                        <small>
                        <ul>
                        </ul>  
                        </small>
                    </div>
                </div>		
	</div>
</div>
<!--  ${product.descp}
<img alt="${product.name}" src="${pageContext.request.contextPath }/resources/image/${product.productId}.jpg/">-->
</body>
</html>