<?php /* Smarty version 2.6.20, created on 2013-09-04 00:11:48
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/bankwire/payment_return.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/bankwire/payment_return.tpl', 4, false),)), $this); ?>
<?php if ($this->_tpl_vars['status'] == 'ok'): ?>
	<ul class="pageitem">
		<li class="textbox">
			<span class="header"><?php echo smartyTranslate(array('s' => 'Your order on','mod' => 'bankwire'), $this);?>
 <strong><?php echo $this->_tpl_vars['shop_name']; ?>
</strong> <?php echo smartyTranslate(array('s' => 'is complete.','mod' => 'bankwire'), $this);?>
</span>
		</li>
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Please send us a bank wire with:','mod' => 'bankwire'), $this);?>

			<ul>
				<li><?php echo smartyTranslate(array('s' => 'an amount of','mod' => 'bankwire'), $this);?>
 <span class="price"><?php echo $this->_tpl_vars['total_to_pay']; ?>
</span></li>
				<li><?php echo smartyTranslate(array('s' => 'to the account owner of','mod' => 'bankwire'), $this);?>
 <strong><?php if ($this->_tpl_vars['bankwireOwner']): ?><?php echo $this->_tpl_vars['bankwireOwner']; ?>
<?php else: ?>___________<?php endif; ?></strong></li>
				<li><?php echo smartyTranslate(array('s' => 'with theses details','mod' => 'bankwire'), $this);?>
 <strong><?php if ($this->_tpl_vars['bankwireDetails']): ?><?php echo $this->_tpl_vars['bankwireDetails']; ?>
<?php else: ?>___________<?php endif; ?></strong></li>
				<li><?php echo smartyTranslate(array('s' => 'to this bank','mod' => 'bankwire'), $this);?>
 <strong><?php if ($this->_tpl_vars['bankwireAddress']): ?><?php echo $this->_tpl_vars['bankwireAddress']; ?>
<?php else: ?>___________<?php endif; ?></strong></li>
				<li><?php echo smartyTranslate(array('s' => 'Do not forget to insert your order #','mod' => 'bankwire'), $this);?>
 <strong><?php echo $this->_tpl_vars['id_order']; ?>
</strong> <?php echo smartyTranslate(array('s' => 'in the subjet of your bank wire','mod' => 'bankwire'), $this);?>
</li>
			</ul>
		</li>
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'An e-mail has been sent to you with this information.','mod' => 'bankwire'), $this);?>

			<br /><strong><?php echo smartyTranslate(array('s' => 'Your order will be sent as soon as we receive your settlement.','mod' => 'bankwire'), $this);?>
</strong>
			<br /><?php echo smartyTranslate(array('s' => 'For any questions or for further information, please contact our','mod' => 'bankwire'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'bankwire'), $this);?>
</a>.
		</li>
	</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'We noticed a problem with your order. If you think this is an error, you can contact our','mod' => 'bankwire'), $this);?>
 <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'customer support','mod' => 'cheque'), $this);?>
</a>.<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>