<?php /* Smarty version 2.6.20, created on 2010-11-28 13:21:10
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/loyalty/shopping-cart.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/loyalty/shopping-cart.tpl', 3, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/loyalty/shopping-cart.tpl', 3, false),)), $this); ?>
<!-- MODULE Loyalty -->
<p id="loyalty">
	<img src="<?php echo $this->_tpl_vars['module_template_dir']; ?>
loyalty.gif" alt="<?php echo smartyTranslate(array('s' => 'loyalty','mod' => 'loyalty'), $this);?>
" class="icon" /><?php if ($this->_tpl_vars['points'] > 0): ?><?php echo smartyTranslate(array('s' => 'By check out this shopping cart you can collect up to','mod' => 'loyalty'), $this);?>
 <b><?php echo $this->_tpl_vars['points']; ?>
 <?php if ($this->_tpl_vars['points'] > 1): ?><?php echo smartyTranslate(array('s' => 'loyalty points','mod' => 'loyalty'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'loyalty point','mod' => 'loyalty'), $this);?>
<?php endif; ?></b> <?php echo smartyTranslate(array('s' => 'that can be converted into a voucher of','mod' => 'loyalty'), $this);?>
 <?php echo Product::convertPrice(array('price' => $this->_tpl_vars['voucher']), $this);?>
.<?php else: ?><?php echo smartyTranslate(array('s' => 'Add some products to your shopping cart to collect some loyalty points.','mod' => 'loyalty'), $this);?>
<?php endif; ?>
</p>
<!-- END : MODULE Loyalty -->