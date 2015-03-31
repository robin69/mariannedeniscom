<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:22
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocknewsletter/blocknewsletter.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/modules/blocknewsletter/blocknewsletter.tpl', 4, false),)), $this); ?>
<!-- Block Newsletter module-->
<form action="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1" method="post">
	<fieldset>
		<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Newsletter','mod' => 'blocknewsletter'), $this);?>
</span>
		<?php if ($this->_tpl_vars['msg']): ?>
			<?php if ($this->_tpl_vars['nw_error']): ?>
				<?php ob_start(); ?><?php echo $this->_tpl_vars['msg']; ?>
<?php $this->_smarty_vars['capture']['warning'] = ob_get_contents(); ob_end_clean(); ?>
				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./warning.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<?php else: ?>
				<?php ob_start(); ?><?php echo $this->_tpl_vars['msg']; ?>
<?php $this->_smarty_vars['capture']['confirmation'] = ob_get_contents(); ob_end_clean(); ?>
				<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./confirmation.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
			<?php endif; ?>
		<?php endif; ?>
		<ul class="pageitem">
			<li class="bigfield">
				<input placeholder="<?php echo smartyTranslate(array('s' => 'your e-mail','mod' => 'blocknewsletter'), $this);?>
" type="text" name="email" value="<?php if ($this->_tpl_vars['value']): ?><?php echo $this->_tpl_vars['value']; ?>
<?php endif; ?>" />
			</li>
			<li class="select">
				<select name="action">
					<option value="0"<?php if ($this->_tpl_vars['action'] == 0): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Subscribe','mod' => 'blocknewsletter'), $this);?>
</option>
					<option value="1"<?php if ($this->_tpl_vars['action'] == 1): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Unsubscribe','mod' => 'blocknewsletter'), $this);?>
</option>
				</select>
				<span class="arrow"></span>
			</li>
			<li class="button">
				<input type="submit" value="<?php echo smartyTranslate(array('s' => 'ok'), $this);?>
" class="button_mini" name="submitNewsletter" />
			</li>
		</ul>
	</fieldset>
</form>
<!-- /Block Newsletter module-->