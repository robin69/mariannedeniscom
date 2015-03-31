<?php /* Smarty version 2.6.20, created on 2013-02-01 20:38:32
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/my-account.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/mailalerts/my-account.tpl', 3, false),)), $this); ?>
<!-- MODULE MailAlerts -->
<li class="menu">
	<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
modules/mailalerts/myalerts.php" title="<?php echo smartyTranslate(array('s' => 'My alerts','mod' => 'mailalerts'), $this);?>
">
		<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
mailalerts.png" alt="<?php echo smartyTranslate(array('s' => 'alerts','mod' => 'mailalerts'), $this);?>
" class="icon" />
		<span class="name"><?php echo smartyTranslate(array('s' => 'My alerts','mod' => 'mailalerts'), $this);?>
</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- END : MODULE MailAlerts -->