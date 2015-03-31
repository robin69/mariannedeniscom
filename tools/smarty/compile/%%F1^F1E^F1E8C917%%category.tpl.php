<?php /* Smarty version 2.6.20, created on 2013-03-04 20:36:23
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/category.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/category.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/category.tpl', 14, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/category.tpl', 15, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" class="noeffect"><?php echo smartyTranslate(array('s' => 'Cart'), $this);?>
</a>
	</div>
</div>

<?php if ($this->_tpl_vars['category']->id && $this->_tpl_vars['category']->active): ?>
<div id="content">
	<span class="graytitle">
		<?php echo ((is_array($_tmp=$this->_tpl_vars['category']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

		- <?php echo ((is_array($_tmp=$this->_tpl_vars['nb_products'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
 <?php if ($this->_tpl_vars['nb_products'] > 1): ?><?php echo smartyTranslate(array('s' => 'products'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'product'), $this);?>
<?php endif; ?>
	</span>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

			<!-- Category image -->
		<?php if ($this->_tpl_vars['category']->id_image): ?>
		<div class="align_center">
			<img src="<?php echo $this->_tpl_vars['link']->getCatImageLink($this->_tpl_vars['category']->link_rewrite,$this->_tpl_vars['category']->id_image,$this->_tpl_vars['ips_img_category']); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['category']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" id="categoryImage" />
		</div>
		<?php endif; ?>
	
	<?php if ($this->_tpl_vars['category']->description): ?>
	<ul class="pageitem">
		<li class="textbox">
			<p><?php echo $this->_tpl_vars['category']->description; ?>
</p>
		</li>
	</ul>
	<?php endif; ?>

	<?php if (isset ( $this->_tpl_vars['subcategories'] )): ?>
	<!-- Subcategories -->
	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['subcategories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['subcategory']):
        $this->_foreach['loop']['iteration']++;
?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./subcategory-tree-branch.tpl", 'smarty_include_vars' => array('node' => $this->_tpl_vars['subcategory'],'space' => 0)));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['products']): ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-sort.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-list.tpl", 'smarty_include_vars' => array('products' => $this->_tpl_vars['products'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./pagination.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php elseif (! isset ( $this->_tpl_vars['subcategories'] )): ?>
		<ul class="pageitem"><li class="textbox"><?php echo smartyTranslate(array('s' => 'There is no product in this category.'), $this);?>
</p></li></ul>
	<?php endif; ?>
<?php else: ?>
	<ul class="pageitem warning">
		<li class="textbox">
			<span class="header"><?php echo smartyTranslate(array('s' => 'This category is currently unavailable.'), $this);?>
</span>
		</li>
	</ul>
<?php endif; ?>
</div>