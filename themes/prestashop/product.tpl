{include file=$tpl_dir./errors.tpl}
{if $errors|@count == 0}
<script type="text/javascript">
// <![CDATA[

// PrestaShop internal settings
var currencySign = '{$currencySign|html_entity_decode:2:"UTF-8"}';
var currencyRate = '{$currencyRate|floatval}';
var currencyFormat = '{$currencyFormat|intval}';
var currencyBlank = '{$currencyBlank|intval}';
var taxRate = {$product->tax_rate|floatval};
var jqZoomEnabled = {if $jqZoomEnabled}true{else}false{/if};

//JS Hook
var oosHookJsCodeFunctions = new Array();

// Parameters
var id_product = '{$product->id|intval}';
var productHasAttributes = {if isset($groups)}true{else}false{/if};
var quantitiesDisplayAllowed = {if $display_qties == 1}true{else}false{/if};
var quantityAvailable = {if $display_qties == 1 && $product->quantity}{$product->quantity}{else}0{/if};
var allowBuyWhenOutOfStock = {if $allow_oosp == 1}true{else}false{/if};
var availableNowValue = '{$product->available_now|escape:'quotes':'UTF-8'}';
var availableLaterValue = '{$product->available_later|escape:'quotes':'UTF-8'}';
var productPriceWithoutReduction = {$product->getPriceWithoutReduct()|default:'null'};
var reduction_percent = {if $product->reduction_percent}{$product->reduction_percent}{else}0{/if};
var reduction_price = {if $product->reduction_percent}0{else}{$product->getPrice(true, $smarty.const.NULL, 2, $smarty.const.NULL, true)}{/if};
var reduction_from = '{$product->reduction_from}';
var reduction_to = '{$product->reduction_to}';
var group_reduction = '{$group_reduction}';
var default_eco_tax = {$product->ecotax};
var currentDate = '{$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}';
var maxQuantityToAllowDisplayOfLastQuantityMessage = {$last_qties};
var noTaxForThisProduct = {if $no_tax == 1}true{else}false{/if};
var displayPrice = {$priceDisplay};
var productReference = '{$product->reference|escape:'htmlall':'UTF-8'}';

