<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>详情-${freshGoods.goodName}</title>
    <!--/tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content=""/>
    <script>
        /*addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }*/
    </script>
    <!--//tags -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/font-awesome.css" rel="stylesheet">
    <!--pop-up-box-->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//pop-up-box-->
    <!-- price range -->
    <link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
    <!-- flexslider -->
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>
    <!-- fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800"
          rel="stylesheet">
    <style type="text/css">
        a{white-space: nowrap; overflow: hidden;display:block;}
    </style>
</head>

<body>
<!-- top-header -->
<div class="header-most-top">
    <p>杂货优惠区优惠和折扣</p>
</div>
<!-- //top-header -->
<!-- header-bot-->
<div class="header-bot">
    <div class="header-bot_inner_wthreeinfo_header_mid">
        <!-- header-bot-->
        <div class="col-md-4 logo_agile">
            <h1>
                <a href="index.jsp">
                    <span>G</span>rocery
                    <span>S</span>hoppy
                    <img src="images/logo2.png" alt=" ">
                </a>
            </h1>
        </div>
        <!-- header-bot -->
        <div class="col-md-8 header">
            <!-- header lists -->
            <ul>
                <li>
                    <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">
                        <span class="fa fa-map-marker" aria-hidden="true"></span>Shop Locator</a>
                </li>
                <li>
                    <c:choose>
                        <c:when test="${user == null}">
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                        </c:when>
                        <c:otherwise>
                            <a href="logistics?userId=${user.userId}" data-toggle="modal" >
                                <span class="fa fa-truck" aria-hidden="true"></span>Track Order</a>
                        </c:otherwise>
                    </c:choose>
                </li>
                <li>
                    <span class="fa fa-phone" aria-hidden="true"></span> 13333333333
                </li>
                <c:choose>
                    <c:when test="${user == null}">
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal1">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span> Sign In </a>
                        </li>
                        <li>
                            <a href="#" data-toggle="modal" data-target="#myModal2">
                                <span class="fa fa-pencil-square-o" aria-hidden="true"></span> Sign Up </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="userLogout" id="logout">
                                <span class="fa fa-unlock-alt" aria-hidden="true"></span><i>${user.userName}</i> : Sign Out </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- //header lists -->
            <!-- search -->
            <div class="agileits_search">
                <form action="getBigSouSuoGoods" method="get">
                    <input name="goodName" type="search" placeholder="How can we help you today？" required="">
                    <button type="submit" class="btn btn-default" aria-label="Left Align">
                        <span class="fa fa-search" aria-hidden="true"> </span>
                    </button>
                </form>
            </div>
            <!-- //search -->
            <!-- cart details -->
            <div class="top_nav_right">
                <div class="wthreecartaits wthreecartaits2 cart cart box_1">
                    <form action="#" method="post" class="last">
                        <input type="hidden" name="cmd" value="_cart">
                        <input type="hidden" name="display" value="1">
                        <button class="w3view-cart" type="submit" name="submit" value="">
                            <i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
                        </button>
                    </form>
                </div>
            </div>
            <!-- //cart details -->
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- shop locator (popup) -->
<!-- Button trigger modal(shop-locator) -->
<div id="small-dialog1" class="mfp-hide">
    <div class="select-city">
        <h3>Please Select Your Location</h3>
        <select class="list_of_cities">
            <optgroup label="Popular Cities">
                <option selected style="display:none;color:#eee;">Select City</option>
                <option>Birmingham</option>
                <option>Anchorage</option>
                <option>Phoenix</option>
                <option>Little Rock</option>
                <option>Los Angeles</option>
                <option>Denver</option>
                <option>Bridgeport</option>
                <option>Wilmington</option>
                <option>Jacksonville</option>
                <option>Atlanta</option>
                <option>Honolulu</option>
                <option>Boise</option>
                <option>Chicago</option>
                <option>Indianapolis</option>
            </optgroup>
            <optgroup label="Alabama">
                <option>Birmingham</option>
                <option>Montgomery</option>
                <option>Mobile</option>
                <option>Huntsville</option>
                <option>Tuscaloosa</option>
            </optgroup>

        </select>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //shop locator (popup) -->
