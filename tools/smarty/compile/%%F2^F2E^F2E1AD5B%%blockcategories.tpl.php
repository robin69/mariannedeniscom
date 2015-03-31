<?php /* Smarty version 2.6.20, created on 2013-11-09 07:57:12
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockcategories/blockcategories.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockcategories/blockcategories.tpl', 2, false),array('modifier', 'count', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blockcategories/blockcategories.tpl', 4, false),)), $this); ?>
<!-- Block categories module -->
<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Categories','mod' => 'blockcategories'), $this);?>
</span>
<ul class="pageitem">
<?php if (count($this->_tpl_vars['blockCategTree']['children']) > 0): ?>
	<?php $_from = $this->_tpl_vars['blockCategTree']['children']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['loop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['loop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['node']):
        $this->_foreach['loop']['iteration']++;
?>
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./category-tree-branch.tpl", 'smarty_include_vars' => array('node' => $this->_tpl_vars['node'],'space' => 0)));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
</ul>
<!-- /Block categories module -->