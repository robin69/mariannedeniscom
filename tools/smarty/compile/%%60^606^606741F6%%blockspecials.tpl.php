<?php /* Smarty version 2.6.20, created on 2010-11-02 15:37:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockspecials/blockspecials.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockspecials/blockspecials.tpl', 2, false),)), $this); ?>
<!-- MODULE Block specials -->
<span class="graytitle"><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
prices-drop.php" title="<?php echo smartyTranslate(array('s' => 'Specials','mod' => 'blockspecials'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Specials','mod' => 'blockspecials'), $this);?>
</a></span>
<?php if ($this->_tpl_vars['special']): ?>
<ul class="pageitem">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-list-item.tpl", 'smarty_include_vars' => array('product' => $this->_tpl_vars['special'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
</ul>
<?php else: ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'No specials at this time','mod' => 'blockspecials'), $this);?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
<!-- /MODULE Block specials -->