<!-- signin Model -->
<!-- Modal1 -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">Sign In </h3>
                    <p>
                        请登录, 开启您的生鲜之旅。 没有账号?
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            请注册</a>
                    </p>
                    <form action="uesrLogin" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="User Name" name="Name" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" name="password" required="">
                        </div>
                        <input type="submit" value="Sign In">
                    </form>
                    </form>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal1 -->
<!-- //signin Model -->
<!-- signup Model -->
<!-- Modal2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body modal-body-sub_agile">
                <div class="main-mailposi">
                    <span class="fa fa-envelope-o" aria-hidden="true"></span>
                </div>
                <div class="modal_body_left modal_body_left1">
                    <h3 class="agileinfo_sign">注册</h3>
                    <p>
                        快来加入杂货店吧！请设置您的帐户。
                    </p>
                    <form action="createUser" method="post">
                        <div class="styled-input agile-styled-input-top">
                            <input type="text" placeholder="Name" name="username" required="">
                        </div>
                        <div class="styled-input">
                            <input type="email" placeholder="E-mail" name="Email" required="">
                        </div>
                        <div class="styled-input">
                            <input type="password" placeholder="Password" name="password" required="">
                        </div>
                        <div class="styled-input">
                            <input type="text" placeholder="Tel" name="tel" required="">
                        </div>
                        <input type="submit" value="Sign Up">
                    </form>
                    <p>
                        <a href="#">By clicking register, I agree to your terms</a>
                    </p>
                </div>
            </div>
        </div>
        <!-- //Modal content-->
    </div>
</div>
<!-- //Modal2 -->
<!-- //signup Model -->
<!-- //header-bot -->
<!-- navigation -->
<div class="ban-top">
    <div class="container">
        <div class="agileits-navi_search">
            <form action="#" method="post">
                <select id="agileinfo-nav_search" class="goodType" name="agileinfo_search" required="">
                    <%--<option value="">All Categories</option>
                    <option value="Kitchen">Kitchen</option>
                    <option value="Household">Household</option>
                    <option value="Snacks &amp; Beverages">Snacks & Beverages</option>
                    <option value="Personal Care">Personal Care</option>
                    <option value="Gift Hampers">Gift Hampers</option>
                    <option value="Fruits &amp; Vegetables">Fruits & Vegetables</option>
                    <option value="Baby Care">Baby Care</option>
                    <option value="Soft Drinks &amp; Juices">Soft Drinks & Juices</option>
                    <option value="Frozen Food">Frozen Food</option>
                    <option value="Bread &amp; Bakery">Bread & Bakery</option>
                    <option value="Sweets">Sweets</option>--%>
                </select>
            </form>
        </div>
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1"
                                aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li>
                                <a class="nav-stylehead" href="index.jsp">主页
                                    <span class="sr-only">(current)</span>
                                </a>
                            </li>
                            <li class="">
                                <a class="nav-stylehead" href="about.jsp">关于我们</a>
                            </li>


                            <li>
                                <a class="nav-stylehead" href="faqs.jsp">常见问题解答</a>
                            </li>

                            <%--<li>
                                <a class="nav-stylehead" href="contact.jsp">联系我们</a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<!-- //navigation -->
<!-- banner-2 -->
<div class="page-head_agile_info_w3l">

</div>
<!-- //banner-2 -->
<!-- page -->
<div class="services-breadcrumb">
    <div class="agile_inner_breadcrumb">
        <div class="container">
            <ul class="w3_short">
                <li>
                    <a href="index.jsp">主页</a>
                   <%-- <i>|</i>--%>
                </li>
                <li><a>| 商品详情</a></li>
            </ul>
        </div>
    </div>
