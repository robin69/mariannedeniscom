<?php /* Smarty version 2.6.20, created on 2013-10-16 12:58:37
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/referralprogram/authentication.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/referralprogram/authentication.tpl', 2, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/referralprogram/authentication.tpl', 6, false),)), $this); ?>
<!-- MODULE ReferralProgram -->
<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Referral program','mod' => 'referralprogram'), $this);?>
</span>
<ul class="pageitem">
	<li class="smallfield">
		<span class="name"><?php echo smartyTranslate(array('s' => 'Sponsor mail','mod' => 'referralprogram'), $this);?>
</span>
		<input placeholder="<?php echo smartyTranslate(array('s' => 'Sponsor mail','mod' => 'referralprogram'), $this);?>
" type="text" maxlength="128" class="text" id="referralprogram" name="referralprogram" value="<?php if (isset ( $_POST['referralprogram'] )): ?><?php echo ((is_array($_tmp=$_POST['referralprogram'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>" />
	</li>
</ul>

<!-- /MODULE ReferralProgram -->