// Customizable field
var img_ps_dir = '{$img_ps_dir}';
var customizationFields = new Array();
{assign var='imgIndex' value=0}
{assign var='textFieldIndex' value=0}
{foreach from=$customizationFields item='field' name='customizationFields'}
{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
	customizationFields[{$smarty.foreach.customizationFields.index|intval}] = new Array();
	customizationFields[{$smarty.foreach.customizationFields.index|intval}][0] = '{if $field.type|intval == 0}img{$imgIndex++}{else}textField{$textFieldIndex++}{/if}';
	customizationFields[{$smarty.foreach.customizationFields.index|intval}][1] = {if $field.type|intval == 0 AND $pictures.$key}2{else}{$field.required|intval}{/if};
{/foreach}

// Images
var img_prod_dir = '{$img_prod_dir}';
var combinationImages = new Array();
{foreach from=$combinationImages item='combination' key='combinationId' name='f_combinationImages'}
	combinationImages[{$combinationId}] = new Array();
	{foreach from=$combination item='image' name='f_combinationImage'}
		combinationImages[{$combinationId}][{$smarty.foreach.f_combinationImage.index}] = {$image.id_image|intval};
	{/foreach}
{/foreach}

combinationImages[0] = new Array();
{foreach from=$images item='image' name='f_defaultImages'}
	combinationImages[0][{$smarty.foreach.f_defaultImages.index}] = {$image.id_image};
{/foreach}

// Translations
var doesntExist = '{l s='The product does not exist in this model. Please choose another.' js=1}';
var doesntExistNoMore = '{l s='This product is no longer in stock' js=1}';
var doesntExistNoMoreBut = '{l s='with those attributes but is available with others' js=1}';
var uploading_in_progress = '{l s='Uploading in progress, please wait...' js=1}';
var fieldRequired = '{l s='Please fill all required fields' js=1}';


{if isset($groups)}
	// Combinations
	{foreach from=$combinations key=idCombination item=combination}
		addCombination({$idCombination|intval}, new Array({$combination.list}), {$combination.quantity}, {$combination.price}, {$combination.ecotax}, {$combination.id_image}, '{$combination.reference|addslashes}');
	{/foreach}
	// Colors
	{if $colors|@count > 0}
		{if $product->id_color_default} var id_color_default = {$product->id_color_default|intval};{/if}
	{/if}
{/if}

//]]>
</script>

{include file=$tpl_dir./breadcrumb.tpl}



<!-- sof. CONTENT -->
			<div id="content">
				<!-- PRODUCT -->
				<div class="product-img" id="image-block">
					{if $have_image}
					{assign var=imageIds value=`$product->id`-`$image.id_image`}
							<a href="{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox')}" rel="other-views" class="thickbox {if $smarty.foreach.thumbnails.first}shown{/if}" title="{$image.legend|htmlspecialchars}"><img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large')}" {if $jqZoomEnabled}class="jqzoom" alt="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'thickbox')}"{else} title="{$product->name|escape:'htmlall':'UTF-8'}" alt="{$product->name|escape:'htmlall':'UTF-8'}" {/if} id="bigpic" width="425" height="425"/></a>
							{if $product->on_sale}
							<img src="{$img_dir}onsale.png" alt="{l s='On sale'}" class="on_sale_img_zoom_format"/>
							{/if}
					{else}
						<img src="{$img_prod_dir}{$lang_iso}-default-large.jpg" alt="" title="{$product->name|escape:'htmlall':'UTF-8'}" />
					{/if}
					
					<!-- VIGNETTES -->
					{if count($images) > 0}
					<div class="product-img-thumbs" id="views_block" {if count($images) < 2}class="hidden"{/if}>
						
						<!-- thumbnails -->
						{foreach from=$images item=image name=thumbnails}
						{assign var=imageIds value=`$product->id`-`$image.id_image`}
							<a href="{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox')}" rel="other-views" class="thickbox {if $smarty.foreach.thumbnails.first}shown{/if}" title="{$image.legend|htmlspecialchars}">
								<img id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, 'medium')}" alt="{$image.legend|htmlspecialchars}" width="75" height="75" />
							</a>
						{/foreach}
						
					</div>
					{/if}
					
				</div>
				<div class="product-desc">
				
					<!-- add to cart form-->
					<form id="buy_block" action="{$base_dir}cart.php" method="post">
			
						<!-- hidden datas -->
						<p class="hidden">
							<input type="hidden" name="token" value="{$static_token}" />
							<input type="hidden" name="id_product" value="{$product->id|intval}" id="product_page_product_id" />
							<input type="hidden" name="add" value="1" />
							<input type="hidden" name="id_product_attribute" id="idCombination" value="" />
						</p>
					
						<h2>{$product->name|escape:'htmlall':'UTF-8'}</h2>
						<span id="product_reference" {if isset($groups) OR !$product->reference}style="display:none;"{/if}>R&eacute;f. {$product->reference|escape}</span>
						<span>
						
						<!-- sof. PRICES -->
						
						{if $product->on_sale}
							<strong class="on_sale">{l s='On sale!'}</strong> &nbsp;|&nbsp; 
						{elseif ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product->reduction_from))}
							<strong class="discount">{l s='Price lowered!'}</strong>
						{/if}
						
						{if ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product->reduction_from))}
							  
							 <p id="old_price"> 
							{if !$priceDisplay || $priceDisplay == 2}
								<strong id="old_price_display">{convertPrice price=$product->getPriceWithoutReduct()}</strong>
									{if $tax_enabled}{l s='tax incl.'}{/if}
							{/if}
							{if $priceDisplay == 1}
								<strong id="old_price_display">{convertPrice price=$product->getPriceWithoutReduct(true)}</strong>
									{if $tax_enabled}{l s='tax excl.'}{/if}
							{/if}
							</p>
						{/if}
						{if !$priceDisplay || $priceDisplay == 2}
							<strong id="our_price_display">{convertPrice price=$product->getPrice(true, $smarty.const.NULL)}</strong>
								{if $tax_enabled}{l s='tax incl.'}{/if}
						{/if}
						{if $priceDisplay == 1}
							<strong id="our_price_display">{convertPrice price=$product->getPrice(false, $smarty.const.NULL)}</strong>
								{if $tax_enabled}{l s='tax excl.'}{/if}
						{/if}
						{if $priceDisplay == 2}
							<strong id="pretaxe_price"><strong id="pretaxe_price_display">{convertPrice price=$product->getPrice(false, $smarty.const.NULL)}</strong>&nbsp;{l s='tax excl.'}</strong>
						{/if}
						
						{if $product->reduction_percent != 0 && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product->reduction_from))}
							<p id="reduction_percent">{l s='(price reduced by'} <span id="reduction_percent_display">{$product->reduction_percent|floatval}</span> %{l s=')'}</p>
						{/if}
						
						{if $packItems|@count}
							<p class="pack_price" style="display:none;">{l s='instead of'} <span style="text-decoration: line-through;">{convertPrice price=$product->getNoPackPrice()}</span></p>
						{/if}
						
						{if $product->ecotax != 0}
							<p class="price-ecotax">{l s='include'} <strong id="ecotax_price_display">{convertPrice price=$product->ecotax}</strong> {l s='for green tax'}</p>
						{/if}
						
						<!-- eof. PRICES -->
						
						</span>
						<p>
							{if $product->description}
								<div id="description_content" class="rte align_justify">{$product->description}</div>
								<a href="javascript:{ldelim}{rdelim}" class="button" style="display:none;">{l s='More details'}</a>
							{/if}
						</p>
						
						<!-- PACKS -->
						{if $packItems|@count > 0}
							<div>
								<h2 class="pack_content_title">Contenu de l'ensemble</h2>
								{include file=$tpl_dir./product-pack.tpl products=$packItems}
							</div>
						{/if}
						
						<!-- old attributes Sophie 
						{if isset($groups)}
						
						{foreach from=$groups key=id_attribute_group item=group}
							{assign var='groupName' value='group_'|cat:$id_attribute_group}
							<select name="{$groupName}" id="group_{$id_attribute_group|intval}" onchange="javascript:findCombination();{if $colors|@count > 0}$('#resetImages').show('slow');{/if}">
								<option value="" title="{$group_attribute|escape:'htmlall':'UTF-8'}" selected="selected">{$group.name|escape:'htmlall':'UTF-8'}</option>
								{foreach from=$group.attributes key=id_attribute item=group_attribute}
									<option value="{$id_attribute|intval}" title="{$group_attribute|escape:'htmlall':'UTF-8'}">{$group_attribute|escape:'htmlall':'UTF-8'}</option>
								{/foreach}
							</select>
						{/foreach}
						{/if}
						END OF ALOD ATTRIBUTES SOPHIE -->
						
						
						
						
						<select name="qty" id="quantity_wanted" value="{if isset($quantityBackup)}{$quantityBackup|intval}{else}1{/if}" style="display:none;">
							<option value="">{l s='Quantity :'}</option>
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
								{if isset($groups)}
								<div id="attributes">
								<h3>CHOISISSEZ : </h3>
								{foreach from=$groups key=id_attribute_group item=group}
									<p>
									{assign var='groupName' value='group_'|cat:$id_attribute_group}
									<select name="{$groupName}" id="group_{$id_attribute_group|intval}" onchange="javascript:findCombination();{if $colors|@count > 0}$('#resetImages').show('slow');{/if}">
										{foreach from=$group.attributes key=id_attribute item=group_attribute}
											<option value="{$id_attribute|intval}"{if (isset($smarty.get.$groupName) && $smarty.get.$groupName|intval == $id_attribute) || $group.default == $id_attribute} selected="selected"{/if} title="{$group_attribute|escape:'htmlall':'UTF-8'}">{$group.name|escape:'htmlall':'UTF-8'} {$group_attribute|escape:'htmlall':'UTF-8'}</option>
										{/foreach}
									</select>
									</p>
								{/foreach}
								</div>
								{/if}
						
						
									<!-- eof attributes original -->
								<li><input type="submit" name="submit" {if !$allow_oosp && $product->quantity == 0} style="display:none;"{/if} id="add_to_cart" class="add2cart" value="{l s='Add to cart'}" onfocus="this.blur();" /></li>
								<li><a href="{$base_dir}order.php">FINALISER MON ACHAT >><br /><img class="cb_small" src="{$img_dir}cb.jpg" /></a></li>
							</ol>
							<p class="info_cmd">Frais de ports offerts dès 50€ d'achat !</p>
							
						</div>
						{if isset($accessories) AND $accessories}
					<br /><br />
			  	<!-- LIEN PRODUITS SIMILAIRES -->
			  		<ul class="cross_selling">
			  			<li><a href="javascript:{ldelim}{rdelim}" title="" id="produit_access_similar_link" >Vous aimerez aussi &raquo;</a></li>
			  			
			  			<li><a href="{$link->getProductLink($id_product,$smarty.get.id_product.link_rewrite)|escape:'htmlall':'UTF-8'}/#sameCategory" title="" id="same_category_link">Dans la même catégorie &raquo;</a></li>
			  			<li class="clear"> </li>
			  		</ul>
			  		<div class="clear"></div>
					
						
					{/if}
						
						<!-- ADD TO WISHLIST -->
						<!-- <a href="javascript:;" class="add2wishlist" onclick="javascript:WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), document.getElementById('quantity_wanted').value);">Ajouter &agrave; ma wishlist</a>
						</form>	-->
						{$HOOK_PRODUCT_ACTIONS}
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
      addthis:url="{$base_dir}{$link->getImageLink($product->link_rewrite, $cover.id_image, 'small')}"
      addthis:title="{$product->name|escape:'htmlall':'UTF-8'}"
      addthis:description="{$product->description}"></a>-->
					
					
				</div>
				<div class="clear"></div>
