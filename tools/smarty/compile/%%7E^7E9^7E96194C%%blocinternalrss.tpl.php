<?php /* Smarty version 2.6.20, created on 2010-11-08 19:03:14
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/prestashop/modules/blocinternalrss/blocinternalrss.tpl */ ?>
		<?php if ($this->_tpl_vars['page_name'] == index): ?>
		<!-- FLUX RSS -->
			<!-- <div class="news">
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
		
		
			<div class="news">
				<img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/rss.jpg" width="24" height="24" alt="" />
				<p>Derni&egrave;res actualit&eacute;s :</p>
					<div class="clear"></div>
						<?php $_from = $this->_tpl_vars['rss_links']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['rss_link']):
?>
							<a href="" title="" onfocus="this.blur();"></a>
						<?php endforeach; endif; unset($_from); ?>
			</div>
		<?php endif; ?>