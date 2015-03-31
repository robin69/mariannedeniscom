<?php /* Smarty version 2.6.20, created on 2015-03-31 12:32:59
         compiled from /home/www/mariannedenis.com/modules/addthis/product_page.tpl */ ?>

<?php if ($this->_tpl_vars['button_type'] === 'custom'): ?>

<?php echo $this->_tpl_vars['custom_button']; ?>


<?php else: ?>

<a href="http://www.addthis.com/bookmark.php?v=250" onmouseover="return addthis_open(this, '', '<?php echo $this->_tpl_vars['product_link']; ?>
', '<?php echo $this->_tpl_vars['product_name']; ?>
')" onmouseout="addthis_close()" onclick="return addthis_sendto()">
<img src="http://s7.addthis.com/static/btn/<?php echo $this->_tpl_vars['button_img']; ?>
" alt="Bookmark and Share" style="border:0"/>
</a><script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=xa-4a55013b42705c79"></script>

<?php endif; ?>