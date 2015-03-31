<?php /* Smarty version 2.6.20, created on 2011-01-22 17:33:44
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/blockrss/blockrss.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockrss/blockrss.tpl', 12, false),)), $this); ?>
<!-- Block RSS module-->
<!-- <div id="rss_block_left" class="block">
	<h4><?php echo $this->_tpl_vars['title']; ?>
</h4>
	<div class="block_content">
		<?php if ($this->_tpl_vars['rss_links']): ?>
			<ul>
				<?php $_from = $this->_tpl_vars['rss_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['rss_link']):
?>
					<li><a href="<?php echo $this->_tpl_vars['rss_link']['url']; ?>
"><?php echo $this->_tpl_vars['rss_link']['title']; ?>
</a></li>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
		<?php else: ?>
			<?php echo smartyTranslate(array('s' => 'No RSS feed added','mod' => 'blockrss'), $this);?>

		<?php endif; ?>
	</div>
</div>
<div class="news">
				<img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/rss.jpg" width="24" height="24" alt="" />
				<p>Derni&egrave;res actualit&eacute;s :</p>
				<div class="clear"></div>
				<a href="" title="" onfocus="this.blur();">14/10/2010 - <strong>Vente priv&eacute;e les 23 &amp; 24 octobre &agrave; Paris &raquo;</strong></a>
				<a href="" title="" onfocus="this.blur();">14/10/2010 - <strong>Vente priv&eacute;e les 23 &amp; 24 octobre &agrave; Paris &raquo;</strong></a>
				<a href="" title="" onfocus="this.blur();">14/10/2010 - <strong>Vente priv&eacute;e les 23 &amp; 24 octobre &agrave; Paris &raquo;</strong></a>
				<div class="clear"></div>
			</div>	
			 -->

<!-- /Block RSS module-->
<!-- <?php if ($this->_tpl_vars['page_name'] == index): ?> -->
			<?php if ($this->_tpl_vars['rss_links']): ?>
				<div class="news">
				<img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/rss.jpg" width="24" height="24" alt="" />
				<p>Derni&egrave;res actualit&eacute;s :</p>
				<div class="clear"></div>
				<?php $_from = $this->_tpl_vars['rss_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['rss_link']):
?>
					<a href="<?php echo $this->_tpl_vars['rss_link']['url']; ?>
" title="" onfocus="this.blur();">Le <?php echo $this->_tpl_vars['rss_link']['pubdate']; ?>
 - <?php echo $this->_tpl_vars['rss_link']['title']; ?>
 </a>
				<?php endforeach; endif; unset($_from); ?>
				<div class="clear"></div>
				</div>
			<?php endif; ?>
<!-- 		<?php endif; ?> -->	
		
		