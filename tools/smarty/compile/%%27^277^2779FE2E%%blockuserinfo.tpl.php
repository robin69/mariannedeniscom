<?php /* Smarty version 2.6.20, created on 2010-11-02 15:37:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockuserinfo/blockuserinfo.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockuserinfo/blockuserinfo.tpl', 5, false),)), $this); ?>
<!-- Block user information module HEADER -->
<ul class="pageitem">
	<li class="menu">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
my-account.php">
			<img alt="<?php echo smartyTranslate(array('s' => 'account','mod' => 'blockuserinfo'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
accessibility.png" />
			<span class="name"><?php echo smartyTranslate(array('s' => 'Access to my account','mod' => 'blockuserinfo'), $this);?>
</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /Block user information module HEADER -->