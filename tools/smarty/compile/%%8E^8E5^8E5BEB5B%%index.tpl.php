<?php /* Smarty version 2.6.20, created on 2013-11-09 07:57:12
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/index.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/index.tpl', 4, false),)), $this); ?>
<?php if ($_GET['config']): ?>
	<div id="topbar">
		<div id="leftnav">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		</div>
		<div id="title">
			<?php echo smartyTranslate(array('s' => 'Config'), $this);?>

		</div>
		<div id="rightbutton">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
		</div>
	</div>
	<div id="content">
		<!-- span class="graytitle"><?php echo smartyTranslate(array('s' => 'Configure your navigation'), $this);?>
</span -->
		<?php echo $this->_tpl_vars['HOOK_TOP']; ?>

	</div>

<?php elseif ($_GET['browse']): ?>
	
<?php else: ?>
	<div id="topbar">
		<div id="title">
			<?php echo smartyTranslate(array('s' => 'Home'), $this);?>

		</div>
		<div id="leftbutton">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?config=1" class="noeffect"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
		</div>
		<div id="rightbutton">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php"><?php echo smartyTranslate(array('s' => 'Search'), $this);?>
</a>
		</div>
	</div>
	<div id="content">
		<?php echo $this->_tpl_vars['HOOK_HOME']; ?>

	</div>
<?php endif; ?>