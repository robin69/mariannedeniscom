<?php /* Smarty version 2.6.20, created on 2011-06-15 23:11:30
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/addresses.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/addresses.tpl', 9, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/addresses.tpl', 40, false),)), $this); ?>
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
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'My addresses'), $this);?>
</span>

<?php if ($this->_tpl_vars['addresses']): ?>
	<ul class="pageitem">
		<li class="textbox">
			<?php echo smartyTranslate(array('s' => 'Configure your billing and delivery addresses that will be preselected by default when you make an order. You can also add additional addresses, which can be useful for sending gifts or receiving your order at the office.'), $this);?>

		</li>
	</ul>

	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['addresses']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['address']):
        $this->_foreach['myLoop']['iteration']++;
?>
		<li class="textbox" id="address_delivery">
			<span class="header"><?php echo $this->_tpl_vars['address']['alias']; ?>
</span>
			<ul class="address">
				<?php if ($this->_tpl_vars['address']['company']): ?><li class="address_company"><?php echo $this->_tpl_vars['address']['company']; ?>
</li><?php endif; ?>
				<li class="address_name"><?php echo $this->_tpl_vars['address']['firstname']; ?>
 <?php echo $this->_tpl_vars['address']['lastname']; ?>
</li>
				<li class="address_address1"><?php echo $this->_tpl_vars['address']['address1']; ?>
</li>
				<?php if ($this->_tpl_vars['address']['address2']): ?><li class="address_address2"><?php echo $this->_tpl_vars['address']['address2']; ?>
</li><?php endif; ?>
				<li class="address_city"><?php echo $this->_tpl_vars['address']['postcode']; ?>
 <?php echo $this->_tpl_vars['address']['city']; ?>
</li>
				<li class="address_country"><?php echo $this->_tpl_vars['address']['country']; ?>
<?php if (isset ( $this->_tpl_vars['address']['state'] )): ?> (<?php echo $this->_tpl_vars['address']['state']; ?>
)<?php endif; ?></li>
				<?php if ($this->_tpl_vars['address']['phone']): ?><li class="address_phone"><?php echo $this->_tpl_vars['address']['phone']; ?>
</li><?php endif; ?>
				<?php if ($this->_tpl_vars['address']['phone_mobile']): ?><li class="address_phone_mobile"><?php echo $this->_tpl_vars['address']['phone_mobile']; ?>
</li><?php endif; ?>
				<li class="address_update"><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php?id_address=<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" title="<?php echo smartyTranslate(array('s' => 'Update'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Update'), $this);?>
</a></li>
				<li class="address_delete"><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php?id_address=<?php echo ((is_array($_tmp=$this->_tpl_vars['address']['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;delete" onclick="return confirm('<?php echo smartyTranslate(array('s' => 'Are you sure?'), $this);?>
');" title="<?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Delete'), $this);?>
</a></li>
			</ul>
		</li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>

<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No addresses available.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>

	<ul class="pageitem">
		<li class="menu">
			<a title="<?php echo smartyTranslate(array('s' => 'Add'), $this);?>
" href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php">
				<img alt="add address" src="<?php echo $this->_tpl_vars['img_dir']; ?>
address_add.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Add an address'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

</div>