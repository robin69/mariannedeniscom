<?php /* Smarty version 2.6.20, created on 2013-11-07 01:23:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/cms.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/cms.tpl', 3, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
my-account.php" class="noeffect"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>
<div id="content">
	<span class="graytitle"><?php echo $this->_tpl_vars['cms']->meta_title; ?>
</span>
	<ul class="pageitem">
		<li class="textbox">
		<?php if ($this->_tpl_vars['cms']): ?>
			<div class="rte"><?php echo $this->_tpl_vars['cms']->content; ?>
</div>
		<?php else: ?>
			<p><?php echo smartyTranslate(array('s' => 'This page does not exist.'), $this);?>
</p>
		<?php endif; ?>
		</li>
	</ul>
</div>