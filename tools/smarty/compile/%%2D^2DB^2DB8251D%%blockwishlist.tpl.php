<?php /* Smarty version 2.6.20, created on 2013-11-09 07:57:12
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist.tpl', 3, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist.tpl', 12, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist.tpl', 12, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockwishlist/blockwishlist.tpl', 27, false),)), $this); ?>
<!-- Module Block Wishlist -->
<span class="graytitle">
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
/modules/blockwishlist/mywishlist.php"><?php echo smartyTranslate(array('s' => 'My wishlist','mod' => 'blockwishlist'), $this);?>
</a>
</span>
<?php if ($this->_tpl_vars['wishlists']): ?>
<form>
	<fieldset>
		<ul class="pageitem">
			<li class="select">
				<select name="wishlists" id="wishlists" onchange="WishlistChangeDefault('wishlist_block_list', $('#wishlists').val());">
				<?php $_from = $this->_tpl_vars['wishlists']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['wishlist']):
        $this->_foreach['i']['iteration']++;
?>
					<option value="<?php echo $this->_tpl_vars['wishlist']['id_wishlist']; ?>
"<?php if ($this->_tpl_vars['id_wishlist'] == $this->_tpl_vars['wishlist']['id_wishlist'] || ( $this->_tpl_vars['id_wishlist'] == false && ($this->_foreach['i']['iteration'] <= 1) )): ?> selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['wishlist']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 22, '...') : smarty_modifier_truncate($_tmp, 22, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
				<?php endforeach; endif; unset($_from); ?>
				</select>
				<span class="arrow"></span>
			</li>
		</ul>
	</fieldset>
</form>
<?php endif; ?>
<?php if ($this->_tpl_vars['products']): ?>
<ul id="wishlist_block_list" class="pageitem">
	<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['i']['iteration']++;
?>
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['link']->getProductLink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category_rewrite']); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
">
			<span class="name">
				<span class="quantity-formated"><span class="quantity"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['quantity'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
</span>x</span>
				<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 35, '...') : smarty_modifier_truncate($_tmp, 35, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

			</span>
			<!-- span class="comment">
				<a class="ajax_cart_block_remove_link" href="javascript:WishlistCart('wishlist_block_list', 'delete', '<?php echo $this->_tpl_vars['product']['id_product']; ?>
', <?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
, '0', '<?php echo $this->_tpl_vars['token']; ?>
');" title="<?php echo smartyTranslate(array('s' => 'remove this product from my wishlist','mod' => 'blockwishlist'), $this);?>
">
					<?php echo smartyTranslate(array('s' => 'Delete','mod' => 'blockwishlist'), $this);?>

				</a>
			</span -->
			<?php if (isset ( $this->_tpl_vars['product']['attributes_small'] )): ?>
			<span class="comment">
				<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

			</span>
			<?php endif; ?>
			<span class="arrow"></span>
		</a>
	</li>
	<?php endforeach; endif; unset($_from); ?>
</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No products','mod' => 'blockwishlist'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
<!-- /Module Block Wishlist -->