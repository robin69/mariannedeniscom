<?php /* Smarty version 2.6.20, created on 2014-12-15 21:49:10
         compiled from /home/www/mariannedenis.com/modules/paypal/confirmation.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/modules/paypal/confirmation.tpl', 1, false),)), $this); ?>
<p><?php echo smartyTranslate(array('s' => 'Your order on','mod' => 'paypal'), $this);?>
 <span class="bold"><?php echo $this->_tpl_vars['shop_name']; ?>
</span> <?php echo smartyTranslate(array('s' => 'is complete.','mod' => 'paypal'), $this);?>

	<br /><br />
	<?php echo smartyTranslate(array('s' => 'You have chosen the PayPal method.','mod' => 'paypal'), $this);?>

	<br /><br /><span class="bold"><?php echo smartyTranslate(array('s' => 'Your order will be sent very soon.','mod' => 'paypal'), $this);?>
</span>
	<br /><br /><?php echo smartyTranslate(array('s' => 'For any questions or for further information, please contact our','mod' => 'paypal'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'paypal'), $this);?>
</a>.
</p>