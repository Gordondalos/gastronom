<section class="well bg-secondary6 bg-secondary6_mod1">
    <div class="container center">
        <h3 class="secondary4-color"><?php echo $heading_title; ?></h3>

        <div class="row">
            <?php foreach ($products as $product) { ?>
                <div class="col-lg-3 col-md-4 col-xs-6 col-sm-6">
                    <a href="#" class="link_wr">

                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"
                             title="<?php echo $product['name']; ?>"/>

                        <span class="overlay"></span>

                        <div class="content_wr">

                            <?php if ($product['price']) { ?>
                                <p class="price">
                                    <?php if (!$product['special']) { ?>
                                        <?php echo $product['price']; ?>
                                    <?php } else { ?>
                                        <span class="price-new"><?php echo $product['special']; ?></span> <span
                                            class="price-old"><?php echo $product['price']; ?></span>
                                    <?php } ?>
                                    <?php if ($product['tax']) { ?>
                                        <span class="price-tax">
                                            <?php echo $text_tax; ?>
                                            <?php echo $product['tax']; ?>
                                        </span>
                                    <?php } ?>
                                </p>
                            <?php } ?>

                            <h6>
<!--                                <a href="--><?php //echo $product['href']; ?><!--">-->
                                    <?php echo $product['name']; ?>
<!--                                </a>-->
                            </h6>

                            <p><?php echo $product['description']; ?></p>

                            <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                        <?php if ($product['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i
                                                    class="fa fa-star-o fa-stack-2x"></i></span>
                                        <?php } ?>
                                    <?php } ?>
                                </div>
                            <?php } ?>

                            <div class="button-group">
                                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i
                                        class="fa fa-shopping-cart"></i> <span
                                        class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span>
                                </button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>"
                                        onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i
                                        class="fa fa-heart"></i></button>

                            </div>

                        </div>
                    </a>
                </div>

            <?php } ?>
        </div>
    </div>

</section>
