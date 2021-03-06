<?php /* Smarty version 2.6.20, created on 2014-06-30 17:54:36
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl', 19, false),array('function', 'convertPrice', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl', 79, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl', 68, false),array('modifier', 'sizeof', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl', 68, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/prestashop/order-carrier.tpl', 72, false),)), $this); ?>
<script type="text/javascript">
<!--
	var baseDir = '<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
';
-->
</script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_dir']; ?>
layer.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['content_dir']; ?>
js/conditions.js"></script>
<?php if (! $this->_tpl_vars['virtual_cart'] && $this->_tpl_vars['giftAllowed'] && $this->_tpl_vars['cart']->gift == 1): ?>
<script type="text/javascript"><?php echo '
// <![CDATA[
    $(\'document\').ready( function(){
        $(\'#gift_div\').toggle(\'slow\');
    });
//]]>
'; ?>
</script>
<?php endif; ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./thickbox.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php ob_start(); ?><?php echo smartyTranslate(array('s' => 'Shipping'), $this);?>
<?php $this->_smarty_vars['capture']['path'] = ob_get_contents(); ob_end_clean(); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<h2 class="page_title_h2"><?php echo smartyTranslate(array('s' => 'Shipping'), $this);?>
</h2>

<?php $this->assign('current_step', 'shipping'); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./order-steps.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<div class="my-account-container">

	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	
	<form id="form" action="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php" method="post" onsubmit="return acceptCGV('<?php echo smartyTranslate(array('s' => 'Please accept the terms of service before the next step.','js' => 1), $this);?>
');">
	<br />
	
	<?php if ($this->_tpl_vars['conditions']): ?>
		<h3 class="condition_title"><?php echo smartyTranslate(array('s' => 'Terms of service'), $this);?>
</h3>
		<p class="checkbox">
			<input type="checkbox" name="cgv" id="cgv" value="1" <?php if ($this->_tpl_vars['checkedTOS']): ?>checked="checked"<?php endif; ?> />
			<label for="cgv">&nbsp;<?php echo smartyTranslate(array('s' => 'I agree with the terms of service and I adhere to them unconditionally.'), $this);?>
</label> <a href="<?php echo $this->_tpl_vars['link_conditions']; ?>
" class="thickbox"><?php echo smartyTranslate(array('s' => '(read)'), $this);?>
</a>
		</p>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['virtual_cart']): ?>
		<input id="input_virtual_carrier" class="hidden" type="hidden" name="id_carrier" value="0" />
	<?php else: ?>
		<h3 class="carrier_title"><?php echo smartyTranslate(array('s' => 'Choose your delivery method'), $this);?>
</h3>
		<?php if ($this->_tpl_vars['recyclablePackAllowed']): ?>
		<p class="checkbox">
			<input type="checkbox" name="recyclable" id="recyclable" value="1" <?php if ($this->_tpl_vars['recyclable'] == 1): ?>checked="checked"<?php endif; ?> />
			<label for="recyclable"><?php echo smartyTranslate(array('s' => 'I agree to receive my order in recycled packaging'), $this);?>
.</label>
		</p>
		<?php endif; ?>
	
		<?php if ($this->_tpl_vars['carriers'] && count ( $this->_tpl_vars['carriers'] )): ?>
		<div class="table_block">
			<table class="std">
				<thead>
					<tr>
						<th class="carrier_action first_item"></th>
						<th class="carrier_name item"><?php echo smartyTranslate(array('s' => 'Carrier'), $this);?>
</th>
						<th class="carrier_infos item"><?php echo smartyTranslate(array('s' => 'Information'), $this);?>
</th>
						<th class="carrier_price last_item"><?php echo smartyTranslate(array('s' => 'Price'), $this);?>
</th>
					</tr>
				</thead>
				<tbody>
				<?php $_from = $this->_tpl_vars['carriers']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['myLoop'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['myLoop']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['carrier']):
        $this->_foreach['myLoop']['iteration']++;
?>
					<tr class="<?php if (($this->_foreach['myLoop']['iteration'] <= 1)): ?>first_item<?php elseif (($this->_foreach['myLoop']['iteration'] == $this->_foreach['myLoop']['total'])): ?>last_item<?php endif; ?> <?php if (($this->_foreach['myLoop']['iteration']-1) % 2): ?>alternate_item<?php else: ?>item<?php endif; ?>">
						<td class="carrier_action radio">
							<input type="radio" name="id_carrier" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['id_carrier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" id="id_carrier<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['id_carrier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" <?php if ($this->_tpl_vars['carrier']['id_carrier'] == $this->_tpl_vars['checked'] || ( $this->_tpl_vars['checked'] == 0 && $this->_tpl_vars['i'] == 0 ) || ( sizeof($this->_tpl_vars['carriers']) == 1 ) || $this->_tpl_vars['default_carrier'] == $this->_tpl_vars['carrier']['id_carrier']): ?>checked="checked"<?php endif; ?> />
						</td>
						<td class="carrier_name">
							<label for="id_carrier<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['id_carrier'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
">
								<?php if ($this->_tpl_vars['carrier']['img']): ?><img src="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['img'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" /><?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>
							</label>
						</td>
						<td class="carrier_infos"><?php echo ((is_array($_tmp=$this->_tpl_vars['carrier']['delay'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</td>
						<td class="carrier_price">
							<?php if ($this->_tpl_vars['carrier']['price']): ?>
								<span class="price">
									<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['carrier']['price_tax_exc']), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['carrier']['price']), $this);?>
<?php endif; ?>
								</span>
								<?php if ($this->_tpl_vars['use_taxes']): ?><?php if ($this->_tpl_vars['priceDisplay'] == 1): ?> <?php echo smartyTranslate(array('s' => '(tax excl.)'), $this);?>
<?php else: ?> <?php echo smartyTranslate(array('s' => '(tax incl.)'), $this);?>
<?php endif; ?><?php endif; ?>
							<?php else: ?>
								<?php echo smartyTranslate(array('s' => 'Free!'), $this);?>

							<?php endif; ?>
						</td>
					</tr>
				<?php endforeach; endif; unset($_from); ?>
				<?php echo $this->_tpl_vars['HOOK_EXTRACARRIER']; ?>

				</tbody>
			</table>
			<div style="display: none;" id="extra_carrier"></div>
		</div>
		<?php else: ?>
			<p class="warning"><?php echo smartyTranslate(array('s' => 'There are no carriers available that will deliver to this address!'), $this);?>
</td></tr>
		<?php endif; ?>
	
		<?php if ($this->_tpl_vars['giftAllowed']): ?>
			<h3 class="gift_title"><?php echo smartyTranslate(array('s' => 'Gift'), $this);?>
</h3>
			<p class="checkbox">
				<input type="checkbox" name="gift" id="gift" value="1" <?php if ($this->_tpl_vars['cart']->gift == 1): ?>checked="checked"<?php endif; ?> onclick="$('#gift_div').toggle('slow');" />
				<label for="gift">&nbsp;<?php echo smartyTranslate(array('s' => 'I would like the order to be gift-wrapped.'), $this);?>
</label> <?php if ($this->_tpl_vars['gift_wrapping_price'] > 0): ?>
					(<?php echo smartyTranslate(array('s' => 'Additional cost of'), $this);?>

					<span class="price">
						<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping_tax_exc']), $this);?>
<?php else: ?><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['total_wrapping']), $this);?>
<?php endif; ?>
					</span>
					<?php if ($this->_tpl_vars['use_taxes']): ?><?php if ($this->_tpl_vars['priceDisplay'] == 1): ?> <?php echo smartyTranslate(array('s' => '(tax excl.)'), $this);?>
<?php else: ?> <?php echo smartyTranslate(array('s' => '(tax incl.)'), $this);?>
<?php endif; ?><?php endif; ?>)
				<?php endif; ?>
			</p>
			<p id="gift_div" class="textarea">
				<label for="gift_message"><?php echo smartyTranslate(array('s' => 'If you wish, you can add a note to the gift:'), $this);?>
</label>
				<textarea rows="5" cols="35" id="gift_message" name="gift_message"><?php echo ((is_array($_tmp=$this->_tpl_vars['cart']->gift_message)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</textarea>
			</p>
		<?php endif; ?>
	<?php endif; ?>
	
		<br /><br />
		<p class="cart_navigation submit">
			<input type="hidden" name="step" value="3" />
			<input type="hidden" name="back" value="<?php echo $this->_tpl_vars['back']; ?>
" />
			<a href="<?php echo $this->_tpl_vars['base_dir_ssl']; ?>
order.php?step=1<?php if ($this->_tpl_vars['back']): ?>&back=<?php echo $this->_tpl_vars['back']; ?>
<?php endif; ?>" title="<?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
" class="button">&laquo; <?php echo smartyTranslate(array('s' => 'Previous'), $this);?>
</a>
			<input type="submit" name="processCarrier" value="<?php echo smartyTranslate(array('s' => 'Next'), $this);?>
 &raquo;" class="exclusive" />
		</p>
	</form>

</div>