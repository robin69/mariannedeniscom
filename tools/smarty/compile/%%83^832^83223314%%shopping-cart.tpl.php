<?php /* Smarty version 2.6.20, created on 2013-02-11 00:00:45
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/shopping-cart.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/shopping-cart.tpl', 5, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/shopping-cart.tpl', 5, false),)), $this); ?>
<!-- MODULE Loyalty -->
<ul class="pageitem" id="loyalty">
	<li class="textbox align_justify">
	<?php if ($this->_tpl_vars['points'] > 0): ?>
		<?php echo smartyTranslate(array('s' => 'By check out this shopping cart you can collect','mod' => 'loyalty'), $this);?>
 <?php echo $this->_tpl_vars['points']; ?>
 <?php echo smartyTranslate(array('s' => 'loyalty points as a voucher of','mod' => 'loyalty'), $this);?>
 <?php echo Product::convertPrice(array('price' => $this->_tpl_vars['voucher']), $this);?>
.
	<?php else: ?>
		<?php echo smartyTranslate(array('s' => 'Add some products to your shopping cart to collect some loyalty points.','mod' => 'loyalty'), $this);?>

	<?php endif; ?>
	</li>
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['module_dir']; ?>
loyalty-program.php" title="<?php echo smartyTranslate(array('s' => 'Loyalty program','mod' => 'loyalty'), $this);?>
">
			<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
loyalty.png" alt="<?php echo smartyTranslate(array('s' => 'Loyalty program','mod' => 'loyalty'), $this);?>
" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Your reward points.','mod' => 'loyalty'), $this);?>
</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /MODULE Loyalty -->