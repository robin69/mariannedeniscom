<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:23
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./order-steps.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./order-steps.tpl', 5, false),)), $this); ?>
<!-- Steps -->
<div id="tributton">
	<div class="links">
		<a <?php if ($this->_tpl_vars['current_step'] == 'summary'): ?>id="pressed" href="#"<?php else: ?> href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Summary'), $this);?>
</a><a <?php if ($this->_tpl_vars['current_step'] == 'login' || $this->_tpl_vars['current_step'] == 'shipping' || $this->_tpl_vars['current_step'] == 'address'): ?>id="pressed" href="#"<?php else: ?> href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=1"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Informations'), $this);?>
</a><a <?php if ($this->_tpl_vars['current_step'] == 'payment'): ?>id="pressed"<?php else: ?>  href="javascript:{}"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Payment'), $this);?>
</a>
	</div>
</div>
 <!-- /Steps -->