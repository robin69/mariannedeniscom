<?php /* Smarty version 2.6.20, created on 2013-02-01 20:38:32
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/loyalty/my-account.tpl', 3, false),)), $this); ?>
<!-- MODULE Loyalty -->
<li class="menu">
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/loyalty/loyalty-program.php" title="<?php echo smartyTranslate(array('s' => 'My loyalty points','mod' => 'loyalty'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
loyalty.png" alt="<?php echo smartyTranslate(array('s' => 'My loyalty points','mod' => 'loyalty'), $this);?>
" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'My loyalty points','mod' => 'loyalty'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /MODULE Loyalty -->