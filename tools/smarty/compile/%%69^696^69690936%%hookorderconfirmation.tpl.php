<?php /* Smarty version 2.6.20, created on 2015-02-09 14:10:34
         compiled from /home/www/mariannedenis.com/modules/paybox/hookorderconfirmation.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/modules/paybox/hookorderconfirmation.tpl', 2, false),)), $this); ?>
<?php if ($this->_tpl_vars['status'] == 'ok'): ?>
	<p><?php echo smartyTranslate(array('s' => 'Your order on','mod' => 'paybox'), $this);?>
 <span class="bold"><?php echo $this->_tpl_vars['shop_name']; ?>
</span> <?php echo smartyTranslate(array('s' => 'is complete.','mod' => 'paybox'), $this);?>

		<br /><br /><span class="bold"><?php echo smartyTranslate(array('s' => 'Your order will be sent as soon as possible.','mod' => 'paybox'), $this);?>
</span>
		<br /><br /><?php echo smartyTranslate(array('s' => 'For any questions or for further information, please contact our','mod' => 'paybox'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'paybox'), $this);?>
</a>.
	</p>
<?php else: ?>
	<p class="warning">
		<?php echo smartyTranslate(array('s' => 'We noticed a problem with your order. If you think this is an error, you can contact our','mod' => 'paybox'), $this);?>
 
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'paybox'), $this);?>
</a>.
	</p>
<?php endif; ?>