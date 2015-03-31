<?php /* Smarty version 2.6.20, created on 2013-01-06 19:07:07
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/address.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/address.tpl', 4, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/address.tpl', 15, false),array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/address.tpl', 25, false),)), $this); ?>
<script type="text/javascript">
//<![CDATA[
var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
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
'] = '<?php echo $this->_tpl_vars['state']['name']; ?>
';
		<?php endforeach; endif; unset($_from); ?>
	<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
$(function(){
	$('.id_state option[value=<?php if (isset ( $_POST['id_state'] )): ?><?php echo $_POST['id_state']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->id_state)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>]').attr('selected', 'selected');
});
//]]>
</script>


<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
		<?php if (isset ( $this->_tpl_vars['back'] )): ?>
			<a href="<?php echo $this->_tpl_vars['back']; ?>
?step=1"><?php echo smartyTranslate(array('s' => 'Back'), $this);?>
</a>
		<?php else: ?>
			<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
addresses.php"><?php echo smartyTranslate(array('s' => 'Addresses'), $this);?>
</a>
		<?php endif; ?>
	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
my-account.php"><?php echo smartyTranslate(array('s' => 'My account'), $this);?>
</a>
	</div>
</div>

<?php if (isset ( $this->_tpl_vars['back'] )): ?>
	<?php $this->assign('current_step', 'address'); ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>

<div id="content">
	<span class="graytitle"><?php if (isset ( $this->_tpl_vars['id_address'] )): ?><?php echo smartyTranslate(array('s' => 'Modify address'), $this);?>
 <?php if (isset ( $_POST['alias'] )): ?>"<?php echo $_POST['alias']; ?>
"<?php elseif ($this->_tpl_vars['address']->alias): ?>"<?php echo ((is_array($_tmp=$this->_tpl_vars['address']->alias)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"<?php endif; ?><?php else: ?><?php echo smartyTranslate(array('s' => 'Add a new address'), $this);?>
<?php endif; ?></span>

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

	<form action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
address.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox"><span class="header"><sup>*</sup><?php echo smartyTranslate(array('s' => 'Required field'), $this);?>
</span></li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Assign an address title'), $this);?>
*" type="text" id="alias" name="alias" value="<?php if (isset ( $_POST['alias'] )): ?><?php echo $_POST['alias']; ?>
<?php elseif ($this->_tpl_vars['address']->alias): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->alias)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php elseif (isset ( $this->_tpl_vars['select_address'] )): ?><?php else: ?><?php echo smartyTranslate(array('s' => 'My address'), $this);?>
<?php endif; ?>" />
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Company'), $this);?>
" type="text" id="company" name="company" value="<?php if (isset ( $_POST['company'] )): ?><?php echo $_POST['company']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->company)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'First name'), $this);?>
*" type="text" name="firstname" id="firstname" value="<?php if (isset ( $_POST['firstname'] )): ?><?php echo $_POST['firstname']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->firstname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Last name'), $this);?>
*" type="text" id="lastname" name="lastname" value="<?php if (isset ( $_POST['lastname'] )): ?><?php echo $_POST['lastname']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->lastname)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Address'), $this);?>
*" type="text" id="address1" name="address1" value="<?php if (isset ( $_POST['address1'] )): ?><?php echo $_POST['address1']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->address1)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Address (2)'), $this);?>
" type="text" id="address2" name="address2" value="<?php if (isset ( $_POST['address2'] )): ?><?php echo $_POST['address2']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->address2)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Zip code'), $this);?>
*" type="text" id="postcode" name="postcode" value="<?php if (isset ( $_POST['postcode'] )): ?><?php echo $_POST['postcode']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->postcode)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield required">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'City'), $this);?>
*" type="text" name="city" id="city" value="<?php if (isset ( $_POST['city'] )): ?><?php echo $_POST['city']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->city)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" maxlength="64" />
				</li>
				<li class="select required">
					<select id="id_country" name="id_country">
						<!-- option value=""><?php echo smartyTranslate(array('s' => 'Country'), $this);?>
*</option -->
						<?php echo $this->_tpl_vars['countries_list']; ?>

					</select>
					<span class="arrow"></span>
				</li>
				<li class="select required id_state">
					<select name="id_state" id="id_state">
						<option value=""></option>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Home phone'), $this);?>
" type="tel" id="phone" name="phone" value="<?php if (isset ( $_POST['phone'] )): ?><?php echo $_POST['phone']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->phone)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="bigfield">
					<input placeholder="<?php echo smartyTranslate(array('s' => 'Mobile phone'), $this);?>
" type="tel" id="phone_mobile" name="phone_mobile" value="<?php if (isset ( $_POST['phone_mobile'] )): ?><?php echo $_POST['phone_mobile']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->phone_mobile)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
				</li>
				<li class="textbox">
					<label for="other"><?php echo smartyTranslate(array('s' => 'Additional information'), $this);?>
</label>
					<textarea id="other" name="other" cols="26" rows="3"><?php if (isset ( $_POST['other'] )): ?><?php echo $_POST['other']; ?>
<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['address']->other)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?></textarea>
				</li>
				<li class="button">
					<input type="hidden" name="token" value="<?php echo $this->_tpl_vars['token']; ?>
" />
					<?php if (isset ( $this->_tpl_vars['id_address'] )): ?><input type="hidden" name="id_address" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['id_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" /><?php endif; ?>
					<?php if (isset ( $this->_tpl_vars['back'] )): ?><input type="hidden" name="back" value="<?php echo $this->_tpl_vars['back']; ?>
?step=1" /><?php endif; ?>
					<?php if (isset ( $this->_tpl_vars['select_address'] )): ?><input type="hidden" name="select_address" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['select_address'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" /><?php endif; ?>
					<input type="submit" name="submitAddress" id="submitAddress" value="<?php echo smartyTranslate(array('s' => 'Save'), $this);?>
" class="button" />
				</li>
			</ul>
		</fieldset>
	</form>
</div>