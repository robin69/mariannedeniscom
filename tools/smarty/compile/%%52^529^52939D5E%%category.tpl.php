<?php /* Smarty version 2.6.20, created on 2013-03-05 10:38:11
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/category.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/category.tpl', 6, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/category.tpl', 27, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?> 
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if ($this->_tpl_vars['category']->id && $this->_tpl_vars['category']->active): ?>
	<h2 class="category_title"><?php echo ''; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['category']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?><?php echo ' '; ?><?php if ($this->_tpl_vars['nb_products'] == 0): ?><?php echo ''; ?><?php else: ?><?php echo '('; ?><?php echo $this->_tpl_vars['nb_products']; ?><?php echo ')'; ?><?php endif; ?><?php echo ''; ?>

	</h2>

	<?php if ($this->_tpl_vars['scenes']): ?>
		<!-- Scenes -->
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./scenes.tpl", 'smarty_include_vars' => array('scenes' => $this->_tpl_vars['scenes'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php else: ?>
		<!-- Category image -->
		<?php if ($this->_tpl_vars['category']->id_image): ?>
			<img src="<?php echo $this->_tpl_vars['link']->getCatImageLink($this->_tpl_vars['category']->link_rewrite,$this->_tpl_vars['category']->id_image,'category'); ?>
" width="203" height="203" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['category']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['category']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" id="categoryImage" style="display:none;" />
		<?php endif; ?>
	<?php endif; ?>

	<?php if ($this->_tpl_vars['category']->description): ?>
		<div class="cat_desc"><?php echo $this->_tpl_vars['category']->description; ?>
</div>
	<?php endif; ?>
	
	<?php if (isset ( $this->_tpl_vars['subcategories'] )): ?>
	<!-- Subcategories -->
	<div id="subcategories">
		<h3 style="display:none;"><?php echo smartyTranslate(array('s' => 'Subcategories'), $this);?>
</h3>
		<ul>
		<?php $_from = $this->_tpl_vars['subcategories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['subcategory']):
?>
			<li>
				<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getCategoryLink($this->_tpl_vars['subcategory']['id_category'],$this->_tpl_vars['subcategory']['link_rewrite']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
					
					<div class="cat-overview-item-img">
						<?php if ($this->_tpl_vars['subcategory']['id_image']): ?>
							<img src="<?php echo $this->_tpl_vars['link']->getCatImageLink($this->_tpl_vars['subcategory']['link_rewrite'],$this->_tpl_vars['subcategory']['id_image'],'category'); ?>
" alt="" />
						<?php else: ?>
							<img src="<?php echo $this->_tpl_vars['img_cat_dir']; ?>
default-medium.jpg" alt="" />
						<?php endif; ?>
					</div>
					
					<div class="cat-overview-item">
						<h3><?php echo ((is_array($_tmp=$this->_tpl_vars['subcategory']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</h3>
						<p><?php echo ((is_array($_tmp=$this->_tpl_vars['subcategory']['description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</p>
						<span>D&eacute;tails [+]</span>
					</div>
					
				</a>
			</li>
		<?php endforeach; endif; unset($_from); ?>
		</ul>
		<br class="clear"/>
	</div>
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
			<p class="warning"><?php echo smartyTranslate(array('s' => 'There are no products in this category.'), $this);?>
</p>
		<?php endif; ?>
		
<?php elseif ($this->_tpl_vars['category']->id): ?>
	<p class="warning"><?php echo smartyTranslate(array('s' => 'This category is currently unavailable.'), $this);?>
</p>
<?php endif; ?>