</div>
<!-- //page -->
<!-- Single Page -->
<div class="banner-bootom-w3-agileits">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">商品详情
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="col-md-5 single-right-left ">
            <div class="grid images_3_of_2">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="img/${imgs[0]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[0]}.jpg" data-imagezoom="true" class="img-responsive" alt="" ></div>
                        </li>
                        <li data-thumb="img/${imgs[1]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[1]}.jpg" data-imagezoom="true" class="img-responsive" alt=""></div>
                        </li>
                        <li data-thumb="img/${imgs[2]}.jpg">
                            <div class="thumb-image">
                                <img src="img/${imgs[2]}.jpg" data-imagezoom="true" class="img-responsive" alt=""></div>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="col-md-7 single-right-left simpleCart_shelfItem">
            <h3>${freshGoods.goodName}</h3>
            <div class="rating1">
					<span class="starRating">
						<input id="rating5" type="radio" name="rating" value="5">
						<label for="rating5">5</label>
						<input id="rating4" type="radio" name="rating" value="4">
						<label for="rating4">4</label>
						<input id="rating3" type="radio" name="rating" value="3" checked="">
						<label for="rating3">3</label>
						<input id="rating2" type="radio" name="rating" value="2">
						<label for="rating2">2</label>
						<input id="rating1" type="radio" name="rating" value="1">
						<label for="rating1">1</label>
					</span>
            </div>
            <p>
                <span class="item_price">${freshGoods.price*freshGoods.discount/100}</span>
                <del>${freshGoods.price}</del>
                <label>免费邮寄</label>
            </p>
            <div class="single-infoagile">
                <ul>
                    <li>
                        货到付款符合条件。
                    </li>
                    <li>
                        送货速度
                    </li>
                    <li>
                        由Supple Tek出售和完成（3.6的5 | 8个评分）。
                    </li>
                    <li>
                        1件优惠
                        <span class="item_price">${freshGoods.price*freshGoods.discount/100}</span>起
                    </li>
                </ul>
            </div>
            <div class="product-single-w3l">
                <p>
                    <i class="fa fa-hand-o-right" aria-hidden="true"></i>这是
                    <c:if test="${freshGoods.preference==1}">肉食</c:if>
                    <c:if test="${freshGoods.preference==2}">素食</c:if>
                    <c:if test="${freshGoods.preference==0}">其他</c:if>
                    <label></label>产品</p>
                <ul>
                    <li>
                        ${freshGoods.summery}
                    </li>
                    <%--<li>
                        After cooking, Zeeba Basmati rice grains attain an extra ordinary length of upto 2.4 cm/~1 inch.
                    </li>
                    <li>
                        Zeeba Basmati rice adheres to the highest food afety standards as your health is paramount to
                        us.
                    </li>
                    <li>
                        Contains only the best and purest grade of basmati rice grain of Export quality.
                    </li>--%>
                </ul>
                <p>
                    <i class="fa fa-refresh" aria-hidden="true"></i>所有食品都是
                    <label>不可退货的。</label>
                </p>
            </div>
            <div class="occasion-cart">
                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                    <form action="#" method="post">
                        <fieldset>
