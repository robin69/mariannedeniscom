<?php /* Smarty version 2.6.20, created on 2014-07-02 23:34:06
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/authentication.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/authentication.tpl', 3, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/authentication.tpl', 6, false),)), $this); ?>
<!-- MODULE ReferralProgram -->
<fieldset class="account_creation">
	<h3><?php echo smartyTranslate(array('s' => 'Referral program','mod' => 'referralprogram'), $this);?>
</h3>
	<p>
		<label for="referralprogram"><?php echo smartyTranslate(array('s' => 'E-mail address of your sponsor','mod' => 'referralprogram'), $this);?>
</label>
		<input type="text" size="52" maxlength="128" class="text" id="referralprogram" name="referralprogram" value="<?php if (isset ( $_POST['referralprogram'] )): ?><?php echo ((is_array($_tmp=$_POST['referralprogram'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
	</p>
</fieldset>
<!-- END : MODULE ReferralProgram -->