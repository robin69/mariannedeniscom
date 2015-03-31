<?php /* Smarty version 2.6.20, created on 2013-11-09 07:52:04
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/iprestashop/iprestashop-browse.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/iprestashop/iprestashop-browse.tpl', 5, false),)), $this); ?>
<!-- MODULE iPrestaShop : browse template -->
<ul class="pageitem">
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1">
			<img alt="<?php echo smartyTranslate(array('s' => 'browse','mod' => 'iprestashop'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
start.png" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Browse our catalog','mod' => 'iprestashop'), $this);?>
</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /MODULE iPrestaShop : browse template -->