<%--                            <input type="hidden" name="cmd" value="_cart"/>--%>
<%--                            <input type="hidden" name="add" value="1"/>--%>
<%--                            <input type="hidden" name="business" value=" "/>--%>
<%--                            <input type="hidden" name="item_name" value="Zeeba Premium Basmati Rice - 5 KG"/>--%>
<%--                            <input type="hidden" name="amount" value="950.00"/>--%>
<%--                            <input type="hidden" name="discount_amount" value="1.00"/>--%>
<%--                            <input type="hidden" name="currency_code" value="USD"/>--%>
<%--                            <input type="hidden" name="return" value=" "/>--%>
<%--                            <input type="hidden" name="cancel_return" value=" "/>--%>
<%--                            <input type="submit" name="submit" value="Add to cart" class="button"/>--%>

                            <input type="hidden" name="cmd" value="_cart" />
                            <input type="hidden" name="add" value="1" />
                            <input type="hidden" name="business" value=" " />
                            <input type="hidden" name="item_fdid" value="${freshGoods.fdid}"/>
                            <input type="hidden" name="item_name" value="${freshGoods.goodName}" />
                            <input type="hidden" name="amount" value="${freshGoods.price}" />
                            <input type="hidden" name="discount_amount" value="${freshGoods.price-(freshGoods.price*freshGoods.discount/100)}" />
                            <input type="hidden" name="currency_code" value="USD" />
                            <input type="hidden" name="return" value=" " />
                            <input type="hidden" name="cancel_return" value=" " />
                            <input type="submit" name="submit" value="加入购物车" class="button" />
                        </fieldset>
                    </form>
                </div>

            </div>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //Single Page -->
<!-- special offers -->
<div class="featured-section" id="projects">
    <div class="container">
        <!-- tittle heading -->
        <h3 class="tittle-w3l">添加更多
            <span class="heading-style">
					<i></i>
					<i></i>
					<i></i>
				</span>
        </h3>
        <!-- //tittle heading -->
        <div class="content-bottom-in">
            <ul id="flexiselDemo1" class="specialOffers">
                <%--<li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s1.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Aashirvaad, 5g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$220.00</h6>
                                <p>Save $40.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Aashirvaad, 5g"/>
                                        <input type="hidden" name="amount" value="220.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>--%>
                <%--<li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s4.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Kissan Tomato Ketchup, 950g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$99.00</h6>
                                <p>Save $20.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Kissan Tomato Ketchup, 950g"/>
                                        <input type="hidden" name="amount" value="99.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s2.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Madhur Pure Sugar, 1g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$69.00</h6>
                                <p>Save $20.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Madhur Pure Sugar, 1g"/>
                                        <input type="hidden" name="amount" value="69.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s3.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Surf Excel Liquid, 1.02L</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$187.00</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Surf Excel Liquid, 1.02L"/>
                                        <input type="hidden" name="amount" value="187.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s8.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Cadbury Choclairs, 655.5g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$160.00</h6>
                                <p>Save $60.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Cadbury Choclairs, 655.5g"/>
                                        <input type="hidden" name="amount" value="160.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s6.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Fair & Lovely, 80 g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$121.60</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Fair & Lovely, 80 g"/>
                                        <input type="hidden" name="amount" value="121.60"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single.jsp">
                                <img src="images/s5.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single.jsp">Sprite, 2.25L (Pack of 2)</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$180.00</h6>
                                <p>Save $30.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Sprite, 2.25L (Pack of 2)"/>
                                        <input type="hidden" name="amount" value="180.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="w3l-specilamk">
                        <div class="speioffer-agile">
                            <a href="single2.jsp">
                                <img src="images/s9.jpg" alt="">
                            </a>
                        </div>
                        <div class="product-name-w3l">
                            <h4>
                                <a href="single2.jsp">Lakme Eyeconic Kajal, 0.35 g</a>
                            </h4>
                            <div class="w3l-pricehkj">
                                <h6>$153.00</h6>
                                <p>Save $40.00</p>
                            </div>
                            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                                <form action="#" method="post">
                                    <fieldset>
                                        <input type="hidden" name="cmd" value="_cart"/>
                                        <input type="hidden" name="add" value="1"/>
                                        <input type="hidden" name="business" value=" "/>
                                        <input type="hidden" name="item_name" value="Lakme Eyeconic Kajal, 0.35 g"/>
                                        <input type="hidden" name="amount" value="153.00"/>
                                        <input type="hidden" name="discount_amount" value="1.00"/>
                                        <input type="hidden" name="currency_code" value="USD"/>
                                        <input type="hidden" name="return" value=" "/>
                                        <input type="hidden" name="cancel_return" value=" "/>
                                        <input type="submit" name="submit" value="Add to cart" class="button"/>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>
                </li>--%>
            </ul>
        </div>
    </div>
