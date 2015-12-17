<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title;
        if (isset($_GET['page'])) {
            echo " - " . ((int)$_GET['page']) . " " . $text_page;
        } ?></title>
    <base href="<?php echo $base; ?>"/>
    <?php if ($description) { ?>
        <meta name="description" content="<?php echo $description;
        if (isset($_GET['page'])) {
            echo " - " . ((int)$_GET['page']) . " " . $text_page;
        } ?>"/>
    <?php } ?>
    <?php if ($keywords) { ?>
        <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>
    <meta property="og:title" content="<?php echo $title;
    if (isset($_GET['page'])) {
        echo " - " . ((int)$_GET['page']) . " " . $text_page;
    } ?>"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
        <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
        <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>
    <meta property="og:site_name" content="<?php echo $name; ?>"/>

    <script src="catalog/view/theme/gordondalos/js/jquery.min.js"></script>
    <script src="catalog/view/theme/gordondalos/js/jquery-migrate-1.2.1.js"></script>

    <!--[if lt IE 9]>
    <html class="lt-ie9">
    <div style="clear: both; text-align:center; position: relative;"><a
        href="http://windows.microsoft.com/en-US/internet-explorer/.."><img
        src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820"
        alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a>
    </div>
    </html><![endif]-->


    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen"/>

    <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>


    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css"/>
    <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">

    <link rel="icon" href="catalog/view/theme/gordondalos/images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/grid.css">

    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/search.css">
    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/google-map.css">
    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/owl-carousel.css">
    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/styleswitcher.css"/>
    <link rel="stylesheet" href="catalog/view/theme/gordondalos/css/style.css">


    <?php foreach ($styles as $style) { ?>
        <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>"
              media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
    <?php foreach ($links as $link) { ?>
        <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <?php foreach ($scripts as $script) { ?>
        <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
        <?php echo $analytic; ?>
    <?php } ?>
</head>
<body class="<?php echo $class; ?>">

<?php //echo $currency; ?>
<?php //echo $language; ?>
<?php //echo $telephone; ?>
<?php //echo $contact; ?>

<!--акаунт ссылка-->
<?php //echo $account; ?>
<!--Акаунт текст // пишет личный кабинет-->
<?php //echo $text_account; ?>


<nav id="top">
    <div class="container">

        <div id="top-links" class="nav pull-right">
            <ul class="list-inline">
                <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"
                                        class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-user"></i> <span
                            class="hidden-xs hidden-sm hidden-md">
                            <?php echo $text_account; ?></span> <span
                            class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <?php if ($logged) { ?>
                            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                        <?php } else { ?>
                            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                        <?php } ?>
                    </ul>
                </li>
<!--                Лист желаний-->
                <li>
                    <a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>">
                        <i class="fa fa-heart"></i>
                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span>
                    </a>
                </li>
<!--Корзинка-->
                <li>
                    <a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span>
                    </a>
                </li>
                <!--оформление-->
                <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i>
                        <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
            </ul>
        </div>
    </div>
</nav>


<!--
    ========================================================
                            HEADER
    ========================================================
 -->
<header>
    <?php include "catalog/view/theme/gordondalos/template/common/menu.tpl" ?>
    <?php include "catalog/view/theme/gordondalos/template/common/hero.tpl" ?>
</header>

				<?php if($ajaxadvancesearch_status){ ?>
				<!--
				/**
					*Ajax advanced search starts
					*/
				-->
				<script type="text/javascript" language="javascript"><!--
					// Ajax advanced search starts
					$(document).ready(function(){
					var afaxAdvancedSearch = $('#search input[name="search"]');
						var customAutocomplete = null , allRequest = null;
						afaxAdvancedSearch.autocomplete({
							delay: 500,
							responsea : function (items){
								if(typeof this.items=='undefined'){
									this.items = new Array();
								}
								if (items.length) {
									for (i = 0; i < items.length; i++) {
										this.items[items[i]['value']] = items[i];
									}
								}
								var html='';
								if(items.length){
									$.each(items,function(key,item){
										if(item.product_id!=0){
										html += '<li data-value="' + item['value'] + '"><a href="#">';
										html += '<div class="ajaxadvance">';
										html += '<div class="image">';
											if(item.image){
											html += '<img title="'+item.name+'" src="'+item.image+'"/>';
											}
											html += '</div>';
											html += '<div class="content">';
											html += 	'<h4 class="name">'+item.label+'</h4>';
											if(item.model){
											html += 	'<div class="model">';
											html +=		'<?php echo $ajaxadvancedsearch_model; ?> '+ item.model;
											html +=		'</div>';
											}
											if(item.manufacturer){
											html += 	'<div class="manufacturer">';
											html +=		'<?php echo $ajaxadvancedsearch_manufacturer; ?> '+ item.manufacturer;
											html +=		'</div>';
											}
											if(item.price){
											html += 	'<div class="price"> <?php echo $ajaxadvancedsearch_price; ?> ';
												if (!item.special) {
											html +=			 item.price;
												} else {
											html +=			'<span class="price-old">'+ item.price +'</span> <span class="price-new">'+ item.special +'</span>';
												}
											html +=		'</div>';
											}
											if(item.stock_status){
											html += 	'<div class="stock_status">';
											html +=		'<?php echo $ajaxadvancedsearch_stock; ?> '+ item.stock_status;
											html +=		'</div>';
											}
											if(item.quantity){
											html += 	'<div class="quantity">';
											html +=		'<?php echo $ajaxadvancedsearch_quantity; ?> '+ item.quantity;
											html +=		'</div>';
											}
											if (item.rating) {
											html +=		'<div class="ratings"> <?php echo $ajaxadvancedsearch_rating; ?>';
											for (var i = 1; i <= 5; i++) {
											if (item.rating < i) {
												html +=		'<span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>';
											} else {
												html +=		'<span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>';
											}
											}
											html +=		'</div>';
											}
											if(item.allresults){
											html += '<div class="allresults">'+ allRequest.trim()+'</div>';
											}
											html +='</div>';
											html += '</div></a></li>'
										}
									});
								}
								
								if (html) {
									afaxAdvancedSearch.siblings('ul.dropdown-menu').show();
								} else {
									afaxAdvancedSearch.siblings('ul.dropdown-menu').hide();
								}

								$(afaxAdvancedSearch).siblings('ul.dropdown-menu').html(html);
							},
							source: function(request, response) {
							customAutocomplete = this;
							if(request.trim().length >= <?php echo $ajaxadvancesearch_charlimit ?>) {
								allRequest = request;
								$.ajax({
									url: 'index.php?route=common/header/ajaxLiveSearch&filter_name=' +  encodeURIComponent(request.split('')),
									dataType : 'json',
									success : function(json) {
										customAutocomplete.responsea($.map(json, function(item) {
											return {
												label: item.name,
												name: item.name1,
												value: item.product_id,
												model: item.model,
												stock_status: item.stock_status,												
												quantity: item.quantity,
												// seo friendly starts
												url: item.url,
												// seo friendly ends
												image: item.image,
												manufacturer: item.manufacturer,
												price: item.price,
												special: item.special,
												category: item.category,
												rating: item.rating,
												allresults: item.allresults,
												reviews: item.reviews,
											}
										}));
									}
								});
								}
							},
							select : function (ui){
								return false;
							},
							selecta: function(ui) {
								if(ui.value){
									//location = 'index.php?route=product/product/&product_id='+ui.value;
									location = ui.url.replace('&amp;','&');
								}else{
								$('#search input[name=\'search\']').parent().find('button').trigger('click');
								}
								return false;
							},
							focus: function(event, ui) {
								return false;
							}
						});

						afaxAdvancedSearch.siblings('ul.dropdown-menu').delegate('a', 'click', function(){
							value = $(this).parent().attr('data-value');
							if (value && customAutocomplete.items[value]) {
								customAutocomplete.selecta(customAutocomplete.items[value]);
							}else{
								customAutocomplete.selecta(0);
							}
						});
					});
					//Ajax advanced search ends
				//--></script>
				<style>
				#search .dropdown-menu {z-index: 666 !important; background: #fff; width: 100%;}
				#search .dropdown-menu h3, #search .dropdown-menu h4 {color: #444; }
				#search .dropdown-menu li:hover h3, #search .dropdown-menu li:hover h4 {color: #000; }
				#search .dropdown-menu li:nth-child(even){background: #FFFFFF;  border: 1px solid #dbdee1;}
				#search .dropdown-menu li:nth-child(odd){background: #fff;  border: 1px solid #fff;}
				/*<!-- 26-01-2014 starts -->*/
				<?php if($ajaxadvancedsearch_result_view!='default-view') { ?>
					#search .dropdown-menu li:nth-child(even){background: #FFFFFF; border: none; padding:0 10px; }
					#search .dropdown-menu li:nth-child(odd){background: #FFFFFF;  border: none; padding:0 10px; }
					#search .dropdown-menu a { border-bottom: 1px solid #cdcece; border-radius: 0; white-space: normal; }
					#search .dropdown-menu li:last-child a { border-bottom: none; }
				<?php } ?>
				/** result area hover starts */
				<?php if(!empty($ajaxadvancedsearch_color_resulthover)) { ?>
				#search .dropdown-menu > li > a:hover, #search .dropdown-menu li:hover {
					background: #<?php echo $ajaxadvancedsearch_color_resulthover; ?>;
				}
				<?php } ?>
				/** result area hover ends */
				/** result area heading starts */
				<?php if(!empty($ajaxadvancedsearch_color_heading)) { ?>
				/** for heading color */
				#search .dropdown-menu li a h3,
				#search .dropdown-menu li a h4
				{ color: #<?php echo $ajaxadvancedsearch_color_heading; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_headinghover)) { ?>
				/**for heading color on hover*/
				#search .dropdown-menu li a:hover h3,
				#search .dropdown-menu li a:hover h4
				{ color: #<?php echo $ajaxadvancedsearch_color_headinghover; ?>; }
				<?php } ?>
				/** result area heading ends */
				/** result area model starts */
				<?php if(!empty($ajaxadvancedsearch_color_model)) { ?>
				/** for model color */
				#search .dropdown-menu li a .model,
				#search .dropdown-menu li a .model
				{ color: #<?php echo $ajaxadvancedsearch_color_model; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_modelhover)) { ?>
				/**for model color on hover*/
				#search .dropdown-menu li a:hover .model,
				#search .dropdown-menu li a:hover .model
				{ color: #<?php echo $ajaxadvancedsearch_color_modelhover; ?>; }
				<?php } ?>
				/** result area model ends */
				/** result area manufacturer starts */
				<?php if(!empty($ajaxadvancedsearch_color_manufacturer)) { ?>
				/** for manufacturer color */
				#search .dropdown-menu li a .manufacturer,
				#search .dropdown-menu li a .manufacturer
				{ color: #<?php echo $ajaxadvancedsearch_color_manufacturer; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_manufacturerhover)) { ?>
				/**for manufacturer color on hover*/
				#search .dropdown-menu li a:hover .manufacturer,
				#search .dropdown-menu li a:hover .manufacturer
				{ color: #<?php echo $ajaxadvancedsearch_color_manufacturerhover; ?>; }
				<?php } ?>
				/** result area manufacturer ends */
				/** result area price starts */
				<?php if(!empty($ajaxadvancedsearch_color_price)) { ?>
				/** for price color */
				#search .dropdown-menu li a .price,
				#search .dropdown-menu li a .price
				{ color: #<?php echo $ajaxadvancedsearch_color_price; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_pricehover)) { ?>
				/**for price color on hover*/
				#search .dropdown-menu li a:hover .price,
				#search .dropdown-menu li a:hover .price
				{ color: #<?php echo $ajaxadvancedsearch_color_pricehover; ?>; }
				<?php } ?>
				/** result area price ends */
				/** result area stockstatus starts */
				<?php if(!empty($ajaxadvancedsearch_color_stockstatus)) { ?>
				/** for stock_status color */
				#search .dropdown-menu li a .stock_status,
				#search .dropdown-menu li a .stock_status
				{ color: #<?php echo $ajaxadvancedsearch_color_stockstatus; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_stockstatushover)) { ?>
				/**for stock_status color on hover*/
				#search .dropdown-menu li a:hover .stock_status,
				#search .dropdown-menu li a:hover .stock_status
				{ color: #<?php echo $ajaxadvancedsearch_color_stockstatushover; ?>; }
				<?php } ?>
				/** result area stockstatus ends */
				/** result area quantity starts */
				<?php if(!empty($ajaxadvancedsearch_color_quantity)) { ?>
				/** for quantity color */
				#search .dropdown-menu li a .quantity,
				#search .dropdown-menu li a .quantity
				{ color: #<?php echo $ajaxadvancedsearch_color_quantity; ?>; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_quantityhover)) { ?>
				/**for quantity color on hover*/
				#search .dropdown-menu li a:hover .quantity,
				#search .dropdown-menu li a:hover .quantity
				{ color: #<?php echo $ajaxadvancedsearch_color_quantityhover; ?>; }
				<?php } ?>
				/** result area quantity ends */
				/** result area highlight starts */
				<?php if(!empty($ajaxadvancedsearch_color_highlight)) { ?>
				/** for highlight color */
				#search .dropdown-menu li a .highlight,
				#search .dropdown-menu li a .highlight
				{ color: #<?php echo $ajaxadvancedsearch_color_highlight; ?>; }
				<?php }else{ ?>
				#search .ajaxadvance li a .highlight {color: #38b0e3; }
				<?php } ?>
				<?php if(!empty($ajaxadvancedsearch_color_highlighthover)) { ?>
				/**for highlight color on hover*/
				#search .dropdown-menu li a:hover .highlight,
				#search .dropdown-menu li a:hover .highlight
				{ color: #<?php echo $ajaxadvancedsearch_color_highlighthover; ?>; }
				<?php }else{ ?>
				#search .ajaxadvance li a:hover .highlight {color: #38b0e3; }
				<?php } ?>
				/** result area highlight ends */

				/*<!-- 26-01-2014 ends -->*/
				#search .dropdown-menu li, .ui-menu .ui-menu-item { margin-bottom: 10px;}
				#search .dropdown-menu a {border-radius: 0; white-space: normal; }
				#search .ajaxadvance { width: 100%; min-height: <?php echo (int)$ajaxadvancesearch_imageheight+ (int)$ajaxadvancesearch_imageheight*20/100;?>px; }
				#search .ajaxadvance .name { margin:0; }
				#search .ajaxadvance .image { display:inline-flex; float: left; margin-right:10px; width: <?php echo (int)$ajaxadvancesearch_imagewidth;?>px; }
				#search .ajaxadvance .content { display:inline-block;	max-width: 300px;}
				#search .ajaxadvance .content > div { margin-top:5px;	}
				#search .ajaxadvance .price-old {color: #ff0000; text-decoration: line-through; }

				</style>
				<!--
				/**
					*Ajax advanced search ends
					*/
				-->
				<?php } ?>
			