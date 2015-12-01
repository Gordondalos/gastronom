<?php echo $header; ?>



  <!--
  ========================================================
                           CONTENT
  ========================================================
  -->
  <main>
<!--    --><?php //include"welcome.php"?>


      <div class="row">
        <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
          <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
        <?php echo $column_right; ?></div>



<!--    --><?php //include"category.php"?>
<!--    --><?php //include"gallery.php"?>
<!--    --><?php //include"producer.php"?>
<!--    --><?php //include"paralax.php"?>


    <!--    --><?php //include"main/slider.php"?>




  </main>





<?php echo $footer; ?>