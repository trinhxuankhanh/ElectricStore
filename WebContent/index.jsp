<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="Cs/Style.css" rel="stylesheet" />
    <script src="Js/jquery-3.2.1.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Josefin+Sans|Lobster+Two|Pacifico');
</style>
</head>
<section>
		
		<br>
        <!-- This is Section 1 of the page -->
        <div class="section1">
            <a href="${pageContext.request.contextPath}/HomeServlet"><img src="Images/Website_Logo.png" class="logo" /></a>
            <div class="navigation">
                <img src="Images/1329080.png" class="toggle" />
                <a class="cgr">Categories</a>
            </div>
            <div >  
            	<c:forEach var="product" items="${lis}" >
            	<a class="submenu" href="${pageContext.request.contextPath}/ShowCate?name=<c:out value="${product.categories}"/>"><c:out value="${product.categories}"></c:out></a>
            	</c:forEach>
            </div>

            <p class="para1">Specials</p>
            <div class="Special">

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Philips_Trimmers.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$24.34<strike>$25.63</strike></h3>
                        <p>Philips QT4000 Experience Men's Stubble Trimmer 44DJH62</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/y37-high-figure.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$399<strike>$402.30</strike></h3>
                        <p>vivo Xshot 5.2 inch 4G Android 4.2 Quad Core 2.3GHz RAM 2GB ROM 16GB</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/cruzer-force-usb.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$16<strike>$18</strike></h3>
                        <p>SanDisk Cruzer Force 64 GB USB Flash Drive USB 2.0</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Canon-EF.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$133.89<strike>$134.16</strike></h3>
                        <p>Canon EF 75-300mm f/4.0-5.6 III Lens</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/bag2.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$14.92<strike></strike></h3>
                        <p>PZJ® Galaxy Backpack, Unisex Galaxy Pattern Canvas</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/images.jpg" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$1.89<strike>$2</strike></h3>
                        <p>The Mistake: An unputdownable psychological thriller with a brilliant twist</p>
                    </div>
                </fieldset>

                <fieldset>
                    <legend>Sale</legend>
                    <div class="div1">
                        <img src="Images/Hand-Blender-Mixer-PNG-Image1.png" class="img1" />
                    </div>
                    <div class="div2">
                        <h3>$8.49<strike>$9</strike></h3>
                        <p>Elgento E12009 Hand Blender, 170 W - White</p>
                    </div>
                </fieldset>
                
            </div>



        </div>



        <!-- This is section 2 of the page -->
        <div class="section2">
        	<div> <jsp:include page="_menu.jsp"></jsp:include> </div>
            <input type="text" placeholder="search" class="txtsrch" /><button type="button" class="btnsrch">Search</button>
			
            <img src="Images/if_call_322424.png" class="call-icon" />
            <span class="tel-no">800-8600-9662</span>


            <nav>
                <a class="menuitem">Home</a>
                <a class="menuitem">Wish list(0)</a>
                <a class="menuitem">My Account</a>
                <a class="menuitem" href="${pageContext.request.contextPath}/Cart">Shopping Cart</a>
                <a class="menuitem">Checkout</a>
                <a class="menuitem">items(s)</a>
            </nav>

            <div class="slider">
                <div class="slides">
                	
                    <div class="slide1">
                        <img src="Images/4-2-iphone-png-picture-png-image.png" class="img1" />
                    </div>
                    <div class="slide1">
                        <img src="Images/2-2-iphone-png-picture.png" class="img2" />
                    </div>
                    <div class="slide1">
                        <img src="Images/1-2-iphone-png-picture-png-clipart.png" class="img3" />
                    </div>
                    <div class="constant">
                        <h1>iPhone 7</h1>
                        <p>Comfort is a very important things nowadays because it is a condition of satifaction.</p>

                        <a class="btnshopnow">Shop Now!</a>
                    </div>
                </div>
            </div>


            <div class="content1">
                <div class="innertitle1">
                    <h3>Home Theater & TV</h3>
                    <p class="para1">Comfort is a very important things nowadays because it is a condition of satifaction.</p>
                    <br />
                    <p class="para1">Shop Now!</p>
                </div>

                <div class="innertitle2">
                    <h3>Home Appliances</h3>
                    <p class="para1">Comfort is a very important things nowadays because it is a condition of satifaction.</p>
                    <br />
                    <p class="para1">Shop Now!</p>
                </div>

                <div class="inner1">
                    <img src="Images/Home_Theaters.png" class="img1" />
                </div>
                <div class="inner2">
                    <img src="Images/Black_Vacuum_Cleaner_PNG_Clipart-629.png" class="img2" />
                </div>
            </div>

            <p class="featuredpara">Latest</p>

            <div class="products">
                <c:forEach var="product" items="${list}" >
                	<fieldset class="col2">
                		<legend>New</legend>
                		<a href="${pageContext.request.contextPath}/info?id=<c:out value="${product.id}"></c:out>">
                		<img src='<c:url value="${product.image}"></c:url>' height="200" width="250">
             			<div style=" float:right; bpadding-bottom: 20%;"> <a href="${pageContext.request.contextPath}/Cart?id=<c:out value="${product.id}"/>">Add To Cart</a> </div>
                		<h3><c:out value="${product.promotion_price}"></c:out><strike><c:out value="${product.default_price}"></c:out></strike></h3>
                		<h4> <c:out value="${product.name}"></c:out> </h4> </a>
                		<p> <c:out value="${product.discription}"></c:out> </p>
                		
                	</fieldset>
                </c:forEach>
                
            </div>


            <p class="featuredpara">Featured</p>

            <div class="products">
                <fieldset class="col1">
                    <legend>Hot Deal</legend>
                    <img src="Images/1_VR.png" class="img1" />
                    <h3>$29.99<strike>$31.34</strike></h3>
                    <h4>DESTEK V4 VR Headset, 103° FOV, Eye Protected HD Virtual Reality Headset w/ Touch Button/Trigger for iPhone</h4>
                    <p>Put on the Gear VR and go from front-row experiences to adventures you've only dreamt of...</p>
                </fieldset>

                <fieldset class="col2">
                    <legend>Hot Deal</legend>
                    <img src="Images/434_Refrigerator.png" class="img1" />
                    <h3>$1042.97<strike>$1049.93</strike></h3>
                    <h4>Samsung RS7567BHCSL H-series Side by Side Fridge Freezer With Ice And Water Dispenser Inox Steel Doors</h4>
                    <p>Special delivery for large items is available for this item, when sold and dispatched by Amazon...</p>
                </fieldset>

                <fieldset class="col3">
                    <legend>Hot Deal</legend>
                    <img src="Images/3_Iron.png" class="img1" />
                    <h3>$28.71<strike>$35.31</strike></h3>
                    <h4>Russell Hobbs Steamglide Professional 2600 W Steam Iron 21370 - Blue and Black</h4>
                    <p>2600 watts gives you a fast heat-up time and more power for performance in your battle against the creases...</p>
                </fieldset>
            </div>

            <div class="products" style="margin-top:3vh;">
                <fieldset class="col1">
                    <legend>Hot Deal</legend>
                    <img src="Images/83_Spekers.png" class="img1" />
                    <h3>$120.45<strike>$122.47</strike></h3>
                    <h4>LG LOUDR LHB645N Home Theatre Speaker System - Black</h4>
                    <p>5.1Ch 1000W System - Immerse yourself with a 5.1 Ch. surround sound speaker system combined with 1000W of room filling sound, which brings to life all of your favourite movies, music, soaps and shows...</p>
                </fieldset>

                <fieldset class="col2">
                    <legend>Hot Deal</legend>
                    <img src="Images/53_Drone.png" class="img1" />
                    <h3>$449.12<strike>$559.23</strike></h3>
                    <h4>DJI CP.PT.000167 Phantom 3 Standard Drone</h4>
                    <p>stunning 2.7K HD videos and 12 Megapixel photos with the integrated aerial camera. Stable Footage...</p>
                </fieldset>

                <fieldset class="col3">
                    <legend>Hot Deal</legend>
                    <img src="Images/6-video-camera-png-image.png" class="img1" />
                    <h3>$239.59<strike>$259.81</strike></h3>
                    <h4>Sony HDR-PJ410 Full HD Camcorder with Built-In Projector (30x Optical Zoom, Optical SteadyShot, Wi-Fi and NFC</h4>
                    <p>Keep your footage steady and reduce image blur with Sony's Optical SteadyShot...</p>
                </fieldset>
            </div>


        </div>
    </section>

    <div class="background"></div>

    <div class="footer">

        <div class="outer">
            <div class="inner">
                <h4>Information</h4>
                <a>About</a>
                <a>Delivery Information</a>
                <a>Privacy Policy</a>
                <a>Tearm & Condition</a>
            </div>
            <div class="inner2">
                <h4>Costomer Information</h4>
                <a>Contact Us</a>
                <a>Return</a>
                <a>Site Map</a>
            </div>
            <div class="inner">
                <h4>My Account</h4>
                <a>Order History</a>
                <a>Wish list</a>
                <a>News Latter</a>
            </div>
            <div class="inner2">
                <h4>Follow Us</h4>
                <a>Facebook</a>
                <a>Twitter</a>
                <a>Google +</a>
                <a>Youtube</a>
            </div>
        </div>

        <hr />
        <div class="copyright">
            <span>Powered by Daily Tuition © 2017</span>
        </div>

    </div>

    <script>

        var $slides = $('.slides');
        var $slide = $('.slide1');
        var count = 1;

        $(document).ready(function () {

            setInterval(function () {

                $slides.animate({ 'margin-left': '-=68vw' }, 1200, function () {

                    count++;
                    if (count === 4) {
                        $slides.css("margin-left", 0);
                        count = 1;
                    }

                });
            }, 4000);
        });

    </script>
</body></html>