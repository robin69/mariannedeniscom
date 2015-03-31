<?php /* Smarty version 2.6.20, created on 2015-03-31 12:32:59
         compiled from /home/www/mariannedenis.com/themes/prestashop/product.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 2, false),array('modifier', 'html_entity_decode', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 7, false),array('modifier', 'floatval', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 8, false),array('modifier', 'intval', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 9, false),array('modifier', 'escape', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 23, false),array('modifier', 'default', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 25, false),array('modifier', 'date_format', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 32, false),array('modifier', 'cat', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 44, false),array('modifier', 'addslashes', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 76, false),array('modifier', 'htmlspecialchars', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 97, false),array('modifier', 'truncate', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 343, false),array('modifier', 'strip_tags', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 344, false),array('modifier', 'stripslashes', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 435, false),array('function', 'l', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 66, false),array('function', 'convertPrice', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 150, false),array('function', 'counter', '/home/www/mariannedenis.com/themes/prestashop/product.tpl', 414, false),)), $this); ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php if (count($this->_tpl_vars['errors']) == 0): ?>
<script type="text/javascript">
// <![CDATA[

// PrestaShop internal settings
var currencySign = '<?php echo ((is_array($_tmp=$this->_tpl_vars['currencySign'])) ? $this->_run_mod_handler('html_entity_decode', true, $_tmp, 2, "UTF-8") : html_entity_decode($_tmp, 2, "UTF-8")); ?>
';
var currencyRate = '<?php echo ((is_array($_tmp=$this->_tpl_vars['currencyRate'])) ? $this->_run_mod_handler('floatval', true, $_tmp) : floatval($_tmp)); ?>
';
var currencyFormat = '<?php echo ((is_array($_tmp=$this->_tpl_vars['currencyFormat'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
';
var currencyBlank = '<?php echo ((is_array($_tmp=$this->_tpl_vars['currencyBlank'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
';
var taxRate = <?php echo ((is_array($_tmp=$this->_tpl_vars['product']->tax_rate)) ? $this->_run_mod_handler('floatval', true, $_tmp) : floatval($_tmp)); ?>
;
var jqZoomEnabled = <?php if ($this->_tpl_vars['jqZoomEnabled']): ?>true<?php else: ?>false<?php endif; ?>;

//JS Hook
var oosHookJsCodeFunctions = new Array();

// Parameters
var id_product = '<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->id)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
';
var productHasAttributes = <?php if (isset ( $this->_tpl_vars['groups'] )): ?>true<?php else: ?>false<?php endif; ?>;
var quantitiesDisplayAllowed = <?php if ($this->_tpl_vars['display_qties'] == 1): ?>true<?php else: ?>false<?php endif; ?>;
var quantityAvailable = <?php if ($this->_tpl_vars['display_qties'] == 1 && $this->_tpl_vars['product']->quantity): ?><?php echo $this->_tpl_vars['product']->quantity; ?>
<?php else: ?>0<?php endif; ?>;
var allowBuyWhenOutOfStock = <?php if ($this->_tpl_vars['allow_oosp'] == 1): ?>true<?php else: ?>false<?php endif; ?>;
var availableNowValue = '<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->available_now)) ? $this->_run_mod_handler('escape', true, $_tmp, 'quotes', 'UTF-8') : smarty_modifier_escape($_tmp, 'quotes', 'UTF-8')); ?>
';
var availableLaterValue = '<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->available_later)) ? $this->_run_mod_handler('escape', true, $_tmp, 'quotes', 'UTF-8') : smarty_modifier_escape($_tmp, 'quotes', 'UTF-8')); ?>
';
var productPriceWithoutReduction = <?php echo ((is_array($_tmp=@$this->_tpl_vars['product']->getPriceWithoutReduct())) ? $this->_run_mod_handler('default', true, $_tmp, 'null') : smarty_modifier_default($_tmp, 'null')); ?>
;
var reduction_percent = <?php if ($this->_tpl_vars['product']->reduction_percent): ?><?php echo $this->_tpl_vars['product']->reduction_percent; ?>
<?php else: ?>0<?php endif; ?>;
var reduction_price = <?php if ($this->_tpl_vars['product']->reduction_percent): ?>0<?php else: ?><?php echo $this->_tpl_vars['product']->getPrice(true,@NULL,2,@NULL,true); ?>
<?php endif; ?>;
var reduction_from = '<?php echo $this->_tpl_vars['product']->reduction_from; ?>
';
var reduction_to = '<?php echo $this->_tpl_vars['product']->reduction_to; ?>
';
var group_reduction = '<?php echo $this->_tpl_vars['group_reduction']; ?>
';
var default_eco_tax = <?php echo $this->_tpl_vars['product']->ecotax; ?>
;
var currentDate = '<?php echo ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')); ?>
';
var maxQuantityToAllowDisplayOfLastQuantityMessage = <?php echo $this->_tpl_vars['last_qties']; ?>
;
var noTaxForThisProduct = <?php if ($this->_tpl_vars['no_tax'] == 1): ?>true<?php else: ?>false<?php endif; ?>;
var displayPrice = <?php echo $this->_tpl_vars['priceDisplay']; ?>
;
var productReference = '<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->reference)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
';

// Customizable field
var img_ps_dir = '<?php echo $this->_tpl_vars['img_ps_dir']; ?>
';
var customizationFields = new Array();
<?php $this->assign('imgIndex', 0); ?>
<?php $this->assign('textFieldIndex', 0); ?>
<?php $_from = $this->_tpl_vars['customizationFields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['customizationFields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['customizationFields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['field']):
        $this->_foreach['customizationFields']['iteration']++;
?>
<?php $this->assign('key', ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp='pictures_')) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['product']->id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['product']->id)))) ? $this->_run_mod_handler('cat', true, $_tmp, '_') : smarty_modifier_cat($_tmp, '_')))) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['field']['id_customization_field']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['field']['id_customization_field']))); ?>
	customizationFields[<?php echo ((is_array($_tmp=($this->_foreach['customizationFields']['iteration']-1))) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
] = new Array();
	customizationFields[<?php echo ((is_array($_tmp=($this->_foreach['customizationFields']['iteration']-1))) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
][0] = '<?php if (((is_array($_tmp=$this->_tpl_vars['field']['type'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) == 0): ?>img<?php echo $this->_tpl_vars['imgIndex']++; ?>
<?php else: ?>textField<?php echo $this->_tpl_vars['textFieldIndex']++; ?>
<?php endif; ?>';
	customizationFields[<?php echo ((is_array($_tmp=($this->_foreach['customizationFields']['iteration']-1))) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
][1] = <?php if (((is_array($_tmp=$this->_tpl_vars['field']['type'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) == 0 && $this->_tpl_vars['pictures'][$this->_tpl_vars['key']]): ?>2<?php else: ?><?php echo ((is_array($_tmp=$this->_tpl_vars['field']['required'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
<?php endif; ?>;
<?php endforeach; endif; unset($_from); ?>

// Images
var img_prod_dir = '<?php echo $this->_tpl_vars['img_prod_dir']; ?>
';
var combinationImages = new Array();
<?php $_from = $this->_tpl_vars['combinationImages']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['f_combinationImages'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['f_combinationImages']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['combinationId'] => $this->_tpl_vars['combination']):
        $this->_foreach['f_combinationImages']['iteration']++;
?>
	combinationImages[<?php echo $this->_tpl_vars['combinationId']; ?>
] = new Array();
	<?php $_from = $this->_tpl_vars['combination']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['f_combinationImage'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['f_combinationImage']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['image']):
        $this->_foreach['f_combinationImage']['iteration']++;
?>
		combinationImages[<?php echo $this->_tpl_vars['combinationId']; ?>
][<?php echo ($this->_foreach['f_combinationImage']['iteration']-1); ?>
] = <?php echo ((is_array($_tmp=$this->_tpl_vars['image']['id_image'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
;
	<?php endforeach; endif; unset($_from); ?>
<?php endforeach; endif; unset($_from); ?>

combinationImages[0] = new Array();
<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['f_defaultImages'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['f_defaultImages']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['image']):
        $this->_foreach['f_defaultImages']['iteration']++;
?>
	combinationImages[0][<?php echo ($this->_foreach['f_defaultImages']['iteration']-1); ?>
] = <?php echo $this->_tpl_vars['image']['id_image']; ?>
;
<?php endforeach; endif; unset($_from); ?>

// Translations
var doesntExist = '<?php echo smartyTranslate(array('s' => 'The product does not exist in this model. Please choose another.','js' => 1), $this);?>
';
var doesntExistNoMore = '<?php echo smartyTranslate(array('s' => 'This product is no longer in stock','js' => 1), $this);?>
';
var doesntExistNoMoreBut = '<?php echo smartyTranslate(array('s' => 'with those attributes but is available with others','js' => 1), $this);?>
';
var uploading_in_progress = '<?php echo smartyTranslate(array('s' => 'Uploading in progress, please wait...','js' => 1), $this);?>
';
var fieldRequired = '<?php echo smartyTranslate(array('s' => 'Please fill all required fields','js' => 1), $this);?>
';


<?php if (isset ( $this->_tpl_vars['groups'] )): ?>
	// Combinations
	<?php $_from = $this->_tpl_vars['combinations']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['idCombination'] => $this->_tpl_vars['combination']):
?>
		addCombination(<?php echo ((is_array($_tmp=$this->_tpl_vars['idCombination'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
, new Array(<?php echo $this->_tpl_vars['combination']['list']; ?>
), <?php echo $this->_tpl_vars['combination']['quantity']; ?>
, <?php echo $this->_tpl_vars['combination']['price']; ?>
, <?php echo $this->_tpl_vars['combination']['ecotax']; ?>
, <?php echo $this->_tpl_vars['combination']['id_image']; ?>
, '<?php echo ((is_array($_tmp=$this->_tpl_vars['combination']['reference'])) ? $this->_run_mod_handler('addslashes', true, $_tmp) : addslashes($_tmp)); ?>
');
	<?php endforeach; endif; unset($_from); ?>
	// Colors
	<?php if (count($this->_tpl_vars['colors']) > 0): ?>
		<?php if ($this->_tpl_vars['product']->id_color_default): ?> var id_color_default = <?php echo ((is_array($_tmp=$this->_tpl_vars['product']->id_color_default)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
;<?php endif; ?>
	<?php endif; ?>
<?php endif; ?>

//]]>
</script>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./breadcrumb.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>



<!-- sof. CONTENT -->
			<div id="content">
				<!-- PRODUCT -->
				<div class="product-img" id="image-block">
					<?php if ($this->_tpl_vars['have_image']): ?>
					<?php $this->assign('imageIds', ($this->_tpl_vars['product']->id)."-".($this->_tpl_vars['image']['id_image'])); ?>
							<a href="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['imageIds'],'thickbox'); ?>
" rel="other-views" class="thickbox <?php if (($this->_foreach['thumbnails']['iteration'] <= 1)): ?>shown<?php endif; ?>" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['image']['legend'])) ? $this->_run_mod_handler('htmlspecialchars', true, $_tmp) : htmlspecialchars($_tmp)); ?>
"><img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['cover']['id_image'],'large'); ?>
" <?php if ($this->_tpl_vars['jqZoomEnabled']): ?>class="jqzoom" alt="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['cover']['id_image'],'thickbox'); ?>
"<?php else: ?> title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" <?php endif; ?> id="bigpic" width="425" height="425"/></a>
							<?php if ($this->_tpl_vars['product']->on_sale): ?>
							<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
onsale.png" alt="<?php echo smartyTranslate(array('s' => 'On sale'), $this);?>
" class="on_sale_img_zoom_format"/>
							<?php endif; ?>
					<?php else: ?>
						<img src="<?php echo $this->_tpl_vars['img_prod_dir']; ?>
<?php echo $this->_tpl_vars['lang_iso']; ?>
-default-large.jpg" alt="" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" />
					<?php endif; ?>
					
					<!-- VIGNETTES -->
					<?php if (count ( $this->_tpl_vars['images'] ) > 0): ?>
					<div class="product-img-thumbs" id="views_block" <?php if (count ( $this->_tpl_vars['images'] ) < 2): ?>class="hidden"<?php endif; ?>>
						
						<!-- thumbnails -->
						<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['thumbnails'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['thumbnails']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['image']):
        $this->_foreach['thumbnails']['iteration']++;
?>
						<?php $this->assign('imageIds', ($this->_tpl_vars['product']->id)."-".($this->_tpl_vars['image']['id_image'])); ?>
							<a href="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['imageIds'],'thickbox'); ?>
" rel="other-views" class="thickbox <?php if (($this->_foreach['thumbnails']['iteration'] <= 1)): ?>shown<?php endif; ?>" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['image']['legend'])) ? $this->_run_mod_handler('htmlspecialchars', true, $_tmp) : htmlspecialchars($_tmp)); ?>
">
								<img id="thumb_<?php echo $this->_tpl_vars['image']['id_image']; ?>
" src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['imageIds'],'medium'); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['image']['legend'])) ? $this->_run_mod_handler('htmlspecialchars', true, $_tmp) : htmlspecialchars($_tmp)); ?>
" width="75" height="75" />
							</a>
						<?php endforeach; endif; unset($_from); ?>
						
					</div>
					<?php endif; ?>
					
				</div>
				<div class="product-desc">
				
					<!-- add to cart form-->
					<form id="buy_block" action="<?php echo $this->_tpl_vars['base_dir']; ?>
cart.php" method="post">
			
						<!-- hidden datas -->
						<p class="hidden">
							<input type="hidden" name="token" value="<?php echo $this->_tpl_vars['static_token']; ?>
" />
							<input type="hidden" name="id_product" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->id)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" id="product_page_product_id" />
							<input type="hidden" name="add" value="1" />
							<input type="hidden" name="id_product_attribute" id="idCombination" value="" />
						</p>
					
						<h2><?php echo ((is_array($_tmp=$this->_tpl_vars['product']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</h2>
						<span id="product_reference" <?php if (isset ( $this->_tpl_vars['groups'] ) || ! $this->_tpl_vars['product']->reference): ?>style="display:none;"<?php endif; ?>>R&eacute;f. <?php echo ((is_array($_tmp=$this->_tpl_vars['product']->reference)) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
</span>
						<span>
						
						<!-- sof. PRICES -->
						
						<?php if ($this->_tpl_vars['product']->on_sale): ?>
							<strong class="on_sale"><?php echo smartyTranslate(array('s' => 'On sale!'), $this);?>
</strong> &nbsp;|&nbsp; 
						<?php elseif (( $this->_tpl_vars['product']->reduction_price != 0 || $this->_tpl_vars['product']->reduction_percent != 0 ) && ( $this->_tpl_vars['product']->reduction_from == $this->_tpl_vars['product']->reduction_to || ( ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) <= $this->_tpl_vars['product']->reduction_to && ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) >= $this->_tpl_vars['product']->reduction_from ) )): ?>
							<strong class="discount"><?php echo smartyTranslate(array('s' => 'Price lowered!'), $this);?>
</strong>
						<?php endif; ?>
						
						<?php if (( $this->_tpl_vars['product']->reduction_price != 0 || $this->_tpl_vars['product']->reduction_percent != 0 ) && ( $this->_tpl_vars['product']->reduction_from == $this->_tpl_vars['product']->reduction_to || ( ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) <= $this->_tpl_vars['product']->reduction_to && ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) >= $this->_tpl_vars['product']->reduction_from ) )): ?>
							  
							 <p id="old_price"> 
							<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
								<strong id="old_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getPriceWithoutReduct()), $this);?>
</strong>
									<?php if ($this->_tpl_vars['tax_enabled']): ?><?php echo smartyTranslate(array('s' => 'tax incl.'), $this);?>
<?php endif; ?>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?>
								<strong id="old_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getPriceWithoutReduct(true)), $this);?>
</strong>
									<?php if ($this->_tpl_vars['tax_enabled']): ?><?php echo smartyTranslate(array('s' => 'tax excl.'), $this);?>
<?php endif; ?>
							<?php endif; ?>
							</p>
						<?php endif; ?>
						<?php if (! $this->_tpl_vars['priceDisplay'] || $this->_tpl_vars['priceDisplay'] == 2): ?>
							<strong id="our_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getPrice(true,@NULL)), $this);?>
</strong>
								<?php if ($this->_tpl_vars['tax_enabled']): ?><?php echo smartyTranslate(array('s' => 'tax incl.'), $this);?>
<?php endif; ?>
						<?php endif; ?>
						<?php if ($this->_tpl_vars['priceDisplay'] == 1): ?>
							<strong id="our_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getPrice(false,@NULL)), $this);?>
</strong>
								<?php if ($this->_tpl_vars['tax_enabled']): ?><?php echo smartyTranslate(array('s' => 'tax excl.'), $this);?>
<?php endif; ?>
						<?php endif; ?>
						<?php if ($this->_tpl_vars['priceDisplay'] == 2): ?>
							<strong id="pretaxe_price"><strong id="pretaxe_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getPrice(false,@NULL)), $this);?>
</strong>&nbsp;<?php echo smartyTranslate(array('s' => 'tax excl.'), $this);?>
</strong>
						<?php endif; ?>
						
						<?php if ($this->_tpl_vars['product']->reduction_percent != 0 && ( $this->_tpl_vars['product']->reduction_from == $this->_tpl_vars['product']->reduction_to || ( ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) <= $this->_tpl_vars['product']->reduction_to && ((is_array($_tmp=time())) ? $this->_run_mod_handler('date_format', true, $_tmp, '%Y-%m-%d %H:%M:%S') : smarty_modifier_date_format($_tmp, '%Y-%m-%d %H:%M:%S')) >= $this->_tpl_vars['product']->reduction_from ) )): ?>
							<p id="reduction_percent"><?php echo smartyTranslate(array('s' => '(price reduced by'), $this);?>
 <span id="reduction_percent_display"><?php echo ((is_array($_tmp=$this->_tpl_vars['product']->reduction_percent)) ? $this->_run_mod_handler('floatval', true, $_tmp) : floatval($_tmp)); ?>
</span> %<?php echo smartyTranslate(array('s' => ')'), $this);?>
</p>
						<?php endif; ?>
						
						<?php if (count($this->_tpl_vars['packItems'])): ?>
							<p class="pack_price" style="display:none;"><?php echo smartyTranslate(array('s' => 'instead of'), $this);?>
 <span style="text-decoration: line-through;"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->getNoPackPrice()), $this);?>
</span></p>
						<?php endif; ?>
						
						<?php if ($this->_tpl_vars['product']->ecotax != 0): ?>
							<p class="price-ecotax"><?php echo smartyTranslate(array('s' => 'include'), $this);?>
 <strong id="ecotax_price_display"><?php echo Product::convertPrice(array('price' => $this->_tpl_vars['product']->ecotax), $this);?>
</strong> <?php echo smartyTranslate(array('s' => 'for green tax'), $this);?>
</p>
						<?php endif; ?>
						
						<!-- eof. PRICES -->
						
						</span>
						<p>
							<?php if ($this->_tpl_vars['product']->description): ?>
								<div id="description_content" class="rte align_justify"><?php echo $this->_tpl_vars['product']->description; ?>
</div>
								<a href="javascript:{}" class="button" style="display:none;"><?php echo smartyTranslate(array('s' => 'More details'), $this);?>
</a>
							<?php endif; ?>
						</p>
						
						<!-- PACKS -->
						<?php if (count($this->_tpl_vars['packItems']) > 0): ?>
							<div>
								<h2 class="pack_content_title">Contenu de l'ensemble</h2>
								<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-pack.tpl", 'smarty_include_vars' => array('products' => $this->_tpl_vars['packItems'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
							</div>
						<?php endif; ?>
						
						<!-- old attributes Sophie 
						<?php if (isset ( $this->_tpl_vars['groups'] )): ?>
						
						<?php $_from = $this->_tpl_vars['groups']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id_attribute_group'] => $this->_tpl_vars['group']):
?>
							<?php $this->assign('groupName', ((is_array($_tmp='group_')) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['id_attribute_group']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['id_attribute_group']))); ?>
							<select name="<?php echo $this->_tpl_vars['groupName']; ?>
" id="group_<?php echo ((is_array($_tmp=$this->_tpl_vars['id_attribute_group'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" onchange="javascript:findCombination();<?php if (count($this->_tpl_vars['colors']) > 0): ?>$('#resetImages').show('slow');<?php endif; ?>">
								<option value="" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['group_attribute'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" selected="selected"><?php echo ((is_array($_tmp=$this->_tpl_vars['group']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
								<?php $_from = $this->_tpl_vars['group']['attributes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id_attribute'] => $this->_tpl_vars['group_attribute']):
?>
									<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['id_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['group_attribute'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['group_attribute'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
								<?php endforeach; endif; unset($_from); ?>
							</select>
						<?php endforeach; endif; unset($_from); ?>
						<?php endif; ?>
						END OF ALOD ATTRIBUTES SOPHIE -->
						
						
						
						
						<select name="qty" id="quantity_wanted" value="<?php if (isset ( $this->_tpl_vars['quantityBackup'] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['quantityBackup'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
<?php else: ?>1<?php endif; ?>" style="display:none;">
							<option value=""><?php echo smartyTranslate(array('s' => 'Quantity :'), $this);?>
</option>
							<option value="1" selected="selected">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
						</select>
			
						
						<!-- ADD TO CART -->
						
						<div class="action_commander">
							<ol>
								<!-- attributes original -->
								<?php if (isset ( $this->_tpl_vars['groups'] )): ?>
								<div id="attributes">
								<h3>CHOISISSEZ : </h3>
								<?php $_from = $this->_tpl_vars['groups']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id_attribute_group'] => $this->_tpl_vars['group']):
?>
									<p>
									<?php $this->assign('groupName', ((is_array($_tmp='group_')) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['id_attribute_group']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['id_attribute_group']))); ?>
									<select name="<?php echo $this->_tpl_vars['groupName']; ?>
" id="group_<?php echo ((is_array($_tmp=$this->_tpl_vars['id_attribute_group'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" onchange="javascript:findCombination();<?php if (count($this->_tpl_vars['colors']) > 0): ?>$('#resetImages').show('slow');<?php endif; ?>">
										<?php $_from = $this->_tpl_vars['group']['attributes']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['id_attribute'] => $this->_tpl_vars['group_attribute']):
?>
											<option value="<?php echo ((is_array($_tmp=$this->_tpl_vars['id_attribute'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
"<?php if (( isset ( $_GET[$this->_tpl_vars['groupName']] ) && ((is_array($_tmp=$_GET[$this->_tpl_vars['groupName']])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) == $this->_tpl_vars['id_attribute'] ) || $this->_tpl_vars['group']['default'] == $this->_tpl_vars['id_attribute']): ?> selected="selected"<?php endif; ?> title="<?php echo ((is_array($_tmp=$this->_tpl_vars['group_attribute'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['group']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
 <?php echo ((is_array($_tmp=$this->_tpl_vars['group_attribute'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</option>
										<?php endforeach; endif; unset($_from); ?>
									</select>
									</p>
								<?php endforeach; endif; unset($_from); ?>
								</div>
								<?php endif; ?>
						
						
									<!-- eof attributes original -->
								<li><input type="submit" name="submit" <?php if (! $this->_tpl_vars['allow_oosp'] && $this->_tpl_vars['product']->quantity == 0): ?> style="display:none;"<?php endif; ?> id="add_to_cart" class="add2cart" value="<?php echo smartyTranslate(array('s' => 'Add to cart'), $this);?>
" onfocus="this.blur();" /></li>
								<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
order.php">FINALISER MON ACHAT >><br /><img class="cb_small" src="<?php echo $this->_tpl_vars['img_dir']; ?>
cb.jpg" /></a></li>
							</ol>
							<p class="info_cmd">Frais de ports offerts dès 50€ d'achat !</p>
							
						</div>
						<?php if (isset ( $this->_tpl_vars['accessories'] ) && $this->_tpl_vars['accessories']): ?>
					<br /><br />
			  	<!-- LIEN PRODUITS SIMILAIRES -->
			  		<ul class="cross_selling">
			  			<li><a href="javascript:{}" title="" id="produit_access_similar_link" >Vous aimerez aussi &raquo;</a></li>
			  			
			  			<li><a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['link']->getProductLink($this->_tpl_vars['id_product'],$_GET['id_product']['link_rewrite']))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
/#sameCategory" title="" id="same_category_link">Dans la même catégorie &raquo;</a></li>
			  			<li class="clear"> </li>
			  		</ul>
			  		<div class="clear"></div>
					
						
					<?php endif; ?>
						
						<!-- ADD TO WISHLIST -->
						<!-- <a href="javascript:;" class="add2wishlist" onclick="javascript:WishlistCart('wishlist_block_list', 'add', '<?php echo ((is_array($_tmp=$this->_tpl_vars['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
', $('#idCombination').val(), document.getElementById('quantity_wanted').value);">Ajouter &agrave; ma wishlist</a>
						</form>	-->
						<?php echo $this->_tpl_vars['HOOK_PRODUCT_ACTIONS']; ?>

						<!-- ADD THIS 
						<div class="addthis_toolbox addthis_default_style" >
						    <a class="addthis_button_facebook"></a>
						    <a class="addthis_button_twitter"></a>   
							<a class="addthis_button_myspace"></a>  
							<a class="addthis_button_digg"></a>  
						    <a class="addthis_button_googlebuzz"></a>
						    <a class="addthis_button_email"></a>
						    <a class="addthis_button_print"></a>
						    <a class="addthis_button_favorites"></a>
						    <a href="http://addthis.com/bookmark.php?v=250" class="addthis_button_compact"></a>
						    <a class="addthis_button_facebook_like"></a>
						</div>
						<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=xa-4cd8fe9828a3bc52"></script>
						
						
						 ADDTHIS -->
<!--<a  class="addthis_button_facebook"
      addthis:url="<?php echo $this->_tpl_vars['base_dir']; ?>
<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['product']->link_rewrite,$this->_tpl_vars['cover']['id_image'],'small'); ?>
"
      addthis:title="<?php echo ((is_array($_tmp=$this->_tpl_vars['product']->name)) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"
      addthis:description="<?php echo $this->_tpl_vars['product']->description; ?>
"></a>-->
					
					
				</div>
				<div class="clear"></div>
<!-- eof. CONTENT -->

<!-- description and features -->
<?php if ($this->_tpl_vars['product']->description || $this->_tpl_vars['features'] || $this->_tpl_vars['accessories'] || $this->_tpl_vars['HOOK_PRODUCT_TAB'] || $this->_tpl_vars['attachments']): ?>
<div id="more_info_block" class="clear">

	<?php echo $this->_tpl_vars['HOOK_PRODUCT_TAB_CONTENT']; ?>


	<ul id="more_info_tabs" class="idTabs idTabsShort">
		<?php if ($this->_tpl_vars['features']): ?><li><a id="more_info_tab_data_sheet" href="#idTab2"><?php echo smartyTranslate(array('s' => 'Data sheet'), $this);?>
</a></li><?php endif; ?>
		<?php if ($this->_tpl_vars['attachments']): ?><li><a id="more_info_tab_attachments" href="#idTab9"><?php echo smartyTranslate(array('s' => 'Download'), $this);?>
</a></li><?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['accessories'] ) && $this->_tpl_vars['accessories']): ?><li><a href="#idTab4">Vous aimerez aussi...</a></li><?php endif; ?>
		<?php echo $this->_tpl_vars['HOOK_PRODUCT_TAB']; ?>

	</ul>
	<div id="more_info_sheets" class="sheets align_justify">
	<?php if ($this->_tpl_vars['features']): ?>
		<!-- product's features -->
		<ul id="idTab2" class="bullet">
		<?php $_from = $this->_tpl_vars['features']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['feature']):
?>
			<li><span><?php echo ((is_array($_tmp=$this->_tpl_vars['feature']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</span> <?php echo ((is_array($_tmp=$this->_tpl_vars['feature']['value'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
		<?php endforeach; endif; unset($_from); ?>
		</ul>
	<?php endif; ?>
	<?php if ($this->_tpl_vars['attachments']): ?>
		<ul id="idTab9" class="bullet">
		<?php $_from = $this->_tpl_vars['attachments']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['attachment']):
?>
			<li><a href="<?php echo $this->_tpl_vars['base_dir']; ?>
attachment.php?id_attachment=<?php echo $this->_tpl_vars['attachment']['id_attachment']; ?>
"><?php echo ((is_array($_tmp=$this->_tpl_vars['attachment']['name'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a><br /><?php echo ((is_array($_tmp=$this->_tpl_vars['attachment']['description'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</li>
		<?php endforeach; endif; unset($_from); ?>
		</ul>
	<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['accessories'] ) && $this->_tpl_vars['accessories']): ?>
		<!-- accessories -->
			<div class="accessories_block clearfix" id="accessories_block_list">
				<div class="block_content">
				
					<?php $_from = $this->_tpl_vars['accessories']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['accessories_list'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['accessories_list']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['accessory']):
        $this->_foreach['accessories_list']['iteration']++;
?>
						<?php $this->assign('accessoryLink', $this->_tpl_vars['link']->getProductLink($this->_tpl_vars['accessory']['id_product'],$this->_tpl_vars['accessory']['link_rewrite'],$this->_tpl_vars['accessory']['category'])); ?>
						
						<div class="product_access_bloc">
							<a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['accessoryLink'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['accessory']['legend'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" class="product_image_accessories"><img src="<?php echo $this->_tpl_vars['link']->getImageLink($this->_tpl_vars['accessory']['link_rewrite'],$this->_tpl_vars['accessory']['id_image'],'medium'); ?>
" alt="<?php echo ((is_array($_tmp=$this->_tpl_vars['accessory']['legend'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" width="80" height="80" /></a>
							
							<div class="product_access_bloc_txt">
								<h5><a href="<?php echo ((is_array($_tmp=$this->_tpl_vars['accessoryLink'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['accessory']['legend'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['accessory']['name'])) ? $this->_run_mod_handler('truncate', true, $_tmp, 20) : smarty_modifier_truncate($_tmp, 20)))) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
</a></h5>	
								<p><?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['accessory']['description_short'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)))) ? $this->_run_mod_handler('truncate', true, $_tmp, 100, '...') : smarty_modifier_truncate($_tmp, 100, '...')); ?>
</p>
								<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
cart.php?qty=1&amp;id_product=<?php echo ((is_array($_tmp=$this->_tpl_vars['accessory']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
&amp;token=<?php echo $this->_tpl_vars['static_token']; ?>
&amp;add" rel="ajax_id_product_<?php echo ((is_array($_tmp=$this->_tpl_vars['accessory']['id_product'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
" title="Ajouter au panier"><img src="<?php echo $this->_tpl_vars['content_dir']; ?>
themes/prestashop/img/icon/icon-commandes.jpg" width="36" height="36" alt="Ajouter au panier" /></a>
							</div>
							
							<div class="clear"></div>
						</div>
					
					<?php endforeach; endif; unset($_from); ?>
					
				</div>
			</div>
			<div class="clear"></div>
	<?php endif; ?>
	
	</div>
</div>
<?php endif; ?>

<?php if ($this->_tpl_vars['quantity_discounts']): ?>
<!-- quantity discount -->
<ul class="idTabs" style="display:none;">
	<li><a style="cursor: pointer"><?php echo smartyTranslate(array('s' => 'Quantity discount'), $this);?>
</a></li>
</ul>
<div id="quantityDiscount" style="display:none;">
	<table class="std">
		<tr>
			<?php $_from = $this->_tpl_vars['quantity_discounts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['quantity_discounts'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['quantity_discounts']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['quantity_discount']):
        $this->_foreach['quantity_discounts']['iteration']++;
?>
				<th><?php echo ((is_array($_tmp=$this->_tpl_vars['quantity_discount']['quantity'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
 
				<?php if (((is_array($_tmp=$this->_tpl_vars['quantity_discount']['quantity'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) > 1): ?>
					<?php echo smartyTranslate(array('s' => 'quantities'), $this);?>

				<?php else: ?>
					<?php echo smartyTranslate(array('s' => 'quantity'), $this);?>

				<?php endif; ?>
				</th>
			<?php endforeach; endif; unset($_from); ?>
		</tr>
		<tr>
			<?php $_from = $this->_tpl_vars['quantity_discounts']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['quantity_discounts'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['quantity_discounts']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['quantity_discount']):
        $this->_foreach['quantity_discounts']['iteration']++;
?>
				<td>
				<?php if (((is_array($_tmp=$this->_tpl_vars['quantity_discount']['id_discount_type'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)) == 1): ?>
					-<?php echo ((is_array($_tmp=$this->_tpl_vars['quantity_discount']['value'])) ? $this->_run_mod_handler('floatval', true, $_tmp) : floatval($_tmp)); ?>
%
				<?php else: ?>
					-<?php echo Product::convertPrice(array('price' => ((is_array($_tmp=$this->_tpl_vars['quantity_discount']['value'])) ? $this->_run_mod_handler('floatval', true, $_tmp) : floatval($_tmp))), $this);?>

				<?php endif; ?>
				</td>
			<?php endforeach; endif; unset($_from); ?>
		</tr>
	</table>
</div>
<?php endif; ?>

<?php echo $this->_tpl_vars['HOOK_PRODUCT_FOOTER']; ?>




<!-- Customizable products -->
<?php if ($this->_tpl_vars['product']->customizable): ?>
	<ul class="idTabs">
		<li><a style="cursor: pointer"><?php echo smartyTranslate(array('s' => 'Product customization'), $this);?>
</a></li>
	</ul>
	<div class="customization_block">
		<form method="post" action="<?php echo $this->_tpl_vars['customizationFormTarget']; ?>
" enctype="multipart/form-data" id="customizationForm">
			<p>
				<img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/infos.gif" alt="Informations" />
				<?php echo smartyTranslate(array('s' => 'After saving your customized product, do not forget to add it to your cart.'), $this);?>

				<?php if ($this->_tpl_vars['product']->uploadable_files): ?><br /><?php echo smartyTranslate(array('s' => 'Allowed file formats are: GIF, JPG, PNG'), $this);?>
<?php endif; ?>
			</p>
			<?php if (((is_array($_tmp=$this->_tpl_vars['product']->uploadable_files)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
			<h2><?php echo smartyTranslate(array('s' => 'Pictures'), $this);?>
</h2>
			<ul id="uploadable_files">
				<?php echo smarty_function_counter(array('start' => 0,'assign' => 'customizationField'), $this);?>

				<?php $_from = $this->_tpl_vars['customizationFields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['customizationFields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['customizationFields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['field']):
        $this->_foreach['customizationFields']['iteration']++;
?>
					<?php if ($this->_tpl_vars['field']['type'] == 0): ?>
						<li class="customizationUploadLine<?php if ($this->_tpl_vars['field']['required']): ?> required<?php endif; ?>"><?php $this->assign('key', ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp='pictures_')) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['product']->id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['product']->id)))) ? $this->_run_mod_handler('cat', true, $_tmp, '_') : smarty_modifier_cat($_tmp, '_')))) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['field']['id_customization_field']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['field']['id_customization_field']))); ?>
							<?php if (isset ( $this->_tpl_vars['pictures'][$this->_tpl_vars['key']] )): ?><div class="customizationUploadBrowse"><img src="<?php echo $this->_tpl_vars['pic_dir']; ?>
<?php echo $this->_tpl_vars['pictures'][$this->_tpl_vars['key']]; ?>
_small" alt="" /><a href="<?php echo $this->_tpl_vars['link']->getUrlWith('deletePicture',$this->_tpl_vars['field']['id_customization_field']); ?>
"><img src="<?php echo $this->_tpl_vars['img_dir']; ?>
icon/delete.gif" alt="<?php echo smartyTranslate(array('s' => 'delete'), $this);?>
" class="customization_delete_icon" /></a></div><?php endif; ?>
							<div class="customizationUploadBrowse"><input type="file" name="file<?php echo $this->_tpl_vars['field']['id_customization_field']; ?>
" id="img<?php echo $this->_tpl_vars['customizationField']; ?>
" class="customization_block_input <?php if (isset ( $this->_tpl_vars['pictures'][$this->_tpl_vars['key']] )): ?>filled<?php endif; ?>" /><?php if ($this->_tpl_vars['field']['required']): ?><sup>*</sup><?php endif; ?>
							<div class="customizationUploadBrowseDescription"><?php if (! empty ( $this->_tpl_vars['field']['name'] )): ?><?php echo $this->_tpl_vars['field']['name']; ?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'Please select an image file from your hard drive'), $this);?>
<?php endif; ?></div></div>
						</li>
						<?php echo smarty_function_counter(array(), $this);?>

					<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
			<?php endif; ?>
			<div class="clear"></div>
			<?php if (((is_array($_tmp=$this->_tpl_vars['product']->text_fields)) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp))): ?>
			<h2><?php echo smartyTranslate(array('s' => 'Texts'), $this);?>
</h2>
			<ul id="text_fields">
				<?php echo smarty_function_counter(array('start' => 0,'assign' => 'customizationField'), $this);?>

				<?php $_from = $this->_tpl_vars['customizationFields']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['customizationFields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['customizationFields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['field']):
        $this->_foreach['customizationFields']['iteration']++;
?>
					<?php if ($this->_tpl_vars['field']['type'] == 1): ?>
						<li class="customizationUploadLine<?php if ($this->_tpl_vars['field']['required']): ?> required<?php endif; ?>"><?php $this->assign('key', ((is_array($_tmp=((is_array($_tmp=((is_array($_tmp='textFields_')) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['product']->id) : smarty_modifier_cat($_tmp, $this->_tpl_vars['product']->id)))) ? $this->_run_mod_handler('cat', true, $_tmp, '_') : smarty_modifier_cat($_tmp, '_')))) ? $this->_run_mod_handler('cat', true, $_tmp, $this->_tpl_vars['field']['id_customization_field']) : smarty_modifier_cat($_tmp, $this->_tpl_vars['field']['id_customization_field']))); ?>
							<?php if (! empty ( $this->_tpl_vars['field']['name'] )): ?><?php echo $this->_tpl_vars['field']['name']; ?>
<?php endif; ?><input type="text" name="textField<?php echo $this->_tpl_vars['field']['id_customization_field']; ?>
" id="textField<?php echo $this->_tpl_vars['customizationField']; ?>
" value="<?php if (isset ( $this->_tpl_vars['textFields'][$this->_tpl_vars['key']] )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['textFields'][$this->_tpl_vars['key']])) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php endif; ?>" class="customization_block_input" /><?php if ($this->_tpl_vars['field']['required']): ?><sup>*</sup><?php endif; ?>
						</li>
						<?php echo smarty_function_counter(array(), $this);?>

					<?php endif; ?>
				<?php endforeach; endif; unset($_from); ?>
			</ul>
			<?php endif; ?>
			<p style="clear: left;" id="customizedDatas">
				<input type="hidden" name="quantityBackup" id="quantityBackup" value="" />
				<input type="hidden" name="submitCustomizedDatas" value="1" />
				<input type="button" class="button" value="<?php echo smartyTranslate(array('s' => 'Save'), $this);?>
" onclick="javascript:saveCustomization()" />
			</p>
		</form>
		<p class="clear required"><sup>*</sup> <?php echo smartyTranslate(array('s' => 'required fields'), $this);?>
</p>
	</div>
<?php endif; ?>


<?php endif; ?>