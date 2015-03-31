<?php /* Smarty version 2.6.20, created on 2011-06-15 23:43:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/identity.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/identity.tpl', 9, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/identity.tpl', 25, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
</div>

<div id="content">
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Your personal information'), $this);?>
</span>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if ($this->_tpl_vars['confirmation']): ?>
	<?php ob_start(); ?>
		<?php echo smartyTranslate(array('s' => 'Your personal information has been successfully updated.'), $this);?>

		<?php if ($this->_tpl_vars['pwd_changed']): ?><br /><?php echo smartyTranslate(array('s' => 'Your password has been sent to your e-mail:'), $this);?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['email'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>
	<?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php else: ?>

	<ul class="pageitem">
		<li class="textbox"><?php echo smartyTranslate(array('s' => 'Do not hesitate to update your personal information if it has changed.'), $this);?>
</li>
	</ul>


	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
identity.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><sup>*</sup><?php echo smartyTranslate(array('s' => 'Required field'), $this);?>
</span>
				</li>
				<li class="radiobutton required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Mr.'), $this);?>
</span>
					<input type="radio" name="id_gender" id="id_gender1" value="1" <?php if ($_POST['id_gender'] == 1): ?>checked="checked"<?php endif; ?> />
				</li>
				<li class="radiobutton">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Ms.'), $this);?>
</span>
					<input type="radio" name="id_gender" id="id_gender2" value="2" <?php if ($_POST['id_gender'] == 2): ?>checked="checked"<?php endif; ?> />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'First name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="firstname" name="firstname" value="<?php echo $_POST['firstname']; ?>
" />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Last name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="lastname" name="lastname" value="<?php echo $_POST['lastname']; ?>
" />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'E-mail'), $this);?>
<sup>*</sup></span>
					<input type="text" class="text" id="email" name="email" value="<?php echo $_POST['email']; ?>
" />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Current password'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="password" name="old_passwd" id="old_passwd" />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Password'), $this);?>
</span>
					<input placeholder="" type="password" name="passwd" id="passwd" />
				</li>
				<li class="smallfield required">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Confirmation'), $this);?>
</span>
					<input placeholder="" type="password" name="confirmation" id="confirmation" />
				</li>
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'Birthday'), $this);?>
</span>
				</li>
				<li class="select">
					<select id="days" name="days">
						<option value=""><?php echo smartyTranslate(array('s' => 'day'), $this);?>
</option>
						<?php $_from = $this->_tpl_vars['days']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
							<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['v'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if (( $this->_tpl_vars['sl_day'] == $this->_tpl_vars['v'] )): ?>selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['v'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
&nbsp;&nbsp;</option>
						<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select">
										<select id="months" name="months">
						<option value=""><?php echo smartyTranslate(array('s' => 'month'), $this);?>
</option>
						<?php $_from = $this->_tpl_vars['months']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['month']):
?>
							<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['k'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if (( $this->_tpl_vars['sl_month'] == $this->_tpl_vars['k'] )): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => ($this->_tpl_vars['month'])), $this);?>
&nbsp;</option>
						<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select">
					<select id="years" name="years">
						<option value=""><?php echo smartyTranslate(array('s' => 'year'), $this);?>
</option>
						<?php $_from = $this->_tpl_vars['years']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['year']):
?>
							<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['year'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if (( $this->_tpl_vars['sl_year'] == $this->_tpl_vars['year'] )): ?> selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['year'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
&nbsp;&nbsp;</option>
						<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="checkbox">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Sign up for our newsletter'), $this);?>
</span>
					<input type="checkbox" name="newsletter" id="newsletter" value="1" <?php if (isset ( $_POST['newsletter'] ) && $_POST['newsletter'] == 1): ?> checked="checked"<?php endif; ?> />
				</li>
				<li class="checkbox">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Receive special offers from our partners'), $this);?>
</span>
					<input type="checkbox"name="optin" id="optin" value="1" <?php if (isset ( $_POST['optin'] ) && $_POST['optin'] == 1): ?> checked="checked"<?php endif; ?> />
				</li>
				<li class="button">
					<input type="submit" class="button" name="submitIdentity" value="<?php echo smartyTranslate(array('s' => 'Save'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>

	<ul class="pageitem">
		<li class="textbox"><?php echo smartyTranslate(array('s' => '[Insert customer data privacy clause or law here, if applicable]'), $this);?>
</li>
	</ul>

<?php endif; ?>

</div>