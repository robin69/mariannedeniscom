<?php /* Smarty version 2.6.20, created on 2011-02-27 11:32:06
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-rules.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-rules.tpl', 1, false),array('modifier', 'replace', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/referralprogram/referralprogram-rules.tpl', 5, false),)), $this); ?>
<h3><?php echo smartyTranslate(array('s' => 'Referral program rules','mod' => 'referralprogram'), $this);?>
</h3>

<?php if (isset ( $this->_tpl_vars['xml'] )): ?>
<div id="referralprogram_rules">
	<?php if (isset ( $this->_tpl_vars['xml']->body->{(($_var=$this->_tpl_vars['paragraph']) && substr($_var,0,2)!='__') ? $_var : $this->trigger_error("cannot access property \"$_var\"")} )): ?><div class="rte"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['xml']->body->{(($_var=$this->_tpl_vars['paragraph']) && substr($_var,0,2)!='__') ? $_var : $this->trigger_error("cannot access property \"$_var\"")})) ? $this->_run_mod_handler('replace', true, $_tmp, "\'", "'") : smarty_modifier_replace($_tmp, "\'", "'")))) ? $this->_run_mod_handler('replace', true, $_tmp, '\"', '"') : smarty_modifier_replace($_tmp, '\"', '"')); ?>
</div><?php endif; ?>
</div>
<?php endif; ?>