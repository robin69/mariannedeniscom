<?php /* Smarty version 2.6.20, created on 2013-11-04 21:37:13
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/supplier-list.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/supplier-list.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/supplier-list.tpl', 19, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/supplier-list.tpl', 21, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/supplier-list.tpl', 22, false),)), $this); ?>
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

<div id="content">
	<span class="graytitle"><?php if ($this->_tpl_vars['nbSuppliers'] > 1): ?><?php echo smartyTranslate(array('s' => 'There are'), $this);?>
 <span class="bold"><?php echo $this->_tpl_vars['nbSuppliers']; ?>
 <?php echo smartyTranslate(array('s' => 'suppliers.'), $this);?>
</span><?php else: ?><?php echo smartyTranslate(array('s' => 'There is'), $this);?>
 <span class="bold"><?php echo $this->_tpl_vars['nbSuppliers']; ?>
 <?php echo smartyTranslate(array('s' => 'supplier.'), $this);?>
</span><?php endif; ?></span>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php if ($this->_tpl_vars['nbSuppliers'] > 0): ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-sort.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['suppliers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['supplier']):
?>
		<li class="store">
			<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getsupplierLink($this->_tpl_vars['supplier']['id_supplier'],$this->_tpl_vars['supplier']['link_rewrite']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['supplier']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
				<span class="image" style="background-image: url('<?php echo $this->_tpl_vars['img_sup_dir']; ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['supplier']['image'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
-<?php echo $this->_tpl_vars['ips_img_medium']; ?>
.jpg')"></span>
				<span class="name"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['supplier']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 60, '...') : smarty_modifier_truncate($_tmp, 60, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
				<span class="comment"><?php echo ((is_array($_tmp=$this->_tpl_vars['supplier']['nb_products'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
 <?php if ($this->_tpl_vars['supplier']['nb_products'] > 1): ?><?php echo smartyTranslate(array('s' => 'products'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'product'), $this);?>
<?php endif; ?></span>
				<span class="comment"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['supplier']['description'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 60, '...') : smarty_modifier_truncate($_tmp, 60, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./pagination.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No supplier.'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
</div>