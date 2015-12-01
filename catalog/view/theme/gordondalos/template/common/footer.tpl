<div class="container well">
    <div class="row">
        <div class="col-md-3 col-xs-6 col-sm-6">
            <h4 class="primary-color">Get in touch</h4>
            <address class="secondary5-color">8901 Marmora Road <br/>Glasgow, DO4 89GR.</address>
            <ul class="contact-list">
                <li>
                    <dl>
                        <dt>Freephone:</dt>
                        <dd><a href="callto:x">+1 800 559 6580</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>Telephone:</dt>
                        <dd><a href="callto:x">+1 959 603 6035</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>FAX:</dt>
                        <dd class="mod1"><a href="callto:x">+ 1 504 889 9898</a></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>E-mail:</dt>
                        <dd><a href="mailto:x">mail@demolink.org</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="col-md-2 col-xs-6 col-sm-6">
            <h4 class="primary-color">Menu</h4>
            <ul class="nav-list">
                <li><a href="./">Home</a></li>
                <li><a href="index-1.html">About us</a></li>
                <li><a href="index-2.html">How to order</a></li>
                <li><a href="index-3.html">FAQ</a></li>
                <li><a href="index-4.html">Jobs</a></li>
                <li><a href="index-5.html">Contacts</a></li>
            </ul>
        </div>
        <div class="col-md-3 col-xs-6 col-sm-6">
            <h4 class="primary-color">Follow us</h4>
            <ul class="inline-list">
                <li><a href="#" class="fa fa-google-plus"></a></li>
                <li><a href="#" class="fa fa-twitter"></a></li>
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-pinterest"></a></li>
                <li><a href="#" class="fa fa-linkedin"></a></li>
            </ul>
        </div>
        <div class="col-md-offset-1 col-md-3 col-xs-6 col-sm-6">
            <h4 class="primary-color">Join our newsletter</h4>

            <p>And always stay informed of the latest company news and events!</p><a href="#" class="btn">Sign
                up</a>
        </div>
    </div>
</div>


<footer>


    <!--  Их кусок футера-->

    <div class="container">
        <div class="row">
            <?php if ($informations) { ?>
                <div class="col-sm-3">
                    <h5><?php echo $text_information; ?></h5>
                    <ul class="list-unstyled">
                        <?php foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            <?php } ?>
            <div class="col-sm-3">
                <h5><?php echo $text_service; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                    <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_extra; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
                    <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                    <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
                    <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                </ul>
            </div>
            <div class="col-sm-3">
                <h5><?php echo $text_account; ?></h5>
                <ul class="list-unstyled">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                </ul>
            </div>
        </div>
        <hr>
        <p><?php echo $powered; ?></p>
    </div>
</footer>

<div class="map">
    <div id="google-map" class="map_model"></div>
    <ul class="map_locations">
        <li data-x="-73.9874068" data-y="40.643180">
            <p>9870 St Vincent Place, Glasgow, DC 45 Fr 45. <span>800 2345-6789</span></p>
        </li>
    </ul>
</div>

<?php include "js.tpl" ?>

</body>
</html>