</div>
<!-- //special offers -->

<!-- newsletter -->
<div class="footer-top">
    <div class="container-fluid">
        <div class="col-xs-8 agile-leftmk">
            <h2>Get your Groceries delivered from local stores</h2>
            <p>Free Delivery on your first order!</p>
            <form action="#" method="post">
                <input type="email" placeholder="E-mail" name="email" required="">
                <input type="submit" value="Subscribe">
            </form>
            <div class="newsform-w3l">
                <span class="fa fa-envelope-o" aria-hidden="true"></span>
            </div>
        </div>
        <div class="col-xs-4 w3l-rightmk">
            <img src="images/tab3.png" alt=" ">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //newsletter -->
<!-- footer -->
<footer>
    <div class="container">
        <!-- footer first section -->
        <p class="footer-main">
            <span>"Grocery Shoppy"</span> Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
            sed quia consequuntur
            magni dolores eos qui ratione voluptatem sequi nesciunt.Sed ut perspiciatis unde omnis iste natus error sit
            voluptatem
            accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
            architecto
            beatae vitae dicta sunt explicabo.</p>
        <!-- //footer first section -->
        <!-- footer second section -->
        <div class="w3l-grids-footer">
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-map-marker" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Track Your Order</h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-refresh" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Free & Easy Returns</h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-xs-4 offer-footer">
                <div class="col-xs-4 icon-fot">
                    <span class="fa fa-times" aria-hidden="true"></span>
                </div>
                <div class="col-xs-8 text-form-footer">
                    <h3>Online cancellation </h3>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- //footer second section -->
        <!-- footer third section -->
        <div class="footer-info w3-agileits-info">
            <!-- footer categories -->
            <div class="col-sm-5 address-right">
                <div class="col-xs-6 footer-grids">
                    <h3>Categories</h3>
                    <ul>
                        <li>
                            <a href="product.jsp">Grocery</a>
                        </li>
                        <li>
                            <a href="product.jsp">Fruits</a>
                        </li>
                        <li>
                            <a href="product.jsp">Soft Drinks</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Dishwashers</a>
                        </li>
                        <li>
                            <a href="product.jsp">Biscuits & Cookies</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Baby Diapers</a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-6 footer-grids agile-secomk">
                    <ul>
                        <li>
                            <a href="product.jsp">Snacks & Beverages</a>
                        </li>
                        <li>
                            <a href="product.jsp">Bread & Bakery</a>
                        </li>
                        <li>
                            <a href="product.jsp">Sweets</a>
                        </li>
                        <li>
                            <a href="product.jsp">Chocolates & Biscuits</a>
                        </li>
                        <li>
                            <a href="product2.jsp">Personal Care</a>
                        </li>
                        <li>
                            <a href="product.jsp">Dried Fruits & Nuts</a>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <!-- //footer categories -->
            <!-- quick links -->
            <div class="col-sm-5 address-right">
                <div class="col-xs-6 footer-grids">
                    <h3>Quick Links</h3>
                    <ul>
                        <li>
                            <a href="about.jsp">About Us</a>
                        </li>
                        <li>
                            <a href="contact.jsp">Contact Us</a>
                        </li>
                        <li>
                            <a href="help.jsp">Help</a>
                        </li>
                        <li>
                            <a href="faqs.jsp">Faqs</a>
                        </li>
                        <li>
                            <a href="terms.jsp">Terms of use</a>
                        </li>
                        <li>
                            <a href="privacy.jsp">Privacy Policy</a>
                        </li>
                    </ul>
                </div>
                <div class="col-xs-6 footer-grids">
                    <h3>Get in Touch</h3>
                    <ul>
                        <li>
                            <i class="fa fa-map-marker"></i> 123 Sebastian, USA.
                        </li>
                        <li>
                            <i class="fa fa-mobile"></i> 333 222 3333
                        </li>
                        <li>
                            <i class="fa fa-phone"></i> +222 11 4444
                        </li>
                        <li>
                            <i class="fa fa-envelope-o"></i>
                            <a href="mailto:example@mail.com"> mail@example.com</a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- //quick links -->
            <!-- social icons -->
            <div class="col-sm-2 footer-grids  w3l-socialmk">
                <h3>Follow Us on</h3>
                <div class="social">
                    <ul>
                        <li>
                            <a class="icon fb" href="#">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </li>
                        <li>
                            <a class="icon tw" href="#">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </li>
                        <li>
                            <a class="icon gp" href="#">
                                <i class="fa fa-google-plus"></i>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="agileits_app-devices">
                    <h5>Download the App</h5>
                    <a href="#">
                        <img src="images/1.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/2.png" alt="">
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- //social icons -->
            <div class="clearfix"></div>
        </div>
        <!-- //footer third section -->
        <!-- footer fourth section (text) -->
        <div class="agile-sometext">
            <div class="sub-some">
                <h5>Online Grocery Shopping</h5>
                <p>Order online. All your favourite products from the low price online supermarket for grocery home
                    delivery in Delhi,
                    Gurgaon, Bengaluru, Mumbai and other cities in India. Lowest prices guaranteed on Patanjali,
                    Aashirvaad, Pampers, Maggi,
                    Saffola, Huggies, Fortune, Nestle, Amul, MamyPoko Pants, Surf Excel, Ariel, Vim, Haldiram's and
                    others.</p>
            </div>
            <div class="sub-some">
                <h5>Shop online with the best deals & offers</h5>
                <p>Now Get Upto 40% Off On Everyday Essential Products Shown On The Offer Page. The range includes
                    Grocery, Personal Care,
                    Baby Care, Pet Supplies, Healthcare and Other Daily Need Products. Discount May Vary From Product To
                    Product.</p>
            </div>
            <!-- brands -->
            <div class="sub-some">
                <h5>Popular Brands</h5>
                <ul>
                    <li>
                        <a href="product.jsp">Aashirvaad</a>
                    </li>
                    <li>
                        <a href="product.jsp">Amul</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bingo</a>
                    </li>
                    <li>
                        <a href="product.jsp">Boost</a>
                    </li>
                    <li>
                        <a href="product.jsp">Durex</a>
                    </li>
                    <li>
                        <a href="product.jsp"> Maggi</a>
                    </li>
                    <li>
                        <a href="product.jsp">Glucon-D</a>
                    </li>
                    <li>
                        <a href="product.jsp">Horlicks</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Head & Shoulders</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dove</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dettol</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Dabur</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Colgate</a>
                    </li>
                    <li>
                        <a href="product.jsp">Coca-Cola</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Closeup</a>
                    </li>
                    <li>
                        <a href="product2.jsp"> Cinthol</a>
                    </li>
                    <li>
                        <a href="product.jsp">Cadbury</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bru</a>
                    </li>
                    <li>
                        <a href="product.jsp">Bournvita</a>
                    </li>
                    <li>
                        <a href="product.jsp">Tang</a>
                    </li>
                    <li>
                        <a href="product.jsp">Pears</a>
                    </li>
                    <li>
                        <a href="product.jsp">Oreo</a>
                    </li>
                    <li>
                        <a href="product.jsp"> Taj Mahal</a>
                    </li>
                    <li>
                        <a href="product.jsp">Sprite</a>
                    </li>
                    <li>
                        <a href="product.jsp">Thums Up</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Fair & Lovely</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Lakme</a>
                    </li>
                    <li>
                        <a href="product.jsp">Tata</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Sunfeast</a>
                    </li>
                    <li>
                        <a href="product2.jsp">Sunsilk</a>
                    </li>
                    <li>
                        <a href="product.jsp">Patanjali</a>
                    </li>
                    <li>
                        <a href="product.jsp">MTR</a>
                    </li>
                    <li>
                        <a href="product.jsp">Kissan</a>
                    </li>
                    <li>
                        <a href="product2.jsp"> Lipton</a>
                    </li>
                </ul>
            </div>
            <!-- //brands -->
            <!-- payment -->
            <div class="sub-some child-momu">
                <h5>Payment Method</h5>
                <ul>
                    <li>
                        <img src="images/pay2.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay5.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay1.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay4.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay6.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay3.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay7.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay8.png" alt="">
                    </li>
                    <li>
                        <img src="images/pay9.png" alt="">
                    </li>
                </ul>
            </div>
            <!-- //payment -->
        </div>
        <!-- //footer fourth section (text) -->
    </div>

