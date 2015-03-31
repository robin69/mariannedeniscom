<!-- Module Block Wishlist -->
<span class="graytitle">
	<a href="{$base_dir_ssl}/modules/blockwishlist/mywishlist.php">{l s='My wishlist' mod='blockwishlist'}</a>
</span>
{if $wishlists}
<form>
	<fieldset>
		<ul class="pageitem">
			<li class="select">
				<select name="wishlists" id="wishlists" onchange="WishlistChangeDefault('wishlist_block_list', $('#wishlists').val());">
				{foreach from=$wishlists item=wishlist name=i}
					<option value="{$wishlist.id_wishlist}"{if $id_wishlist eq $wishlist.id_wishlist or ($id_wishlist == false and $smarty.foreach.i.first)} selected="selected"{/if}>{$wishlist.name|truncate:22:'...'|escape:'htmlall':'UTF-8'}</option>
				{/foreach}
				</select>
				<span class="arrow"></span>
			</li>
		</ul>
	</fieldset>
</form>
{/if}
{if $products}
<ul id="wishlist_block_list" class="pageitem">
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
</ul>
{else}
	{capture name=warning}{l s='No products' mod='blockwishlist'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /Module Block Wishlist -->
