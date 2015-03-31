<?php /* Smarty version 2.6.20, created on 2015-03-25 01:18:45
         compiled from /home/www/mariannedenis.com/modules/paybox/hookpayment.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/modules/paybox/hookpayment.tpl', 2, false),)), $this); ?>
<p class="payment_module">
	<a href="<?php if (isset ( $this->_tpl_vars['notcashpbx_link'] ) && $this->_tpl_vars['notcashpbx_link'] != ''): ?><?php echo $this->_tpl_vars['notcashpbx_link']; ?>
<?php else: ?><?php echo $this->_tpl_vars['cashpbx_link']; ?>
<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'Pay with Paybox','mod' => 'paybox'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['base_dir']; ?>
modules/paybox/<?php echo $this->_tpl_vars['pbx_picture']; ?>
.jpg" alt="<?php echo smartyTranslate(array('s' => 'Pay with Paybox','mod' => 'paybox'), $this);?>
" />
		<?php echo $this->_tpl_vars['pbx_text']; ?>

	</a>
</p>