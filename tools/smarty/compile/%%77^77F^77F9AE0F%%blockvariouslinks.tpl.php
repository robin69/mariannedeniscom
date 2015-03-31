<?php /* Smarty version 2.6.20, created on 2010-11-02 15:37:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockvariouslinks/blockvariouslinks.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockvariouslinks/blockvariouslinks.tpl', 3, false),array('modifier', 'addslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockvariouslinks/blockvariouslinks.tpl', 8, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockvariouslinks/blockvariouslinks.tpl', 8, false),)), $this); ?>
<!-- MODULE Block various links -->
<div id="block_various_links_footer">
	<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
prices-drop.php" title=""><?php echo smartyTranslate(array('s' => 'Specials','mod' => 'blockvariouslinks'), $this);?>
</a>
	/ <a href="<?php echo $this->_tpl_vars['base_dir']; ?>
new-products.php" title=""><?php echo smartyTranslate(array('s' => 'New products','mod' => 'blockvariouslinks'), $this);?>
</a>
	/ <a href="<?php echo $this->_tpl_vars['base_dir']; ?>
best-sales.php" title=""><?php echo smartyTranslate(array('s' => 'Top sellers','mod' => 'blockvariouslinks'), $this);?>
</a>
	/ <a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
contact-form.php" title=""><?php echo smartyTranslate(array('s' => 'Contact us','mod' => 'blockvariouslinks'), $this);?>
</a>
	<?php $_from = $this->_tpl_vars['cmslinks']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cmslink']):
?>
		/ <a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['cmslink']['link'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['cmslink']['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['cmslink']['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a>
	<?php endforeach; endif; unset($_from); ?>
</div>
<hr/>
<!-- /MODULE Block various links -->