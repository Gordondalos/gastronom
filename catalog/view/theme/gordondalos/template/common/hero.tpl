
<?php if($class == "common-home" ){?>
<section class="header-bg">
    <div class="container">
        <div class="row">
            <div class="col-xs-offset-2 col-xs-8">
                <h3> <?php echo $keywords; ?></h3>
                <br>
                <?php echo $search; ?>

            </div>
        </div>
    </div>
</section>
<?php }else{ ?>
    <section class="header-bg" style="padding: 50px" >
        <div class="container">
            <div class="row">
                <div class="col-xs-offset-2 col-xs-8">

                    <?php echo $search; ?>

                </div>
            </div>
        </div>
    </section>

<?php } ?>