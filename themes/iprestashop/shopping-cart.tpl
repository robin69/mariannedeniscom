<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{assign var='current_step' value='summary'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">

{include file=$tpl_dir./errors.tpl}

{if isset($empty)}
	{capture name=warning}{l s='Your shopping cart is empty.'}{/capture}
	{include file=$tpl_dir./warning.tpl}
	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir}?browse=1">
				<img alt="{l s='browse'}" src="{$ips_thumb_dir}start.png" />
				<span class="name">{l s='Browse our catalog'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
{else}

	{if isset($lastProductAdded) AND $lastProductAdded}
	<span class="graytitle">{l s='Last added product'}</span>
	<ul class="pageitem">
		{foreach from=$products item=product}
			{if $product.id_product == $lastProductAdded.id_product AND (!$product.id_product_attribute OR ($product.id_product_attribute == $lastProductAdded.id_product_attribute))}
		<li class="store">
			<a class="noeffect" href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}">
				<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.id_image, 'medium')}')"></span>
				<span class="name">{$product.name|escape:'htmlall':'UTF-8'}</span>
				{if $product.attributes}<span class="comment">{$product.attributes_small|escape:'htmlall':'UTF-8'|truncate:50:'...'}</span>{/if}
				<span class="arrow"></span>
			</a>
		</li>
			{/if}
		{/foreach}
	</ul>
	{/if}

	<span class="graytitle">{$productNumber} {if $productNumber > 1}{l s='products'}{else}{l s='product'}{/if} {l s='in your cart'}</span>

	<ul class="pageitem">
	{foreach from=$products item=product name=productLoop}
		{assign var='productId' value=$product.id_product}
		{assign var='productAttributeId' value=$product.id_product_attribute}
		{assign var='quantityDisplayed' value=0}
		{* Display the product line *}
		{include file=$tpl_dir./shopping-cart-product-line.tpl}

		{* Then the customized datas ones*}
		{if isset($customizedDatas.$productId.$productAttributeId)}
			{foreach from=$customizedDatas.$productId.$productAttributeId key='id_customization' item='customization'}
				<tr class="alternate_item cart_item">
					<td colspan="5">
						{foreach from=$customization.datas key='type' item='datas'}
							{if $type == $CUSTOMIZE_FILE}
								<div class="customizationUploaded">
									<ul class="customizationUploaded">
										{foreach from=$datas item='picture'}<li><img src="{$pic_dir}{$picture.value}_small" alt="" class="customizationUploaded" /></li>{/foreach}
									</ul>
								</div>
							{elseif $type == $CUSTOMIZE_TEXTFIELD}
								<ul class="typedText">
									{foreach from=$datas item='textField' name='typedText'}<li>{l s='Text #'}{$smarty.foreach.typedText.index+1}{l s=':'} {$textField.value}</li>{/foreach}
								</ul>
							{/if}
						{/foreach}
					</td>
					<td class="cart_quantity">
						<a class="cart_quantity_delete" href="{$base_dir_ssl}cart.php?delete&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;token={$token_cart}"><img src="{$img_dir}icon/delete.gif" alt="{l s='Delete this customization'}" class="icon" /></a>
						<p>{$customization.quantity}</p>
						<a class="cart_quantity_up" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;token={$token_cart}" title="{l s='Add'}"><img src="{$img_dir}icon/quantity_up.gif" alt="{l s='Add'}" /></a><br />
						<a class="cart_quantity_down" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;op=down&amp;token={$token_cart}" title="{l s='Substract'}"><img src="{$img_dir}icon/quantity_down.gif" alt="{l s='Substract'}" /></a>
					</td>
					<td class="cart_total"></td>
				</tr>
				{assign var='quantityDisplayed' value=$quantityDisplayed+$customization.quantity}
			{/foreach}
			{* If it exists also some uncustomized products *}
			{if $product.quantity-$quantityDisplayed > 0}{include file=$tpl_dir./shopping-cart-product-line1.tpl}{/if}
		{/if}
	{/foreach}
	</ul>

	<ul class="pageitem align_right">
	{if $priceDisplay}
		<li class="textbox">
			<strong>{l s='Total products (tax excl.):'}</strong>
			<span class="price">{convertPrice price=$total_products}</span>
		</li>
	{/if}
	{if !$priceDisplay || $priceDisplay == 2}
		<li class="textbox">
			<strong>{l s='Total products (tax incl.):'}</strong>
			<span class="price">{convertPrice price=$total_products_wt}</span>
		</li>
	{/if}
	{if $total_discounts != 0}
		{if $priceDisplay}
		<li class="textbox">
			<strong>{l s='Total vouchers (tax excl.):'}</strong>
			<span class="price">{convertPrice price=$total_discounts_tax_exc}</span>
		</li>
		{/if}
		{if !$priceDisplay || $priceDisplay == 2}
		<li class="textbox">
			<strong>{l s='Total vouchers (tax incl.):'}</strong>
			<span class="price">{convertPrice price=$total_discounts}</span>
		</li>
		{/if}
	{/if}
	{if $total_wrapping > 0}
		{if $priceDisplay}
		<li class="textbox">
			<strong>{l s='Total gift-wrapping (tax excl.):'}</strong>
			<span class="price">{convertPrice price=$total_wrapping_tax_exc}</span>
		</li>
		{/if}
		{if !$priceDisplay || $priceDisplay == 2}
		<li class="textbox">
			<strong>{l s='Total gift-wrapping (tax incl.):'}</strong>
			<span class="price">{convertPrice price=$total_wrapping}</span>
		</li>
		{/if}
	{/if}
	{if $shippingCost > 0}
		{if $priceDisplay}
		<li class="textbox">
			<strong>{l s='Total shipping (tax excl.):'}</strong>
			<span class="price">{convertPrice price=$shippingCostTaxExc}</span>
		</li>
		{/if}
		{if !$priceDisplay || $priceDisplay == 2}
		<li class="textbox">
			<strong>{l s='Total shipping (tax incl.):'}</strong>
			<span class="price">{convertPrice price=$shippingCost}</span>
		</li>
		{/if}
	{/if}
	{if $priceDisplay}
		<li class="textbox">
			<strong>{l s='Total (tax excl.):'}</strong>
			<span class="price">{convertPrice price=$total_price_without_tax}</span>
		</li>
		<li class="textbox">
			<strong>{l s='Total tax:'}</strong>
			<span class="price">{convertPrice price=$total_tax}</span>
		</li>
	{/if}
		<li class="textbox">
			<strong>{l s='Total (tax incl.):'}</strong>
			<span class="price">{convertPrice price=$total_price}</span>
		</li>
	{if $free_ship > 0}
		<li class="textbox">
			{l s='Remaining amount to be added to your cart in order to obtain free shipping:'}
			<span class="price">{convertPrice price=$free_ship}</span>
		</li>
	{/if}
	</ul>



	{if $voucherAllowed}
	<span class="graytitle">{l s='Vouchers'}</span>
		{if $errors_discount}
			{include file=$tpl_dir./errors.tpl errors=$errors_discount}
		{/if}
	<form action="{$base_dir_ssl}order.php" method="post" id="voucher">
		<fieldset>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="{l s='Code'}" type="text" id="discount_name" name="discount_name" value="{if $discount_name}{$discount_name}{elseif $smarty.get.discount_name}{$smarty.get.discount_name}{/if}" />
				</li>
				<li class="button">
					<input type="submit" name="submitDiscount" value="{l s='Add'}" />
				</li>
			</ul>
		</fieldset>
	</form>
	{/if}

	{$HOOK_SHOPPING_CART}
	{$HOOK_SHOPPING_CART_EXTRA}

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir_ssl}order.php?step=1" title="{l s='Next'}">
				<img alt="{l s='next'}" src="{$img_dir}cart_ok.png" />
				<span class="name">{l s='Next'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="{if $smarty.server.HTTP_REFERER && strstr($smarty.server.HTTP_REFERER, 'order.php')}{$base_dir}index.php{else}{$smarty.server.HTTP_REFERER|escape:'htmlall':'UTF-8'}{/if}" title="{l s='Continue shopping'}">
				<img alt="{l s='previous'}" src="{$img_dir}back.png" />
				<span class="name">{l s='Continue shopping'}</span>
			</a>
		</li>
	</ul>

	{if ($carrier->id AND !$virtualCart) OR $delivery->id OR $invoice->id}
	<ul class="pageitem">
		{if $delivery->id}
		<li class="textbox">
			<span class="header">{l s='Delivery address'}</span>
			<ul class="address item" id="delivery_address">
				{if $delivery->company}<li class="address_company">{$delivery->company|escape:'htmlall':'UTF-8'}</li>{/if}
				<li class="address_name">{$delivery->lastname|escape:'htmlall':'UTF-8'} {$delivery->firstname|escape:'htmlall':'UTF-8'}</li>
				<li class="address_address1">{$delivery->address1|escape:'htmlall':'UTF-8'}</li>
				{if $delivery->address2}<li class="address_address2">{$delivery->address2|escape:'htmlall':'UTF-8'}</li>{/if}
				<li class="address_city">{$delivery->postcode|escape:'htmlall':'UTF-8'} {$delivery->city|escape:'htmlall':'UTF-8'}</li>
				<li class="address_country">{$delivery->country|escape:'htmlall':'UTF-8'}</li>
			</ul>
		</li>
		{/if}
		{if $invoice->id}
		<li class="textbox" id="invoice_address">
			<span class="header">{l s='Invoice address'}</span>
			<ul class="address item" id="address_delivery">
				{if $invoice->company}<li class="address_company">{$invoice->company|escape:'htmlall':'UTF-8'}</li>{/if}
				<li class="address_name">{$invoice->lastname|escape:'htmlall':'UTF-8'} {$invoice->firstname|escape:'htmlall':'UTF-8'}</li>
				<li class="address_address1">{$invoice->address1|escape:'htmlall':'UTF-8'}</li>
				{if $invoice->address2}<li class="address_address2">{$invoice->address2|escape:'htmlall':'UTF-8'}</li>{/if}
				<li class="address_city">{$invoice->postcode|escape:'htmlall':'UTF-8'} {$invoice->city|escape:'htmlall':'UTF-8'}</li>
				<li class="address_country">{$invoice->country|escape:'htmlall':'UTF-8'}</li>
			</ul>
		</li>
		{/if}
		{if $carrier->id AND !$virtualCart}
		<li class="textbox" id="order_carrier">
			<span class="header">{l s='Carrier:'}</span>
			{if isset($carrierPicture)}<img src="{$img_ship_dir}{$carrier->id}.jpg" alt="{l s='Carrier'}" class="standard" />{/if}
			<span>{$carrier->name|escape:'htmlall':'UTF-8'}</span>
		</li>
		{/if}
	</ul>
	{/if}

{/if}
</div>