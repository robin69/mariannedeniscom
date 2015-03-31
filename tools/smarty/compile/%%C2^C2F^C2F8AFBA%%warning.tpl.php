<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:35
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/./warning.tpl */ ?>
<?php if (isset ( $this->_smarty_vars['capture']['warning'] )): ?><?php $this->assign('warning', $this->_smarty_vars['capture']['warning']); ?><?php endif; ?>
<?php if (isset ( $this->_tpl_vars['warning'] ) && $this->_tpl_vars['warning']): ?>
<ul class="pageitem warning">
	<li class="textbox">
		<?php echo $this->_tpl_vars['warning']; ?>

	</li>
</ul>
<?php endif; ?>