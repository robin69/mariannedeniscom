<?php /* Smarty version 2.6.20, created on 2010-11-25 08:37:36
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockrss/blockrss.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/prestashop/themes/iprestashop/modules/blockrss/blockrss.tpl', 7, false),)), $this); ?>
<!-- Block RSS module-->
<span class="graytitle"><?php echo $this->_tpl_vars['title']; ?>
</span>
<ul class="pageitem" id="rss_block">
<?php if ($this->_tpl_vars['content']): ?>
	<?php echo $this->_tpl_vars['content']; ?>

<?php else: ?>
	<?php echo smartyTranslate(array('s' => 'No RSS feed added','mod' => 'blockrss'), $this);?>

<?php endif; ?>
</ul>
<script type="text/javascript">
<!--
<?php echo '
	$(document).ready(function() {
		//console.log($(\'#rss_block\').find(\'li\'));
		$(\'#rss_block\').find(\'li\').addClass(\'menu\');
		$(\'#rss_block\').find(\'a\').each(function() {
			$(this).html(\'<span class="name">\'+$(this).text()+\'</span><span class="arrow"></span>\');
		});
	});
'; ?>

//-->
</script>
<!-- /Block RSS module-->