<!-- eof. CONTENT -->

<!-- description and features -->
{if $product->description || $features || $accessories || $HOOK_PRODUCT_TAB || $attachments}
<div id="more_info_block" class="clear">

	{$HOOK_PRODUCT_TAB_CONTENT}

	<ul id="more_info_tabs" class="idTabs idTabsShort">
		{if $features}<li><a id="more_info_tab_data_sheet" href="#idTab2">{l s='Data sheet'}</a></li>{/if}
		{if $attachments}<li><a id="more_info_tab_attachments" href="#idTab9">{l s='Download'}</a></li>{/if}
		{if isset($accessories) AND $accessories}<li><a href="#idTab4">Vous aimerez aussi...</a></li>{/if}
		{$HOOK_PRODUCT_TAB}
	</ul>
	<div id="more_info_sheets" class="sheets align_justify">
	{if $features}
		<!-- product's features -->
		<ul id="idTab2" class="bullet">
		{foreach from=$features item=feature}
			<li><span>{$feature.name|escape:'htmlall':'UTF-8'}</span> {$feature.value|escape:'htmlall':'UTF-8'}</li>
		{/foreach}
		</ul>
	{/if}
	{if $attachments}
		<ul id="idTab9" class="bullet">
		{foreach from=$attachments item=attachment}
			<li><a href="{$base_dir}attachment.php?id_attachment={$attachment.id_attachment}">{$attachment.name|escape:'htmlall':'UTF-8'}</a><br />{$attachment.description|escape:'htmlall':'UTF-8'}</li>
		{/foreach}
		</ul>
	{/if}
	{if isset($accessories) AND $accessories}
		<!-- accessories -->
			<div class="accessories_block clearfix" id="accessories_block_list">
				<div class="block_content">
				
					{foreach from=$accessories item=accessory name=accessories_list}
						{assign var='accessoryLink' value=$link->getProductLink($accessory.id_product, $accessory.link_rewrite, $accessory.category)}
						
						<div class="product_access_bloc">
							<a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{$accessory.legend|escape:'htmlall':'UTF-8'}" class="product_image_accessories"><img src="{$link->getImageLink($accessory.link_rewrite, $accessory.id_image, 'medium')}" alt="{$accessory.legend|escape:'htmlall':'UTF-8'}" width="80" height="80" /></a>
							
							<div class="product_access_bloc_txt">
								<h5><a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{$accessory.legend|escape:'htmlall':'UTF-8'}">{$accessory.name|truncate:20|escape:'htmlall':'UTF-8'}</a></h5>	
								<p>{$accessory.description_short|strip_tags|truncate:100:'...'}</p>
								<a href="{$base_dir}cart.php?qty=1&amp;id_product={$accessory.id_product|intval}&amp;token={$static_token}&amp;add" rel="ajax_id_product_{$accessory.id_product|intval}" title="Ajouter au panier"><img src="{$content_dir}themes/prestashop/img/icon/icon-commandes.jpg" width="36" height="36" alt="Ajouter au panier" /></a>
							</div>
							
							<div class="clear"></div>
						</div>
					
					{/foreach}
					
				</div>
			</div>
			<div class="clear"></div>
	{/if}
	
	</div>
