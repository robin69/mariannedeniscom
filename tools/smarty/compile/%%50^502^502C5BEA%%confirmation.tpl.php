<?php /* Smarty version 2.6.20, created on 2013-05-09 22:46:34
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./confirmation.tpl */ ?>
<?php if (isset ( $this->_smarty_vars['capture']['confirmation'] )): ?><?php $this->assign('confirmation', $this->_smarty_vars['capture']['confirmation']); ?><?php endif; ?>
<?php if (isset ( $this->_tpl_vars['confirmation'] ) && $this->_tpl_vars['confirmation']): ?>
<ul class="pageitem success">
	<li class="textbox">
		<?php echo $this->_tpl_vars['confirmation']; ?>

	</li>
</ul>
<?php endif; ?>