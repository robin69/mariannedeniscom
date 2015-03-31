<?php /* Smarty version 2.6.20, created on 2013-02-11 12:42:45
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/sitemap.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/sitemap.tpl', 3, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
	</div>
	<div id="title"><?php echo smartyTranslate(array('s' => 'Sitemap'), $this);?>
</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Information'), $this);?>
</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php"><?php echo smartyTranslate(array('s' => 'Contact'), $this);?>
</a></li>
				<?php $_from = $this->_tpl_vars['cmslinks']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cmslink']):
?>
					<li><a href="<?php echo $this->_tpl_vars['cmslink']['link']; ?>
" title="<?php echo $this->_tpl_vars['cmslink']['meta_title']; ?>
"><?php echo $this->_tpl_vars['cmslink']['meta_title']; ?>
</a></li>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
		</li>
	</ul>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Our offers'), $this);?>
</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
new-products.php"><?php echo smartyTranslate(array('s' => 'New products'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
best-sales.php"><?php echo smartyTranslate(array('s' => 'Top sellers'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
prices-drop.php"><?php echo smartyTranslate(array('s' => 'Specials'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
manufacturer.php"><?php echo smartyTranslate(array('s' => 'Manufacturers'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
supplier.php"><?php echo smartyTranslate(array('s' => 'Suppliers'), $this);?>
</a></li>
			</ul>
		</li>
	</ul>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Your Account'), $this);?>
</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'Your Account'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php"><?php echo smartyTranslate(array('s' => 'Personal information'), $this);?>
</a></li>
				<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
addresses.php"><?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
</a></li>
				<?php if ($this->_tpl_vars['voucherAllowed']): ?><li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
discount.php"><?php echo smartyTranslate(array('s' => 'Discount'), $this);?>
</a></li><?php endif; ?>
				<li><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
history.php"><?php echo smartyTranslate(array('s' => 'Orders history'), $this);?>
</a></li>
			</ul>
		</li>
	</ul>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Categories'), $this);?>
</span>
	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['categoriesTree']['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['child']):
        $this->_foreach['loop']['iteration']++;
?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./category-tree-branch.tpl", 'smarty_include_vars' => array('node' => $this->_tpl_vars['child'],'space' => 0)));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
</div>