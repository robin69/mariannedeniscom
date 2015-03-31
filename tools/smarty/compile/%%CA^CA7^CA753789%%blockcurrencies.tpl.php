<?php /* Smarty version 2.6.20, created on 2010-11-02 15:37:09
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockcurrencies/blockcurrencies.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockcurrencies/blockcurrencies.tpl', 2, false),array('modifier', 'lower', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockcurrencies/blockcurrencies.tpl', 8, false),)), $this); ?>
<!-- Block currencies module -->
<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Currencies','mod' => 'blockcurrencies'), $this);?>
</span>
<form id="setCurrency" action="<?php echo $this->_tpl_vars['request_uri']; ?>
" method="post">
	<ul class="pageitem">
		<?php $_from = $this->_tpl_vars['currencies']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['f_currency']):
?>
		<li class="menu">
			<a class="noeffect" href="javascript:setCurrency(<?php echo $this->_tpl_vars['f_currency']['id_currency']; ?>
);">
				<img src="<?php echo $this->_tpl_vars['ips_currency_dir']; ?>
<?php echo ((is_array($_tmp=$this->_tpl_vars['f_currency']['iso_code'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)); ?>
.png" alt="<?php echo $this->_tpl_vars['f_currency']['name']; ?>
" />
				<span class="name"><?php echo $this->_tpl_vars['f_currency']['sign']; ?>
 <?php echo $this->_tpl_vars['f_currency']['name']; ?>
</span>
				<?php if ($this->_tpl_vars['id_currency_cookie'] != $this->_tpl_vars['f_currency']['id_currency']): ?><span class="arrow"></span><?php endif; ?>
			</a>
		</li>
		<?php endforeach; endif; unset($_from); ?>
	</ul>
	<input type="hidden" name="id_currency" id="id_currency" value=""/>
	<input type="hidden" name="SubmitCurrency" value="" />
</form>
<script type="text/javascript">
	function setCurrency(id) {
		$('form#setCurrency input#id_currency').val(id);
		$('form#setCurrency').submit();
	}
</script>
<!-- /Block currencies module -->