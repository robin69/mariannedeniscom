<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}search.php">{l s='Search'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>

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
var currentDate = '{$smarty.now|date_format:'%Y-%m-%d'}';
var maxQuantityToAllowDisplayOfLastQuantityMessage = {$last_qties};
var noTaxForThisProduct = {if $no_tax == 1}true{else}false{/if};
var displayPrice = {$priceDisplay};

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

// iPrestaShop images
var ips_img_big = '{$ips_img_big}';
var ips_img_large = '{$ips_img_large}';

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
		{if $product->id_color_default}var id_color_default = {$product->id_color_default|intval};{/if}
	{/if}
{/if}

//]]>
</script>

<div id="content">
	{if $confirmation}
		{capture name=confirmation}{$confirmation}{/capture}
		{include file=$tpl_dir./confirmation.tpl}
	{/if}
	<span class="graytitle">{$product->name|escape:'htmlall':'UTF-8'}</span>

	<ul class="pageitem">
		<li class="textbox views_block">
			{if count($images) > 1}
			<!-- thumbnails -->
			<div id="views_block">
				<span class="view_scroll_spacer">{if count($images) > 3}<a id="view_scroll_left" class="hidden" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">{l s='Previous'}</a>{/if}</span>
				<div id="thumbs_list">
					<ul style="width: {math equation="width * nbImages" width=85 nbImages=$images|@count}px" id="thumbs_list_frame">
					{foreach from=$images item=image name=thumbnails}
						{assign var=imageIds value=`$product->id`-`$image.id_image`}
						<li id="thumbnail_{$image.id_image}">
							<a class="noeffect" href="{$link->getImageLink($product->link_rewrite, $imageIds, $ips_img_big)}" rel="other-views" title="{$image.legend|htmlspecialchars}">
								<img id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, $ips_img_medium)}" alt="{$image.legend|htmlspecialchars}" height="{$mediumSize.height}" width="{$mediumSize.width}" />
							</a>
						</li>
					{/foreach}
					</ul>
				</div>
				<span class="view_scroll_spacer">{if count($images) > 3}<a id="view_scroll_right" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">{l s='Next'}</a>{/if}</span>
			</div>
			{/if}
			{*if count($images) > 1 && $colors}
				<p class="align_center clear">
					<a id="resetImages" href="{$link->getProductLink($product)}" class="noeffect">{l s='Display all pictures'}</a>
				</p>
			{/if*}
			<!-- product img-->
			<p id="image-block">
			{if $have_image}
				<a href="{$link->getImageLink($product->link_rewrite, $cover.id_image, $ips_img_big)}">
					<img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, $ips_img_large)}" {if $jqZoomEnabled}class="jqzoom" alt="{$link->getImageLink($product->link_rewrite, $cover.id_image, $ips_img_big)}"{else} title="{$product->name|escape:'htmlall':'UTF-8'}" alt="{$product->name|escape:'htmlall':'UTF-8'}" {/if} id="bigpic"/>
				</a>
			{else}
				<img src="{$img_prod_dir}{$lang_iso}-default-large.jpg" alt="" title="{$product->name|escape:'htmlall':'UTF-8'}" />
			{/if}
			</p>
		</li>
		{if $colors}
		<!-- colors -->
		<li class="textbox">
			<span class="header">{l s='Pick a color:'}</span>
			<ul id="color_picker">
				{foreach from=$colors key='id_attribute' item='color'}
				<li>
					<a id="color_{$id_attribute|intval}" class="color_pick noeffect" style="background-color: {$color.value};" onclick="updateColorSelect({$id_attribute|intval});">
						{if file_exists($col_img_dir|cat:$id_attribute|cat:'.jpg')}<img src="{$img_col_dir}{$id_attribute}.jpg" alt="{$color.name}" />{else}&nbsp;{/if}
					</a>
				</li>
				{/foreach}
				<li>
					<a class="noeffect" id="resetImages" href="{$link->getProductLink($product)}">
						<img src="{$img_dir}cancel.gif" alt="" title="{$color.name}" />
					</a>
				</li>
			</ul>
		</li>
		{/if}
	</ul>


	<ul class="pageitem">
	{if $product->description_short OR $packItems|@count > 0}
		{if $product->description_short}
		<li class="textbox rte align_justify" id="short_description_block">
			{$product->description_short}
		</li>
		{/if}
		{if $product->description}
		<li class="menu">
			<a href="javascript:{ldelim}{rdelim}" class="noeffect" id="readmore">
				<span class="name">{l s='More details'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		{/if}
		{if $packItems|@count > 0}
		<li class="textbox">
			<span class="header">{l s='Pack content'}</span>
			<ul class="pack_content">
			{foreach from=$packItems item=packItem}
				<li>
					{$packItem.pack_quantity} {l s='x'} <a href="{$link->getProductLink($packItem.id_product, $packItem.link_rewrite, $packItem.category)}">{$packItem.name|escape:'htmlall':'UTF-8'}</a>
					<br/>{$packItem.description_short}
				</li>
			{/foreach}
			</ul>
		</li>
		{/if}
	{/if}
	</ul>

	<!-- add to cart form-->
	<form id="buy_block" action="{$base_dir}cart.php" method="post">
		<fieldset>
			<p class="hidden">
				<input type="hidden" name="token" value="{$static_token}" />
				<input type="hidden" name="id_product" value="{$product->id|intval}" id="product_page_product_id" />
				<input type="hidden" name="add" value="1" />
				<input type="hidden" name="id_product_attribute" id="idCombination" value="" />
			</p>
			<span class="graytitle">{l s='Add to cart'}</span>
			<ul class="pageitem" id="attributes">
				<li class="textbox">
					<!-- prices -->
					<p class="price">
						<span class="our_price_display">
					{if !$priceDisplay || $priceDisplay == 2}
							<span id="our_price_display">{convertPrice price=$product->getPrice(true, $smarty.const.NULL, 2)}</span>&nbsp;{l s='tax incl.'}
					{/if}
					{if $priceDisplay == 1}
							<span id="our_price_display">{convertPrice price=$product->getPrice(false, $smarty.const.NULL, 2)}</span>&nbsp;{l s='tax excl.'}
					{/if}
						</span>
					{if $priceDisplay == 2}
						<br /><span id="pretaxe_price"><span id="pretaxe_price_display">{convertPrice price=$product->getPrice(false, $smarty.const.NULL, 2)}</span>&nbsp;{l s='tax excl.'}</span>
					{/if}
					</p>

					{if $product->ecotax != 0}
						<p class="price-ecotax">{l s='include'} <span id="ecotax_price_display">{convertPrice price=$product->ecotax}</span> {l s='for green tax'}</p>
					{/if}

					{if ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product->reduction_from))}
					<p>
						{if $product->on_sale}
						<img src="{$img_dir}onsale.png" alt="{l s='On sale'}" class="on_sale_img"/>
						<span class="on_sale">{l s='On sale!'}</span>
						{elseif ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product->reduction_from))}
						<span class="reduction">{l s='Price lowered!'}</span>
						{/if}
					</p>
					<p id="old_price">
						{if !$priceDisplay || $priceDisplay == 2}
						<span id="old_price_display" class="price-discount">{convertPrice price=$product->getPriceWithoutReduct()}</span>&nbsp;{l s='tax incl.'}
						{/if}
						{if $priceDisplay == 1}
						<span id="old_price_display" class="price-discount">{convertPrice price=$product->getPriceWithoutReduct(true)}</span>&nbsp;{l s='tax excl.'}
						{/if}
						{if $product->reduction_percent != 0 && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product->reduction_from))}
						<span id="reduction_percent">{l s='(price reduced by'} <span id="reduction_percent_display">{$product->reduction_percent|floatval}</span> %{l s=')'}</span>
						{/if}
					</p>
					{/if}

					{if $packItems|@count}
						<p class="pack_price">{l s='instead of'} <span style="text-decoration: line-through;">{convertPrice price=$product->getNoPackPrice()}</span></p>
						<br class="clear" />
					{/if}
				</li>

			{if isset($groups)}
			<!-- attributes -->
				{foreach from=$groups key=id_attribute_group item=group}
				<li class="select">
					<!-- label for="group_{$id_attribute_group|intval}">{$group.name|escape:'htmlall':'UTF-8'} :</label -->
					{assign var='groupName' value='group_'|cat:$id_attribute_group}
					<select name="{$groupName}" id="group_{$id_attribute_group|intval}" onchange="javascript:findCombination();">
						{foreach from=$group.attributes key=id_attribute item=group_attribute}
							<option value="{$id_attribute|intval}"{if (isset($smarty.get.$groupName) && $smarty.get.$groupName|intval == $id_attribute) || $group.default == $id_attribute} selected="selected"{/if}>{$group_attribute|escape:'htmlall':'UTF-8'}</option>
						{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				{/foreach}
			{/if}

				<!-- quantity wanted -->
				<li class="smallfield" id="quantity_wanted_p"{if (!$allow_oosp && $product->quantity == 0) || $virtual} style="display:none;"{/if}>
					<span class="name">{l s='Quantity :'}</span>
					<input placeholder="" type="text" name="qty" id="quantity_wanted" class="text" value="{if isset($quantityBackup)}{$quantityBackup|intval}{else}1{/if}" size="2" maxlength="3" />
				</li>

				<!-- availability -->
				<li class="textbox" id="availability_statut"{if ($allow_oosp && $product->quantity == 0 && !$product->available_later) || (!$product->available_now && $display_qties != 1) } style="display:none;"{/if}>
					<span id="availability_label">{l s='Availability:'}</span>
					<span id="availability_value"{if $product->quantity == 0} class="warning-inline"{/if}>
						{if $product->quantity == 0}{if $allow_oosp}{$product->available_later}{else}{l s='This product is no longer in stock'}{/if}{else}{$product->available_now}{/if}
					</span>
				</li>

				<!-- number of item in stock -->
				<li class="textbox" id="pQuantityAvailable"{if $display_qties != 1 || ($allow_oosp && $product->quantity == 0)} style="display:none;"{/if}>
					<span id="quantityAvailable">{$product->quantity|intval}</span>
					<span{if $product->quantity > 1} style="display:none;"{/if} id="quantityAvailableTxt">{l s='item in stock'}</span>
					<span{if $product->quantity < 2} style="display:none;"{/if} id="quantityAvailableTxtMultiple">{l s='items in stock'}</span>
				</li>

				<!-- Out of stock hook -->
				<li class="textbox" id="oosHook" style="display:{if $product->quantity < 1 AND $HOOK_PRODUCT_OOS}block{else}none{/if}">
					{$HOOK_PRODUCT_OOS}
				</li>
	
				<li class="textbox warning-inline" id="last_quantities"{if ($product->quantity > $last_qties || $product->quantity == 0) || $allow_oosp} style="display:none;"{/if}>
					{l s='Warning: Last items in stock!'}
				</li>

				<!-- Add to cart button -->
				<li class="button buttons_bottom_block add_to_cart" id="add_to_cart"{if !$allow_oosp && $product->quantity == 0} style="display:none;"{/if}>
					<input type="submit" name="Submit" value="{l s='Add to cart'}" class="exclusive" />
				</li>

				{if $HOOK_PRODUCT_ACTIONS}{$HOOK_PRODUCT_ACTIONS}{/if}

			</ul>
		</fieldset>
	</form>

	{if $HOOK_EXTRA_RIGHT}{$HOOK_EXTRA_RIGHT}{/if}
	<br class="clear" />

	{if $product->reference || $HOOK_EXTRA_LEFT}
	<ul class="pageitem">
		{if $product->reference}
		<li class="textbox" id="product_reference" {if isset($groups)}style="display:none;"{/if}>
			<label for="product_reference">{l s='Reference :'} </label><span class="editable">{$product->reference|escape}</span>
		</li>
		{/if}
		{if $HOOK_EXTRA_LEFT}{$HOOK_EXTRA_LEFT}{/if}
	</ul>
	{/if}


{if $quantity_discounts}
<!-- quantity discount -->
<ul class="idTabs">
	<li><a style="cursor: pointer">{l s='Quantity discount'}</a></li>
</ul>
<div id="quantityDiscount">
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
{/if}

{if $product->description || $features || $attachments}
</div>

<div id="triselectionbuttons">
	<div class="links idTabs">
		<a id="more_info_tab_more_info" href="#idTab1">{l s='More info'}</a><a id="more_info_tab_data_sheet" href="#idTab2">{l s='Data sheet'}</a><a id="more_info_tab_attachments" href="#idTab9">{l s='Download'}</a>
	</div>
</div>

<div id="content">
	<ul class="pageitem">
		<li id="idTab1" class="rte textbox">
		{if $product->description}
			<div class="rte">{$product->description}</div>
		{/if}
		</li>
		<li id="idTab2" class="textbox">
		{if $features}
			<ul>
			{foreach from=$features item=feature}
				<li><span>{$feature.name|escape:'htmlall':'UTF-8'}</span> {$feature.value|escape:'htmlall':'UTF-8'}</li>
			{/foreach}
			</ul>
		{else}
			<p>{l s='None feature.'}</p>
		{/if}
		</li>
		<li id="idTab9" class="textbox">
		{if $attachments}
			<ul>
			{foreach from=$attachments item=attachment}
				<li><a href="{$base_dir}attachment.php?id_attachment={$attachment.id_attachment}">{$attachment.name|escape:'htmlall':'UTF-8'}</a><br />{$attachment.description|escape:'htmlall':'UTF-8'}</li>
			{/foreach}
			</ul>
		{else}
			<p>{l s='None attachment.'}</p>
		{/if}
		</li>
	</ul>
{/if}

{if isset($accessories) AND $accessories}
	<span class="graytitle">{l s='Accessories'}</span>
	{include file=$tpl_dir./product-list.tpl products=$accessories}
{/if}

{if $HOOK_PRODUCT_TAB}
</div>

<div id="triselectionbuttons">
	<div class="links idTabs">
		{$HOOK_PRODUCT_TAB}
	</div>
</div>

<div id="content">
	<ul class="pageitem">
	{$HOOK_PRODUCT_TAB_CONTENT}
	</ul>
{/if}

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

{if $packItems|@count > 0}
	<div>
		<h2>{l s='Pack content'}</h2>
		{include file=$tpl_dir./product-list.tpl products=$packItems}
	</div>
{/if}

{$HOOK_PRODUCT_FOOTER}

{/if}
</div>