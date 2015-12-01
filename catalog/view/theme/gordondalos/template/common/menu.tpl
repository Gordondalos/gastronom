<div id="stuck_container" class="stuck_container">
    <div class="brand primary-color">

        <div class="brand_img bg-primary"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>"></div>
        <h1 class="brand_name"><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
        <p class="brand_slogan"><?php echo $description; ?></p>
    </div>

    <nav class="nav">

        <ul data-type="navbar" class="sf-menu">

            <li><a class="menus" href="<?php echo $home; ?>">Меню</a>
                <ul>

                    <?php foreach ($categories as $category) { ?>
                        <?php if ($category['children']) { ?>
                            <li>
                                <a href="<?php echo $category['href']; ?>" class="dropdown-toggle menus" data-toggle="dropdown">
                                    <?php echo $category['name']; ?>
                                </a>



                                <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                    <ul>
                                        <?php foreach ($children as $child) { ?>
                                            <li>
                                                <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                            </li>
                                        <?php } ?>
                                    </ul>
                                <?php } ?>


                            </li>
                        <?php } else { ?>
                            <li><a class="menus" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                        <?php } ?>
                    <?php } ?>
                </ul>
            </li>

            <?php foreach ($informations as $information) { ?>
                <li><a class="menus" href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a>
                </li>
            <?php } ?>


            <li><?php echo $cart; ?></li>

        </ul>

    </nav>
</div>



