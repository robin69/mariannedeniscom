<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:23
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./product-list.tpl */ ?>
<?php if (isset ( $this->_tpl_vars['products'] ) && $this->_tpl_vars['products']): ?>
<!-- Products list -->
<ul class="pageitem">
	<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['loop']['iteration']++;
?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-list-item.tpl", 'smarty_include_vars' => array('product' => $this->_tpl_vars['product'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endforeach; endif; unset($_from); ?>
</ul>
<!-- /Products list -->
<?php endif; ?>