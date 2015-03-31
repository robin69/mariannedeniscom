<?php /* Smarty version 2.6.20, created on 2015-03-31 12:32:59
         compiled from /home/www/mariannedenis.com/modules/blocknewsletter/blocknewsletter.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/home/www/mariannedenis.com/modules/blocknewsletter/blocknewsletter.tpl', 8, false),)), $this); ?>
<!-- Block Newsletter module-->

<div id="newsletter_block_left">
	<?php if ($this->_tpl_vars['msg']): ?>
		<p class="<?php if ($this->_tpl_vars['nw_error']): ?>warning_inline<?php else: ?>success_inline<?php endif; ?>"><?php echo $this->_tpl_vars['msg']; ?>
</p>
	<?php endif; ?>
		<form action="<?php echo $this->_tpl_vars['base_dir']; ?>
content/8-newsletter" method="post">
			<p><input type="text" name="email" class="newsmaininput" value="<?php if ($this->_tpl_vars['value']): ?><?php echo $this->_tpl_vars['value']; ?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'your e-mail','mod' => 'blocknewsletter'), $this);?>
<?php endif; ?>" onfocus="javascript:if(this.value=='<?php echo smartyTranslate(array('s' => 'your e-mail','mod' => 'blocknewsletter'), $this);?>
')this.value='';" onblur="javascript:if(this.value=='')this.value='<?php echo smartyTranslate(array('s' => 'your e-mail','mod' => 'blocknewsletter'), $this);?>
';" /></p>
			<p>
				<select name="action" class="newssubselect">
					<option value="0"<?php if ($this->_tpl_vars['action'] == 0): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Subscribe','mod' => 'blocknewsletter'), $this);?>
</option>
					<option value="1"<?php if ($this->_tpl_vars['action'] == 1): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Unsubscribe','mod' => 'blocknewsletter'), $this);?>
</option>
				</select>
				<input type="submit" value="ok" class="button_mini" name="submitNewsletter" />
			</p>
		</form>
		<div class="clear"></div>
		<br /><br /><br />
		<p style="font-size:10px;">Conform&eacute;ment &agrave; la loi Informatique et Libert&eacute;s en date du 6 janvier 1978, vous disposez d'un droit d'acc&egrave;s, de rectification, de modification et de suppression des donn&eacute;es vous concernant. Vous pouvez exercer ce droit en nous contactant &agrave; l'adresse suivante : contact@mariannedenis.com.</p>
		<br />
</div>

<!-- /Block Newsletter module-->