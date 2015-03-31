<?php /* Smarty version 2.6.20, created on 2013-11-08 10:37:53
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/authentication.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/authentication.tpl', 3, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/authentication.tpl', 18, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/authentication.tpl', 24, false),array('modifier', 'stripslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/authentication.tpl', 45, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
	</div>
	<div id="title">
		<?php if (! isset ( $this->_tpl_vars['email_create'] )): ?><?php echo smartyTranslate(array('s' => 'Log in'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'Subscribe'), $this);?>
<?php endif; ?>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?config=1"><?php echo smartyTranslate(array('s' => 'Config'), $this);?>
</a>
	</div>
</div>

<?php $this->assign('current_step', 'login'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<script type="text/javascript">
// <![CDATA[
idSelectedCountry = <?php if (isset ( $_POST['id_state'] )): ?><?php echo ((is_array($_tmp=$_POST['id_state'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
<?php else: ?>false<?php endif; ?>;
countries = new Array();
<?php $_from = $this->_tpl_vars['countries']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['country']):
?>
	<?php if (isset ( $this->_tpl_vars['country']['states'] )): ?>
		countries[<?php echo ((is_array($_tmp=$this->_tpl_vars['country']['id_country'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
] = new Array();
		<?php $_from = $this->_tpl_vars['country']['states']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['states'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['states']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['state']):
        $this->_foreach['states']['iteration']++;
?>
			countries[<?php echo ((is_array($_tmp=$this->_tpl_vars['country']['id_country'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
]['<?php echo ((is_array($_tmp=$this->_tpl_vars['state']['id_state'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
'] = '<?php echo ((is_array($_tmp=$this->_tpl_vars['state']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
';
		<?php endforeach; endif; unset($_from); ?>
	<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
//]]>
</script>

<div id="content">

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if (isset ( $this->_tpl_vars['confirmation'] )): ?>
	<?php ob_start(); ?><a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'Your account has been successfully created.'), $this);?>
</a><?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php else: ?>
	<?php if (! isset ( $this->_tpl_vars['email_create'] )): ?>
	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
authentication.php" method="post" id="login_form">
		<fieldset>
			<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Already registered ?'), $this);?>
</span>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'E-mail address'), $this);?>
" type="text" id="email" name="email" value="<?php if (isset ( $_POST['email'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['email'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Password'), $this);?>
" type="password" id="passwd" name="passwd" value="<?php if (isset ( $_POST['passwd'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['passwd'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" />
				</li>
				<li class="button">
					<?php if (isset ( $this->_tpl_vars['back'] )): ?><input type="hidden" class="hidden" name="back" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['back'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
					<input type="submit" id="SubmitLogin" name="SubmitLogin" class="button" value="<?php echo smartyTranslate(array('s' => 'Log in'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>

	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
authentication.php" method="post" id="create-account_form">
		<fieldset>
			<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Not yet ! Create your account...'), $this);?>
</span>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Enter your e-mail address'), $this);?>
" type="text" id="email_create" name="email_create" value="<?php if (isset ( $_POST['email_create'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_POST['email_create'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall') : smarty_modifier_escape($_tmp, 'htmlall')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" class="account_input" />
				</li>
				<li class="button">
					<?php if (isset ( $this->_tpl_vars['back'] )): ?><input type="hidden" class="hidden" name="back" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['back'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
					<input type="submit" id="SubmitCreate" name="SubmitCreate" class="button_large" value="<?php echo smartyTranslate(array('s' => 'Create your account'), $this);?>
" />
					<input type="hidden" class="hidden" name="SubmitCreate" value="<?php echo smartyTranslate(array('s' => 'Create your account'), $this);?>
" />
				</li>
			</ul>
		</fieldset>
	</form>

	<ul class="pageitem">
		<li class="menu">
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
password.php">
				<img alt="<?php echo smartyTranslate(array('s' => 'retrieve password'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_thumb_dir']; ?>
help.png" />
				<span class="name"><?php echo smartyTranslate(array('s' => 'Forgot your password?'), $this);?>
</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

	<?php else: ?>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Your personal information'), $this);?>
</span>
	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
authentication.php" method="post" id="account-creation_form" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<sup>*</sup><?php echo smartyTranslate(array('s' => 'Required field'), $this);?>
 
				</li>
				<li class="radiobutton">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Mr.'), $this);?>
</span>
					<input type="radio" name="id_gender" id="id_gender1" value="1" <?php if (isset ( $_POST['id_gender'] ) && $_POST['id_gender'] == 1): ?>checked="checked"<?php endif; ?> />
				</li>
				<li class="radiobutton">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Ms.'), $this);?>
</span>
					<input type="radio" name="id_gender" id="id_gender2" value="2" <?php if (isset ( $_POST['id_gender'] ) && $_POST['id_gender'] == 2): ?>checked="checked"<?php endif; ?> />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'First name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" onkeyup="$('#firstname').attr('val',$(this).attr('val'));" type="text" class="text" id="customer_firstname" name="customer_firstname" value="<?php if (isset ( $_POST['customer_firstname'] )): ?><?php echo $_POST['customer_firstname']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Last name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" onkeyup="$('#lastname').attr('val',$(this).attr('val'));" type="text" class="text" id="customer_lastname" name="customer_lastname" value="<?php if (isset ( $_POST['customer_lastname'] )): ?><?php echo $_POST['customer_lastname']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'E-mail'), $this);?>
<sup>*</sup></span>
					<input type="text" class="text" id="email" name="email" value="<?php if (isset ( $_POST['email'] )): ?><?php echo $_POST['email']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Password'), $this);?>
<sup>*</sup></span>
					<input placeholder="<?php echo smartyTranslate(array('s' => '5 characters min.'), $this);?>
" type="password" class="text" name="passwd" id="passwd" />
				</li>
			</ul>
			<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Stay tunes!'), $this);?>
</span>
			<ul class="pageitem">
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
			</ul>

			<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Your address'), $this);?>
</span>
			<ul class="pageitem">
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Address title'), $this);?>
<sup>*</sup></span>
					<input placeholder="" class="text" name="alias" id="alias" value="<?php if (isset ( $_POST['alias'] )): ?><?php echo $_POST['alias']; ?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'My address'), $this);?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'First name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="firstname" name="firstname" value="<?php if (isset ( $_POST['firstname'] )): ?><?php echo $_POST['firstname']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Last name'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="lastname" name="lastname" value="<?php if (isset ( $_POST['lastname'] )): ?><?php echo $_POST['lastname']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Address'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="address1" id="address1" value="<?php if (isset ( $_POST['address1'] )): ?><?php echo $_POST['address1']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Zip code'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="postcode" id="postcode" value="<?php if (isset ( $_POST['postcode'] )): ?><?php echo $_POST['postcode']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'City'), $this);?>
<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="city" id="city" value="<?php if (isset ( $_POST['city'] )): ?><?php echo $_POST['city']; ?>
<?php endif; ?>" />
				</li>
				<li class="select">
					<select name="id_country" id="id_country">
						<option value="">-</option>
						<?php $_from = $this->_tpl_vars['countries']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['v']):
?>
						<option value="<?php echo $this->_tpl_vars['v']['id_country']; ?>
" <?php if (( $this->_tpl_vars['sl_country'] == $this->_tpl_vars['v']['id_country'] )): ?> selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['v']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
						<?php endforeach; endif; unset($_from); ?>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select id_state">
					<select name="id_state" id="id_state">
						<option value=""><?php echo smartyTranslate(array('s' => 'State'), $this);?>
</option>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Mobile phone'), $this);?>
</span>
					<input placeholder="<?php echo smartyTranslate(array('s' => 'useful for mobile version'), $this);?>
" type="tel" class="text" name="phone_mobile" id="phone_mobile" value="<?php if (isset ( $_POST['phone_mobile'] )): ?><?php echo $_POST['phone_mobile']; ?>
<?php endif; ?>" />
				</li>
			</ul>

			<?php echo $this->_tpl_vars['HOOK_CREATE_ACCOUNT_FORM']; ?>


			<ul class="pageitem">
				<li class="button">
					<input type="hidden" name="email_create" value="1" />
					<?php if (isset ( $this->_tpl_vars['back'] )): ?><input type="hidden" class="hidden" name="back" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['back'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
					<input type="submit" name="submitAccount" value="<?php echo smartyTranslate(array('s' => 'Register or...'), $this);?>
" class="exclusive" />
				</li>
			</ul>

			<span class="graytitle"><?php echo smartyTranslate(array('s' => '..fill some optional informations'), $this);?>
</span>
			<ul class="pageitem">
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Home phone'), $this);?>
</span>
					<input placeholder="" type="tel" class="text" name="phone" id="phone" value="<?php if (isset ( $_POST['phone'] )): ?><?php echo $_POST['phone']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Company'), $this);?>
</span>
					<input placeholder="" type="text" class="text" id="company" name="company" value="<?php if (isset ( $_POST['company'] )): ?><?php echo $_POST['company']; ?>
<?php endif; ?>" />
				</li>
				<li class="smallfield">
					<span class="name"><?php echo smartyTranslate(array('s' => 'Address (2)'), $this);?>
</span>
					<input placeholder="" type="text" class="text" name="address2" id="address2" value="<?php if (isset ( $_POST['address2'] )): ?><?php echo $_POST['address2']; ?>
<?php endif; ?>" />
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
    foreach ($_from as $this->_tpl_vars['day']):
?>
							<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['day'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php if (( $this->_tpl_vars['sl_day'] == $this->_tpl_vars['day'] )): ?> selected="selected"<?php endif; ?>><?php echo ((is_array($_tmp=$this->_tpl_vars['day'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
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
				<li class="textbox">
					<span class="header"><?php echo smartyTranslate(array('s' => 'Additional information'), $this);?>
</span>
					<textarea name="other" id="other" cols="26" rows="3"><?php if (isset ( $_POST['other'] )): ?><?php echo $_POST['other']; ?>
<?php endif; ?></textarea>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="button">
					<input type="hidden" name="email_create" value="1" />
					<?php if (isset ( $this->_tpl_vars['back'] )): ?><input type="hidden" class="hidden" name="back" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['back'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php endif; ?>
					<input type="submit" name="submitAccount" value="<?php echo smartyTranslate(array('s' => 'Register'), $this);?>
" class="exclusive" />
				</li>
			</ul>
		</fieldset>
	</form>
	<?php endif; ?>
<?php endif; ?>
</div>