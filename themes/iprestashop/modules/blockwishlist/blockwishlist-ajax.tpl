<!-- Module Block WISHLIST -->
{if $products}
	{foreach from=$products item=product name=i}
	<li class="menu">
		<a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category_rewrite)}" title="{$product.name|escape:'htmlall':'UTF-8'}">
			<span class="name">
				<span class="quantity-formated"><span class="quantity">{$product.quantity|intval}</span>x</span>
				{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}
			</span>
			<!-- span class="comment">
				<a class="ajax_cart_block_remove_link" href="javascript:WishlistCart('wishlist_block_list', 'delete', '{$product.id_product}', {$product.id_product_attribute}, '0', '{$token}');" title="{l s='remove this product from my wishlist' mod='blockwishlist'}">
					{l s='Delete' mod='blockwishlist'}
				</a>
			</span -->
			{if isset($product.attributes_small)}
			<span class="comment">
				{$product.attributes_small|escape:'htmlall':'UTF-8'}
			</span>
			{/if}
			<span class="arrow"></span>
		</a>
	</li>
	{/foreach}
{else}
	{if $error}
		<li class="error">{l s='You must create a wishlist before adding products' mod='blockwishlist'}</li>
	{else}
		<li class="warning">{l s='No products' mod='blockwishlist'}</li>
	{/if}
{/if}
<!-- /Module Block WISHLIST -->
