<?php /* Smarty version 2.6.20, created on 2010-11-28 13:21:05
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/mailalerts/product.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/mailalerts/product.tpl', 5, false),)), $this); ?>
<!-- MODULE MailAlerts -->
<?php if ($this->_tpl_vars['email']): ?>
	<input type="text" id="oos_customer_email" name="customer_email" size="20" value="your@email.com" class="mailalerts_oos_email" onclick="clearText();" /><br />
<?php endif; ?>
<a href="#" onclick="return addNotification();" id="mailalert_link"><?php echo smartyTranslate(array('s' => 'Notify me when available','mod' => 'mailalerts'), $this);?>
</a>
<p id="oos_customer_email_result" style="display:none;"></p>
<script type="text/javascript"><?php echo '
// <![CDATA[
oosHookJsCodeFunctions.push(\'oosHookJsCodeMailAlert\');

function clearText() {
	if ($(\'#oos_customer_email\').val() == \'your@email.com\')
		$(\'#oos_customer_email\').val(\'\');
}

function oosHookJsCodeMailAlert() {
	$.ajax({
		type: \'POST\',
		url: \''; ?>
<?php echo $this->_tpl_vars['base_dir']; ?>
<?php echo 'modules/mailalerts/mailalerts-ajax_check.php\',
		data: \'id_product='; ?>
<?php echo $this->_tpl_vars['id_product']; ?>
<?php echo '&id_product_attribute=\'+$(\'#idCombination\').val(),
		success: function (msg) {
			if (msg == \'0\') {
				$(\'#mailalert_link\').show();
				$(\'#oos_customer_email\').show();
			}
			else {
				$(\'#mailalert_link\').hide();
				$(\'#oos_customer_email\').hide();
			}
		}
	});
}

function  addNotification() {
	$.ajax({
		type: \'POST\',
		url: \''; ?>
<?php echo $this->_tpl_vars['base_dir']; ?>
<?php echo 'modules/mailalerts/mailalerts-ajax_add.php\',
		data: \'id_product='; ?>
<?php echo $this->_tpl_vars['id_product']; ?>
<?php echo '&id_product_attribute=\'+$(\'#idCombination\').val()+\'&customer_email=\'+$(\'#oos_customer_email\').val()+\'\',
		success: function (msg) {
			if (msg == \'1\') {
				$(\'#mailalert_link\').hide();
				$(\'#oos_customer_email\').hide();
				$(\'#oos_customer_email_result\').html("'; ?>
<?php echo smartyTranslate(array('s' => 'Request notification registered','mod' => 'mailalerts'), $this);?>
<?php echo '");
				$(\'#oos_customer_email_result\').css(\'color\', \'green\').show();
			}
			else {
				$(\'#oos_customer_email_result\').html("'; ?>
<?php echo smartyTranslate(array('s' => 'Your e-mail address is invalid','mod' => 'mailalerts'), $this);?>
<?php echo '");
				$(\'#oos_customer_email_result\').css(\'color\', \'red\').show();
			}
		}
	});
	return false;
}'; ?>

//]]>
</script>
<!-- END : MODULE MailAlerts -->