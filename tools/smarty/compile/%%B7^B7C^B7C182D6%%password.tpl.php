<?php /* Smarty version 2.6.20, created on 2013-06-24 05:21:40
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/password.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/password.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/password.tpl', 16, false),array('modifier', 'stripslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/password.tpl', 27, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
authentication.php" title="<?php echo smartyTranslate(array('s' => 'login'), $this);?>
"><?php echo smartyTranslate(array('s' => 'back to Login'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Forgot your password'), $this);?>
</span>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (isset ( $this->_tpl_vars['confirmation'] )): ?>
	<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Your password has been successfully reset and has been sent to your e-mail address:'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['email'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php else: ?>

	<form action="<?php echo ((is_array($_tmp=$this->_tpl_vars['request_uri'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" method="post">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'Please enter your e-mail address used to register. We will e-mail you your new password.'), $this);?>
</span>
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Type your e-mail address'), $this);?>
" type="text" id="email" name="email" value="<?php if (isset ( $_POST['email'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['email'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" />
				</li>
				<li class="button">
					<input type="submit" class="button" value="<?php echo smartyTranslate(array('s' => 'Retrieve'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>
<?php endif; ?>

	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
authentication.php" title="<?php echo smartyTranslate(array('s' => 'Back to Login'), $this);?>
">
				<img alt="<?php echo smartyTranslate(array('s' => 'retrieve password'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
accessibility.png" class="standard" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Back to Login'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
</div>