</footer>
<!-- //footer -->
<!-- copyright -->
<div class="copy-right">
    <div class="container">
        <p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/"
                                                                                    target="_blank"
                                                                                    title="在线超市">哲哲超市</a> - Collect from
            <a href="http://www.cssmoban.com/" title="哲哲超市" target="_blank">哲哲超市</a></p>
    </div>
</div>
<!-- //copyright -->

<!-- js-files -->
<!-- jquery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jquery -->
<script>
    $(function () {
        $("#signIn").click(function () {
            var name=$("#username1").val();
            var pass=$("#password1").val();
            $.post("/userLogin",{username:name,password:pass},function (data) {
                if (data == "true"){
                    location.href="index.jsp";
                }
            });
        });

        function goodType() {
            $.get("/getGoodTypes", function (data) {
                var option = "<option value=''>所有种类</option>"
                for (var key in data){
                    option += "<option value='"+data[key].gtid+"'>"+data[key].gtname+"</option>"
                }
                $(".goodType").append($(option));
            });
        }
        //初始化下拉框
        goodType();
        //获取被选中的种类
        $(".goodType").on("change",function () {
            var gtid = $(this).find(":selected").val();
            console.log(gtid);
            location.href = "getFreshGoods?gtid="+gtid;
        });

    });
</script>
<!-- popup modal (for signin & signup)-->
<script src="js/jquery.magnific-popup.js"></script>
<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>
<!-- Large modal -->
<!-- <script>
    $('#').modal('show');
