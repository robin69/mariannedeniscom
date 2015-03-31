<?php /* Smarty version 2.6.20, created on 2013-03-05 10:11:24
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/./warning.tpl */ ?>
<?php if (isset ( $this->_smarty_vars['capture']['warning'] )): ?><?php $this->assign('warning', $this->_smarty_vars['capture']['warning']); ?><?php endif; ?>
<?php if (isset ( $this->_tpl_vars['warning'] ) && $this->_tpl_vars['warning']): ?>
<ul class="pageitem warning">
	<li class="textbox">
		<?php echo $this->_tpl_vars['warning']; ?>

	</li>
</ul>
<?php endif; ?>