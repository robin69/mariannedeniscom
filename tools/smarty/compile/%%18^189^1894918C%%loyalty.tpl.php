<?php /* Smarty version 2.6.20, created on 2012-12-09 13:29:53
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 9, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 26, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 50, false),array('modifier', 'string_format', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 25, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 29, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/loyalty.tpl', 32, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home','mod' => 'loyalty'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account','mod' => 'loyalty'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
order.php"><?php echo smartyTranslate(array('s' => 'Cart','mod' => 'loyalty'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'My reward points','mod' => 'loyalty'), $this);?>
</span>
<?php if ($this->_tpl_vars['orders']): ?>
	<?php if ($this->_tpl_vars['orders'] && count ( $this->_tpl_vars['orders'] )): ?>
	<ul class="pageitem">
		<?php $_from = $this->_tpl_vars['orders']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['order']):
?>
		<li class="textbox">
			<p>
				<?php echo smartyTranslate(array('s' => 'Order #','mod' => 'loyalty'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['order']['id'])) ? $this->_run_mod_handler('string_format', true, $_tmp, "%06d") : smarty_modifier_string_format($_tmp, "%06d")); ?>

				- <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['order']['date'],'full' => 1), $this);?>

			</p>
			<p>
				<?php echo ((is_array($_tmp=$this->_tpl_vars['order']['points'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
 <?php if ($this->_tpl_vars['order']['points'] > 1): ?><?php echo smartyTranslate(array('s' => 'points','mod' => 'loyalty'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'point','mod' => 'loyalty'), $this);?>
<?php endif; ?>
			</p>
			<span class="header">
				<?php echo smartyTranslate(array('s' => 'Status:','mod' => 'loyalty'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['order']['state'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

			</span>
		</li>
		<?php endforeach; endif; unset($_from); ?>
		<li class="textbox warning">
			<strong><?php echo smartyTranslate(array('s' => 'Total points available:','mod' => 'loyalty'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['totalPoints'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
</strong>
		</li>
	</ul>
	<?php else: ?>
		<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'You have not placed any orders.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['transformation_allowed']): ?>
	<ul class="pageitem">
		<li class="menu">
			<a class="noeffect" href="<?php echo $this->_tpl_vars['base_dir']; ?>
modules/loyalty/loyalty-program.php?transform-points=true" onclick="return confirm('<?php echo smartyTranslate(array('s' => 'Are you sure to want to transform your points into vouchers ?','mod' => 'loyalty','js' => 1), $this);?>
');">
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
voucher.png" alt="" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Earn a voucher of','mod' => 'loyalty'), $this);?>
 <span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['voucher']), $this);?>
</span></span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
	<p style="text-align:center; margin-top:20px">
		
	</p>
	<?php endif; ?>

	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'My vouchers from loyalty points','mod' => 'loyalty'), $this);?>
</span>
	<?php if ($this->_tpl_vars['nbDiscounts']): ?>
		<?php $_from = $this->_tpl_vars['discounts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['discount']):
        $this->_foreach['myLoop']['iteration']++;
?>
		<ul class="pageitem">
			<li class="textbox">
				<?php echo smartyTranslate(array('s' => 'Created on','mod' => 'loyalty'), $this);?>
 <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['discount']->date_add), $this);?>

				<br/><?php echo smartyTranslate(array('s' => 'Valid until','mod' => 'loyalty'), $this);?>
 <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['discount']->date_to), $this);?>

				<br/><?php echo smartyTranslate(array('s' => 'Status:','mod' => 'loyalty'), $this);?>
 <?php if ($this->_tpl_vars['discount']->quantity > 0): ?><?php echo smartyTranslate(array('s' => 'To use','mod' => 'loyalty'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'Used','mod' => 'loyalty'), $this);?>
<?php endif; ?>
			</li>
			<li class="menu">
				<a class="noeffect" href="javascript:$('#discount<?php echo ($this->_foreach['myLoop']['iteration']-1); ?>
').slideToggle()" onclick="return false">
					<span class="name">
						<?php echo $this->_tpl_vars['discount']->name; ?>
 -
						<?php if ($this->_tpl_vars['discount']->id_discount_type == 1): ?>
							<?php echo $this->_tpl_vars['discount']->value; ?>
%
						<?php elseif ($this->_tpl_vars['discount']->id_discount_type == 2): ?>
							<span class="price"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['discount']->value), $this);?>
</span>
						<?php else: ?>
							<?php echo smartyTranslate(array('s' => 'Free shipping','mod' => 'loyalty'), $this);?>

						<?php endif; ?>
					</span>
					<span class="arrow"></span>
				</a>
			</li>
			<li class="textbox" id="discount<?php echo ($this->_foreach['myLoop']['iteration']-1); ?>
" style="display:none">
				<span class="header"><?php echo smartyTranslate(array('s' => 'Generated by these following orders','mod' => 'loyalty'), $this);?>
</span>
				<?php $_from = $this->_tpl_vars['discount']->orders; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['myorder']):
        $this->_foreach['loop']['iteration']++;
?>
					<?php echo smartyTranslate(array('s' => 'Order #','mod' => 'loyalty'), $this);?>
<?php echo $this->_tpl_vars['myorder']['id_order']; ?>

					- <?php echo Product::convertPrice(array('price' => $this->_tpl_vars['myorder']['total_paid']), $this);?>

					- <?php if ($this->_tpl_vars['myorder']['points'] > 0): ?><?php echo $this->_tpl_vars['myorder']['points']; ?>
 <?php echo smartyTranslate(array('s' => 'points','mod' => 'loyalty'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'Cancelled','mod' => 'loyalty'), $this);?>
<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?>
			</li>
		</ul>
		<?php endforeach; endif; unset($_from); ?>
		<script type="text/javascript">
			<?php echo '
			$(document).ready(function()
			{
				$(\'a.tips\').cluetip({
					showTitle: false,
					splitTitle: \'|\',
					arrows: false,
					fx: {
						open: \'fadeIn\',
						openSpeed: \'fast\'
					}
				});
			});
			'; ?>

		</script>
	<?php else: ?>
		<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No vouchers yet.','mod' => 'loyalty'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endif; ?>

<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No reward points yet.','mod' => 'loyalty'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
</div>