</script> -->
<!-- //popup modal (for signin & signup)-->

<!-- cart-js -->
<script src="js/minicart.js"></script>
<script>
    paypalm.minicartk.render(); //use only unique class names other than paypal1.minicart1.Also Replace same class name in css and minicart.min.js

    paypalm.minicartk.cart.on('checkout', function (evt) {
        var items = this.items(),
            len = items.length,
            total = 0,
            i;

        // Count the number of each item in the cart
        for (i = 0; i < len; i++) {
            total += items[i].get('quantity');
        }

        if (total < 3) {
            alert('The minimum order quantity is 3. Please add more to your shopping cart before checking out');
            evt.preventDefault();
        }
    });
</script>
<!-- //cart-js -->

<!-- password-script -->
<script>
   /* window.onload = function () {
        document.getElementById("password1").onchange = validatePassword;
        document.getElementById("password2").onchange = validatePassword;
    }

    function validatePassword() {
        var pass2 = document.getElementById("password2").value;
        var pass1 = document.getElementById("password1").value;
        if (pass1 != pass2)
            document.getElementById("password2").setCustomValidity("Passwords Don't Match");
        else
            document.getElementById("password2").setCustomValidity('');
        //empty string means no validation error
    }*/
</script>
<!-- //password-script -->

<!-- smoothscroll -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smoothscroll -->

<!-- start-smooth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();

            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- //end-smooth-scrolling -->

