<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:35
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blocksearch/blocksearch-top.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blocksearch/blocksearch-top.tpl', 5, false),)), $this); ?>
<!-- Block search module TOP -->
<ul class="pageitem">
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php">
			<img alt="<?php echo smartyTranslate(array('s' => 'search','mod' => 'blocksearch'), $this);?>
" src="<?php echo $this->_tpl_vars['img_dir']; ?>
search.png" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Search in catalog','mod' => 'blocksearch'), $this);?>
</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /Block search module TOP -->