</div>
{/if}

{if $quantity_discounts}
<!-- quantity discount -->
<ul class="idTabs" style="display:none;">
	<li><a style="cursor: pointer">{l s='Quantity discount'}</a></li>
</ul>
<div id="quantityDiscount" style="display:none;">
	<table class="std">
		<tr>
			{foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
				<th>{$quantity_discount.quantity|intval} 
				{if $quantity_discount.quantity|intval > 1}
					{l s='quantities'}
				{else}
					{l s='quantity'}
				{/if}
				</th>
			{/foreach}
		</tr>
		<tr>
			{foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
				<td>
				{if $quantity_discount.id_discount_type|intval == 1}
					-{$quantity_discount.value|floatval}%
				{else}
					-{convertPrice price=$quantity_discount.value|floatval}
				{/if}
				</td>
			{/foreach}
		</tr>
	</table>
</div>
{/if}

{$HOOK_PRODUCT_FOOTER}



<!-- Customizable products -->
{if $product->customizable}
	<ul class="idTabs">
		<li><a style="cursor: pointer">{l s='Product customization'}</a></li>
	</ul>
	<div class="customization_block">
		<form method="post" action="{$customizationFormTarget}" enctype="multipart/form-data" id="customizationForm">
			<p>
				<img src="{$img_dir}icon/infos.gif" alt="Informations" />
				{l s='After saving your customized product, do not forget to add it to your cart.'}
				{if $product->uploadable_files}<br />{l s='Allowed file formats are: GIF, JPG, PNG'}{/if}
			</p>
			{if $product->uploadable_files|intval}
			<h2>{l s='Pictures'}</h2>
			<ul id="uploadable_files">
				{counter start=0 assign='customizationField'}
				{foreach from=$customizationFields item='field' name='customizationFields'}
					{if $field.type == 0}
						<li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
							{if isset($pictures.$key)}<div class="customizationUploadBrowse"><img src="{$pic_dir}{$pictures.$key}_small" alt="" /><a href="{$link->getUrlWith('deletePicture', $field.id_customization_field)}"><img src="{$img_dir}icon/delete.gif" alt="{l s='delete'}" class="customization_delete_icon" /></a></div>{/if}
							<div class="customizationUploadBrowse"><input type="file" name="file{$field.id_customization_field}" id="img{$customizationField}" class="customization_block_input {if isset($pictures.$key)}filled{/if}" />{if $field.required}<sup>*</sup>{/if}
							<div class="customizationUploadBrowseDescription">{if !empty($field.name)}{$field.name}{else}{l s='Please select an image file from your hard drive'}{/if}</div></div>
						</li>
						{counter}
					{/if}
				{/foreach}
			</ul>
			{/if}
			<div class="clear"></div>
			{if $product->text_fields|intval}
			<h2>{l s='Texts'}</h2>
			<ul id="text_fields">
				{counter start=0 assign='customizationField'}
				{foreach from=$customizationFields item='field' name='customizationFields'}
					{if $field.type == 1}
						<li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='textFields_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
							{if !empty($field.name)}{$field.name}{/if}<input type="text" name="textField{$field.id_customization_field}" id="textField{$customizationField}" value="{if isset($textFields.$key)}{$textFields.$key|stripslashes}{/if}" class="customization_block_input" />{if $field.required}<sup>*</sup>{/if}
						</li>
						{counter}
					{/if}
				{/foreach}
			</ul>
			{/if}
			<p style="clear: left;" id="customizedDatas">
				<input type="hidden" name="quantityBackup" id="quantityBackup" value="" />
				<input type="hidden" name="submitCustomizedDatas" value="1" />
				<input type="button" class="button" value="{l s='Save'}" onclick="javascript:saveCustomization()" />
			</p>
		</form>
		<p class="clear required"><sup>*</sup> {l s='required fields'}</p>
	</div>
{/if}


{/if}
