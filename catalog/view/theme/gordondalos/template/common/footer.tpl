<!--<div class="container well">-->
<!--    <div class="row">-->
<!--        <div class="col-md-3 col-xs-6 col-sm-6">-->
<!--            <h4 class="primary-color">Get in touch</h4>-->
<!--            <address class="secondary5-color">8901 Marmora Road <br/>Glasgow, DO4 89GR.</address>-->
<!--            <ul class="contact-list">-->
<!--                <li>-->
<!--                    <dl>-->
<!--                        <dt>Freephone:</dt>-->
<!--                        <dd><a href="callto:x">+1 800 559 6580</a></dd>-->
<!--                    </dl>-->
<!--                </li>-->
<!--                <li>-->
<!--                    <dl>-->
<!--                        <dt>Telephone:</dt>-->
<!--                        <dd><a href="callto:x">+1 959 603 6035</a></dd>-->
<!--                    </dl>-->
<!--                </li>-->
<!--                <li>-->
<!--                    <dl>-->
<!--                        <dt>FAX:</dt>-->
<!--                        <dd class="mod1"><a href="callto:x">+ 1 504 889 9898</a></dd>-->
<!--                    </dl>-->
<!--                </li>-->
<!--                <li>-->
<!--                    <dl>-->
<!--                        <dt>E-mail:</dt>-->
<!--                        <dd><a href="mailto:x">mail@demolink.org</a></dd>-->
<!--                    </dl>-->
<!--                </li>-->
<!--            </ul>-->
<!--        </div>-->
<!--        <div class="col-md-2 col-xs-6 col-sm-6">-->
<!--            <h4 class="primary-color">Menu</h4>-->
<!--            <ul class="nav-list">-->
<!--                <li><a href="./">Home</a></li>-->
<!--                <li><a href="index-1.html">About us</a></li>-->
<!--                <li><a href="index-2.html">How to order</a></li>-->
<!--                <li><a href="index-3.html">FAQ</a></li>-->
<!--                <li><a href="index-4.html">Jobs</a></li>-->
<!--                <li><a href="index-5.html">Contacts</a></li>-->
<!--            </ul>-->
<!--        </div>-->
<!--        <div class="col-md-3 col-xs-6 col-sm-6">-->
<!--            <h4 class="primary-color">Follow us</h4>-->
<!--            <ul class="inline-list">-->
<!--                <li><a href="#" class="fa fa-google-plus"></a></li>-->
<!--                <li><a href="#" class="fa fa-twitter"></a></li>-->
<!--                <li><a href="#" class="fa fa-facebook"></a></li>-->
<!--                <li><a href="#" class="fa fa-pinterest"></a></li>-->
<!--                <li><a href="#" class="fa fa-linkedin"></a></li>-->
<!--            </ul>-->
<!--        </div>-->
<!--        <div class="col-md-offset-1 col-md-3 col-xs-6 col-sm-6">-->
<!--            <h4 class="primary-color">Join our newsletter</h4>-->
<!---->
<!--            <p>And always stay informed of the latest company news and events!</p><a href="#" class="btn">Sign-->
<!--                up</a>-->
<!--        </div>-->
<!--    </div>-->
<!--</div>-->


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


        <div class="col-sm-4"><p>
                <script type="text/javascript">(function() {
                        if (window.pluso)if (typeof window.pluso.start == "function") return;
                        if (window.ifpluso==undefined) { window.ifpluso = 1;
                            var d = document, s = d.createElement('script'), g = 'getElementsByTagName';
                            s.type = 'text/javascript'; s.charset='UTF-8'; s.async = true;
                            s.src = ('https:' == window.location.protocol ? 'https' : 'http')  + '://share.pluso.ru/pluso-like.js';
                            var h=d[g]('body')[0];
                            h.appendChild(s);
                        }})();</script>
            <div class="pluso" data-background="transparent" data-options="small,square,line,horizontal,nocounter,theme=05" data-services="vkontakte,odnoklassniki,facebook,twitter,google,moimir"></div>
            </p></div>
        <div class="col-sm-4">
            <i class="fa fa-phone-square"></i> <?php echo $telephone." , "; ?>
            <i class="fa fa-envelope"></i> <?php echo $email; ?>

        </div>
        <div class="col-sm-4">
            <i class="fa fa-map-marker"></i> <?php echo $address; ?>
        </div>



    </div>
</footer>

<div class="map">


        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d255984.9973151099!2d30.04488610890621!3d59.91749254400413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4696378cc74a65ed%3A0x6dc7673fab848eff!2z0KHQsNC90LrRgi3Qn9C10YLQtdGA0LHRg9GA0LM!5e0!3m2!1sru!2sru!4v1448981123194" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

</div>

<?php include "js.tpl" ?>

</body>
</html>