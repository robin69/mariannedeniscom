<?php /* Smarty version 2.6.20, created on 2011-03-19 12:43:48
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/discount.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/discount.tpl', 9, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/discount.tpl', 31, false),array('function', 'dateFormat', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/discount.tpl', 53, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/discount.tpl', 29, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Your vouchers'), $this);?>
</span>

<?php if ($this->_tpl_vars['discount'] && count ( $this->_tpl_vars['discount'] ) && $this->_tpl_vars['nbDiscounts']): ?>
<ul class="pageitem">

	<?php $_from = $this->_tpl_vars['discount']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['discount']):
        $this->_foreach['myLoop']['iteration']++;
?>
	<li class="menu">
		<a href="order.php?discount_name=<?php echo $this->_tpl_vars['discount']['name']; ?>
">
			<span class="name">
				<?php echo $this->_tpl_vars['discount']['name']; ?>
 -
				<?php if ($this->_tpl_vars['discount']['id_discount_type'] == 1): ?>
					<?php echo smartyTranslate(array('s' => 'Value:'), $this);?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['discount']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
%*
				<?php elseif ($this->_tpl_vars['discount']['id_discount_type'] == 2): ?>
					<?php echo smartyTranslate(array('s' => 'Value:'), $this);?>
<?php echo Product::convertPrice(array('price' => $this->_tpl_vars['discount']['value']), $this);?>
*
				<?php else: ?>
					<?php echo smartyTranslate(array('s' => 'Free shipping'), $this);?>

				<?php endif; ?>
			</span>
			<span class="arrow"></span>
		</a>
	</li>
	<li class="textbox">
		<?php echo $this->_tpl_vars['discount']['description']; ?>

		<br/><?php echo smartyTranslate(array('s' => 'Quantity:'), $this);?>
 <?php echo $this->_tpl_vars['discount']['quantity_for_user']; ?>

		<br/><?php echo smartyTranslate(array('s' => 'Minimum:'), $this);?>

			<?php if ($this->_tpl_vars['discount']['minimal'] == 0): ?>
				<?php echo smartyTranslate(array('s' => 'none'), $this);?>

			<?php else: ?>
				<?php echo Product::convertPrice(array('price' => $this->_tpl_vars['discount']['minimal']), $this);?>

			<?php endif; ?>
		<br/>
			<?php if ($this->_tpl_vars['discount']['cumulable'] == 1): ?>
				<?php echo smartyTranslate(array('s' => 'Cumulative'), $this);?>

			<?php else: ?>
				<?php echo smartyTranslate(array('s' => 'No cumulative'), $this);?>

			<?php endif; ?> - <?php echo smartyTranslate(array('s' => 'Expiration date:'), $this);?>
 <?php echo Tools::dateFormat(array('date' => $this->_tpl_vars['discount']['date_to']), $this);?>

	</li>
	<?php endforeach; endif; unset($_from); ?>
	<li class="textbox">
		<span class="header">*<?php echo smartyTranslate(array('s' => 'Tax included'), $this);?>
</span>
	</li>
</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'You do not possess any vouchers.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>

</div>