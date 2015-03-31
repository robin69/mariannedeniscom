<?php /* Smarty version 2.6.20, created on 2012-03-06 17:34:40
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl', 4, false),array('modifier', 'truncate', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl', 18, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl', 18, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl', 27, false),array('modifier', 'date_format', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/blockwishlist/managewishlist.tpl', 89, false),)), $this); ?>
<?php if ($this->_tpl_vars['products']): ?>
<?php if (! $this->_tpl_vars['refresh']): ?>
	<br />
	<a href="javascript:;" id="hideBoughtProducts" class="button_account_large"  onclick="WishlistVisibility('wlp_bought', 'BoughtProducts');"><?php echo smartyTranslate(array('s' => 'Hide products','mod' => 'blockwishlist'), $this);?>
</a>
	<a href="javascript:;" id="showBoughtProducts" class="button_account_large"  onclick="WishlistVisibility('wlp_bought', 'BoughtProducts');"><?php echo smartyTranslate(array('s' => 'Show products','mod' => 'blockwishlist'), $this);?>
</a>
	<?php if (count ( $this->_tpl_vars['productsBoughts'] )): ?>
	<a href="javascript:;" id="hideBoughtProductsInfos" class="button_account_large" onclick="WishlistVisibility('wlp_bought_infos', 'BoughtProductsInfos');"><?php echo smartyTranslate(array('s' => 'Hide bought product\'s infos','mod' => 'blockwishlist'), $this);?>
</a>
	<a href="javascript:;" id="showBoughtProductsInfos" class="button_account_large"  onclick="WishlistVisibility('wlp_bought_infos', 'BoughtProductsInfos');"><?php echo smartyTranslate(array('s' => 'Show bought product\'s infos','mod' => 'blockwishlist'), $this);?>
</a>
	<?php endif; ?>
	<a href="javascript:;" id="showSendWishlist" class="button_account" onclick="WishlistVisibility('wl_send', 'SendWishlist');"><?php echo smartyTranslate(array('s' => 'Send this wishlist','mod' => 'blockwishlist'), $this);?>
</a>
	<a href="javascript:;" id="hideSendWishlist" class="button_account" onclick="WishlistVisibility('wl_send', 'SendWishlist');"><?php echo smartyTranslate(array('s' => 'Close send this wishlist','mod' => 'blockwishlist'), $this);?>
</a>
	<span class="clear"></span>
	<br />
<?php endif; ?>
	<div class="wlp_bought">
	<?php $_from = $this->_tpl_vars['products']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['i']['iteration']++;
?>
	<ul class="address <?php if (($this->_foreach['i']['iteration']-1) % 2): ?>alternate_<?php endif; ?>item" style="margin:5px 0 0 5px;border-bottom:1px solid #ccc;" id="wlp_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
">
		<li class="address_title"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 30, '...') : smarty_modifier_truncate($_tmp, 30, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
		<li class="address_name">
			<a href="<?php echo $this->_tpl_vars['link']->getProductlink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category_rewrite']); ?>
" title="<?php echo smartyTranslate(array('s' => 'Product detail','mod' => 'blockwishlist'), $this);?>
">
				<img src="<?php echo $this->_tpl_vars['img_prod_dir']; ?>
<?php echo $this->_tpl_vars['product']['cover']; ?>
-medium.jpg" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
			</a>
		<span class="wishlist_product_detail">
		<?php if (isset ( $this->_tpl_vars['product']['attributes_small'] )): ?>
			<a href="<?php echo $this->_tpl_vars['link']->getProductlink($this->_tpl_vars['product']['id_product'],$this->_tpl_vars['product']['link_rewrite'],$this->_tpl_vars['product']['category_rewrite']); ?>
" title="<?php echo smartyTranslate(array('s' => 'Product detail','mod' => 'blockwishlist'), $this);?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a>
		<?php endif; ?>
			<br /><?php echo smartyTranslate(array('s' => 'Quantity','mod' => 'blockwishlist'), $this);?>
:<input type="text" id="quantity_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['quantity'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" size="3"  />
			<br /><br /><?php echo smartyTranslate(array('s' => 'Priority','mod' => 'blockwishlist'), $this);?>
: <select id="priority_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
">
				<option value="0"<?php if ($this->_tpl_vars['product']['priority'] == 0): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'High','mod' => 'blockwishlist'), $this);?>
</option>
				<option value="1"<?php if ($this->_tpl_vars['product']['priority'] == 1): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Medium','mod' => 'blockwishlist'), $this);?>
</option>
				<option value="2"<?php if ($this->_tpl_vars['product']['priority'] == 2): ?> selected="selected"<?php endif; ?>><?php echo smartyTranslate(array('s' => 'Low','mod' => 'blockwishlist'), $this);?>
</option>
			</select>
		</span>
			<a href="javascript:;" class="clear button" onclick="WishlistProductManage('wlp_bought', 'delete', '<?php echo $this->_tpl_vars['id_wishlist']; ?>
', '<?php echo $this->_tpl_vars['product']['id_product']; ?>
', '<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
', $('#quantity_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
').val(), $('#priority_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
').val());" title="<?php echo smartyTranslate(array('s' => 'Delete','mod' => 'blockwishlist'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Delete','mod' => 'blockwishlist'), $this);?>
</a>
			<a href="javascript:;" class="exclusive" onclick="WishlistProductManage('wlp_bought_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
', 'update', '<?php echo $this->_tpl_vars['id_wishlist']; ?>
', '<?php echo $this->_tpl_vars['product']['id_product']; ?>
', '<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
', $('#quantity_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
').val(), $('#priority_<?php echo $this->_tpl_vars['product']['id_product']; ?>
_<?php echo $this->_tpl_vars['product']['id_product_attribute']; ?>
').val());" title="<?php echo smartyTranslate(array('s' => 'Save','mod' => 'blockwishlist'), $this);?>
"><?php echo smartyTranslate(array('s' => 'Save','mod' => 'blockwishlist'), $this);?>
</a>
		</li>
	</ul>
	<?php endforeach; endif; unset($_from); ?>
	</div>
	<div class="clear"></div>
	<br />
	<?php if (! $this->_tpl_vars['refresh']): ?>
	<form class="wl_send std hidden" method="post" class="hidden" onsubmit="return (false);">
		<fieldset>
			<p class="required">
				<label for="email1"><?php echo smartyTranslate(array('s' => 'Email','mod' => 'blockwishlist'), $this);?>
1</label>
				<input type="text" name="email1" id="email1" />
				<sup>*</sup>
			</p>
			<?php unset($this->_sections['i']);
$this->_sections['i']['name'] = 'i';
$this->_sections['i']['loop'] = is_array($_loop=11) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['i']['start'] = (int)2;
$this->_sections['i']['show'] = true;
$this->_sections['i']['max'] = $this->_sections['i']['loop'];
$this->_sections['i']['step'] = 1;
if ($this->_sections['i']['start'] < 0)
    $this->_sections['i']['start'] = max($this->_sections['i']['step'] > 0 ? 0 : -1, $this->_sections['i']['loop'] + $this->_sections['i']['start']);
else
    $this->_sections['i']['start'] = min($this->_sections['i']['start'], $this->_sections['i']['step'] > 0 ? $this->_sections['i']['loop'] : $this->_sections['i']['loop']-1);
if ($this->_sections['i']['show']) {
    $this->_sections['i']['total'] = min(ceil(($this->_sections['i']['step'] > 0 ? $this->_sections['i']['loop'] - $this->_sections['i']['start'] : $this->_sections['i']['start']+1)/abs($this->_sections['i']['step'])), $this->_sections['i']['max']);
    if ($this->_sections['i']['total'] == 0)
        $this->_sections['i']['show'] = false;
} else
    $this->_sections['i']['total'] = 0;
if ($this->_sections['i']['show']):

            for ($this->_sections['i']['index'] = $this->_sections['i']['start'], $this->_sections['i']['iteration'] = 1;
                 $this->_sections['i']['iteration'] <= $this->_sections['i']['total'];
                 $this->_sections['i']['index'] += $this->_sections['i']['step'], $this->_sections['i']['iteration']++):
$this->_sections['i']['rownum'] = $this->_sections['i']['iteration'];
$this->_sections['i']['index_prev'] = $this->_sections['i']['index'] - $this->_sections['i']['step'];
$this->_sections['i']['index_next'] = $this->_sections['i']['index'] + $this->_sections['i']['step'];
$this->_sections['i']['first']      = ($this->_sections['i']['iteration'] == 1);
$this->_sections['i']['last']       = ($this->_sections['i']['iteration'] == $this->_sections['i']['total']);
?>
			<p>
				<label for="email<?php echo $this->_sections['i']['index']; ?>
"><?php echo smartyTranslate(array('s' => 'Email','mod' => 'blockwishlist'), $this);?>
<?php echo $this->_sections['i']['index']; ?>
</label>
				<input type="text" name="email<?php echo $this->_sections['i']['index']; ?>
" id="email<?php echo $this->_sections['i']['index']; ?>
" />
			</p>
			<?php endfor; endif; ?>
			<p class="submit">
				<input class="button" type="submit" value="<?php echo smartyTranslate(array('s' => 'Send','mod' => 'blockwishlist'), $this);?>
" name="submitWishlist" onclick="WishlistSend('wl_send', '<?php echo $this->_tpl_vars['id_wishlist']; ?>
', 'email');" />
			</p>
			<p class="required">
				<sup>*</sup>
				<?php echo smartyTranslate(array('s' => 'Required field'), $this);?>

			</p>
		</fieldset>
	</form>
	<?php if (count ( $this->_tpl_vars['productsBoughts'] )): ?>
	<table class="wlp_bought_infos hidden std">
		<thead>
			<tr>
				<th class="first_item"><?php echo smartyTranslate(array('s' => 'Product','mod' => 'blockwishlist'), $this);?>
</td>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Quantity','mod' => 'blockwishlist'), $this);?>
</td>
				<th class="item"><?php echo smartyTranslate(array('s' => 'Offered by','mod' => 'blockwishlist'), $this);?>
</td>
				<th class="last_item"><?php echo smartyTranslate(array('s' => 'Date','mod' => 'blockwishlist'), $this);?>
</td>
			</tr>
		</thead>
		<tbody>
		<?php $_from = $this->_tpl_vars['productsBoughts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['i'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['i']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['product']):
        $this->_foreach['i']['iteration']++;
?>
			<?php $_from = $this->_tpl_vars['product']['bought']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['j'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['j']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['bought']):
        $this->_foreach['j']['iteration']++;
?>
			<?php if ($this->_tpl_vars['bought']['quantity'] > 0): ?>
				<tr>
					<td class="first_item">
					<span style="float:left;"><img src="<?php echo $this->_tpl_vars['img_prod_dir']; ?>
<?php echo $this->_tpl_vars['product']['cover']; ?>
-small.jpg" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /></span>
					<span style="float:left;"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['product']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 40, '...') : smarty_modifier_truncate($_tmp, 40, '...')))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>

					<?php if (isset ( $this->_tpl_vars['product']['attributes_small'] )): ?>
						<br /><i><?php echo ((is_array($_tmp=$this->_tpl_vars['product']['attributes_small'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</i>
					<?php endif; ?></span>
					</td>
					<td class="item align_center"><?php echo ((is_array($_tmp=$this->_tpl_vars['bought']['quantity'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
</td>
					<td class="item align_center"><?php echo $this->_tpl_vars['bought']['firstname']; ?>
 <?php echo $this->_tpl_vars['bought']['lastname']; ?>
</td>
					<td class="last_item align_center"><?php echo ((is_array($_tmp=$this->_tpl_vars['bought']['date_add'])) ? $this->_run_mod_handler('date_format', true, $_tmp, "%Y-%m-%d") : smarty_modifier_date_format($_tmp, "%Y-%m-%d")); ?>
</td>
				</tr>
			<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?>
		<?php endforeach; endif; unset($_from); ?>
		</tbody>
	</table>
	<?php endif; ?>
	<?php endif; ?>
<?php else: ?>
	<?php echo smartyTranslate(array('s' => 'No products','mod' => 'blockwishlist'), $this);?>

<?php endif; ?>