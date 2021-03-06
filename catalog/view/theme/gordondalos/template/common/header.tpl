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
    <?php include "menu.tpl" ?>
    <?php include "hero.tpl" ?>
</header>