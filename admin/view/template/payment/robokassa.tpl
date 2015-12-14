<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-robokassa" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-robokassa" class="form-horizontal">
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-login"><?php echo $entry_login; ?></label>
            <div class="col-sm-10">
              <input type="text" name="robokassa_login" value="<?php echo $robokassa_login; ?>" placeholder="<?php echo $entry_login; ?>" id="input-login" class="form-control" />
              <?php if ($error_login) { ?>
                <div class="text-danger"><?php echo $error_login; ?></div>
              <?php } ?>
			</div>
          </div>
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-password1"><?php echo $entry_password1; ?></label>
            <div class="col-sm-10">
              <input type="text" name="robokassa_password1" value="<?php echo $robokassa_password1; ?>" placeholder="<?php echo $entry_password1; ?>" id="input-password1" class="form-control" />
              <?php if ($error_password1) { ?>
                <div class="text-danger"><?php echo $error_password1; ?></div>
              <?php } ?>
			</div>
          </div>
		  <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-password2"><?php echo $entry_password2; ?></label>
            <div class="col-sm-10">
              <input type="text" name="robokassa_password2" value="<?php echo $robokassa_password2; ?>" placeholder="<?php echo $entry_password2; ?>" id="input-password2" class="form-control" />
              <?php if ($error_password2) { ?>
                <div class="text-danger"><?php echo $error_password2; ?></div>
              <?php } ?>
			</div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_result_url; ?></label>
            <div class="col-sm-10">
			  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-link"></i></span>
			    <input type="text" value="<?php echo $robokassa_result_url; ?>" class="form-control" />
			  </div>
			</div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_success_url; ?></label>
            <div class="col-sm-10">
			  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-link"></i></span>
			    <input type="text" value="<?php echo $robokassa_success_url; ?>" class="form-control" />
			  </div>
			</div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label"><?php echo $entry_fail_url; ?></label>
            <div class="col-sm-10">
			  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-link"></i></span>
			    <input type="text" value="<?php echo $robokassa_fail_url; ?>" class="form-control" />
			  </div>
			</div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_test; ?></label>
            <div class="col-sm-10">
              <select name="robokassa_test" id="input-status" class="form-control">
                <?php if ($robokassa_test) { ?>
                <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                <option value="0"><?php echo $text_no; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_yes; ?></option>
                <option value="0" selected="selected"><?php echo $text_no; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_order_status; ?></label>
            <div class="col-sm-10">
              <select name="robokassa_order_status_id" id="input-order-status" class="form-control">
                <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $robokassa_order_status_id) { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-geo-zone"><?php echo $entry_geo_zone; ?></label>
            <div class="col-sm-10">
              <select name="robokassa_geo_zone_id" id="input-geo-zone" class="form-control">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $robokassa_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="robokassa_status" id="input-status" class="form-control">
                <?php if ($robokassa_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="robokassa_sort_order" value="<?php echo $robokassa_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>
		</form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>