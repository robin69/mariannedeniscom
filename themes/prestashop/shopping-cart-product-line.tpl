<tr class="{if $smarty.foreach.productLoop.last}last_item{elseif $smarty.foreach.productLoop.first}first_item{/if}{if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0}alternate_item{/if} cart_item">
	<td class="cart_product" width="90" style="padding-left:10px;">
		<a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'small')}" alt="{$product.name|escape:'htmlall':'UTF-8'}" width="60" height="60" /></a>
	</td>
	<td class="cart_description">
		<h5><a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}">{$product.name|escape:'htmlall':'UTF-8'}</a></h5>
		{if $product.attributes}<a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}">{$product.attributes|escape:'htmlall':'UTF-8'}</a>{/if}
	</td>
	<td class="cart_ref" align="left" width="120" style="text-align:left;">{if $product.reference}{$product.reference|escape:'htmlall':'UTF-8'}{else}--{/if}</td>
	<td class="cart_unit" align="left" width="90" style="padding-right:15px;">
		<span class="price">
			{if !$priceDisplay}{convertPrice price=$product.price_wt}{else}{convertPrice price=$product.price}{/if}
		</span>
	</td>
	<td class="cart_quantity"{if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0} style="text-align: center;"{/if} width="120">
		{if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0}<p class="cart_quantity_nb_custom">{$product.customizationQuantityTotal}</p>{/if}
		{if !isset($customizedDatas.$productId.$productAttributeId) OR $quantityDisplayed > 0}
			<a class="cart_quantity_delete" href="{$base_dir_ssl}cart.php?delete&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;token={$token_cart}" title="{l s='Delete'}"><img src="{$img_dir}icon/delete.gif" alt="{l s='Delete'}" class="icon" /></a>
		<p class="cart_quantity_nb">{if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}{$customizedDatas.$productId.$productAttributeId|@count}{else}{$product.cart_quantity-$quantityDisplayed}{/if}</p>
		<p class="cart_quantity_container">	
			<a class="cart_quantity_up" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;token={$token_cart}" title="{l s='Add'}"><img src="{$img_dir}icon/quantity_up.gif" alt="{l s='Add'}" /></a><br />
			<a class="cart_quantity_down" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;op=down&amp;token={$token_cart}" title="{l s='Subtract'}"><img src="{$img_dir}icon/quantity_down.gif" alt="{l s='Subtract'}" /></a>
		</p>
		{/if}
	</td>
	<td class="cart_total" width="100" style="text-align:right;padding-right:10px;">
		<span class="price">
			{if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}
				{if !$priceDisplay}{displayPrice price=$product.total_customization_wt}{else}{displayPrice price=$product.total_customization}{/if}
			{else}
				{if !$priceDisplay}{displayPrice price=$product.total_wt}{else}{displayPrice price=$product.total}{/if}
			{/if}
		</span>
	</td>
</tr>