<!-- smooth-scrolling-of-move-up -->
<script>
    $(document).ready(function () {
        /*
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
        };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });

    });
</script>
<!-- //smooth-scrolling-of-move-up -->

<!-- imagezoom -->
<script src="js/imagezoom.js"></script>
<!-- //imagezoom -->

<!-- FlexSlider -->
<script src="js/jquery.flexslider.js"></script>
<script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
</script>
<!-- //FlexSlider-->

<!-- flexisel (for special offers) -->
<script src="js/jquery.flexisel.js"></script>
<script>
    $.get("/getGoodDetailsAll",function (data) {
        for(var key in data){
            var li = $("<li></li>");
            var divParent = $("<div class='w3l-specilamk'></div>");
            var divChild1 = $("<div class='speioffer-agile'></div>");
            var divChild2 = $("<div class='product-name-w3l'></div>");
            //第一个子div
            var imgs = data[key].img.split("-");
            var img = $("<a href='getGoodDetailsByFdid2?fdid="+data[key].fdid+"'><img src="+imgs[0]+"'img/.jpg' style='width: 150px;height: 150px;white-space:nowrap; overflow:hidden;' /></a>");
            divChild1.append(img);

            //第二个子div
            var h4 = $("<h4><a href='getGoodDetailsByFdid2?fdid="+data[key].fdid+"'>"+data[key].goodName+"</a></h4>");
            divChild2.append(h4);
            var divGrandson1 =$("<div class='w3l-pricehkj'></div>");
            //divGrandson1中的标签
            var h6 = $("<h6>$"+data[key].price*data[key].discount/100+"</h6>");
            var p = $("<p>原价 $"+data[key].price+"</p>")
            divGrandson1.append(h6);
            divGrandson1.append(p);
            var divGrandson2 = $("<div class='snipcart-details top_brand_home_details item_add single-item hvr-outline-out'></div>");
            //divGrandson2中的标签
            var form =$("<form action='#' method='post'></form>");
            var fieldset=$("<fieldset></fieldset>");

            var input1 =$('<input type="hidden" name="cmd" value="_cart" />');
            var input2 =$('<input type="hidden" name="add" value="1" />');
            var input3 =$('<input type="hidden" name="business" value=" " />');
            var input4 =$('<input type="hidden" name="item_name" value="'+data[key].name+'" />');
            var input5 =$('<input type="hidden" name="amount" value="'+data[key].price+'" />');
            var input6 =$('<input type="hidden" name="currency_code" value="USD" />');
            var input7 =$('<input type="hidden" name="return" value=" " />');
            var input8 =$('<input type="hidden" name="cancel_return" value=" " />');
            var input9 =$('<input type="submit" name="submit" value="加入购物车" class="button" />');

            fieldset.append(input1);
            fieldset.append(input2);
            fieldset.append(input3);
            fieldset.append(input4);
            fieldset.append(input5);
            fieldset.append(input6);
            fieldset.append(input7);
            fieldset.append(input8);
            fieldset.append(input9);

            form.append(fieldset);
            divGrandson2.append(form);

            /*divChild2.append(divGrandson2);
            divChild1.append(details);
            divParent.append(divChild1);
            divParent.append(divChild2);
            li.append(divParent);*!/*/
            divParent.append(divChild1);
            divChild2.append(divGrandson1);
            divChild2.append(divGrandson2);
            divParent.append(divChild2);
            li.append(divParent);
            $(".specialOffers").append(li);
        }
        lunxun();
    })

</script>
<script>
    function lunxun() {
        $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 2
                }
            }
        });
    }
</script>

<script>
    $(window).load(function () {
      /*  $("#flexiselDemo1").flexisel({
            visibleItems: 3,
            animationSpeed: 1000,
            autoPlay: true,
            autoPlaySpeed: 3000,
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
            responsiveBreakpoints: {
                portrait: {
                    changePoint: 480,
                    visibleItems: 1
                },
                landscape: {
                    changePoint: 640,
                    visibleItems: 2
                },
                tablet: {
                    changePoint: 768,
                    visibleItems: 2
                }
            }
        });*/

    });
</script>
<!-- //flexisel (for special offers) -->

<!-- for bootstrap working -->
<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- //js-files -->

</body>

</html>