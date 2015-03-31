<!-- MODULE Wishlist -->
<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='blockwishlist'}" src="{$ips_img_dir}home.png" /></a>
{if $logged}
		<a href="{$base_dir_ssl}modules/blockwishlist/mywishlist.php">{l s='My wishlists' mod='blockwishlist'}</a>
{/if}
	</div>
{if $logged}
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='blockwishlist'}</a>
	</div>
{else}
	<div id="title">
		{$shop_name}
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php">{l s='Cart' mod='blockwishlist'}</a>
	</div>
{/if}
</div>

<div id="content">
	<span class="graytitle">{l s='Welcome to the wishlist of' mod='blockwishlist'} {$current_wishlist.firstname} {$current_wishlist.lastname}: {$current_wishlist.name}</span>

{if $products}
<div class="addresses" id="featured-products_block_center">
	{foreach from=$products item=product name=i}
	<form id="addtocart_{$product.id_product|intval}_{$product.id_product_attribute|intval}" action="{$base_dir}cart.php" method="post" class="{if $smarty.foreach.i.last}last_item{elseif $smarty.foreach.i.first}first_item{/if} {if $smarty.foreach.i.index % 2}alternate_item{else}item{/if}">
		<fieldset>
			<ul class="pageitem">
				<li class="store">
					<a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category_rewrite)}" title="{$product.name|escape:'htmlall':'UTF-8'}">
						<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.cover, $ips_img_medium)}')"></span>
						<span class="name">{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</span>
						<span class="comment">
							{l s='Priority:' mod='blockwishlist'}
							{if $product.priority eq 0}
							<span class="priority_high">{l s='High' mod='blockwishlist'}</span>
							{elseif $product.priority eq 1}
							<span class="priority_medium">{l s='Medium' mod='blockwishlist'}</span>
							{else}
							<span class="priority_low">{l s='Low' mod='blockwishlist'}</span>
							{/if}
						</span>
						<span class="comment">
							<p>
						{if isset($product.attributes_small)}
							{$product.attributes_small|escape:'htmlall':'UTF-8'}
						{/if}
							</p>
						</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="smallfield">
					<span class="name">{l s='Quantity:' mod='blockwishlist'}</span>
					<input placeholder="" type="text" name="qty" id="{$product.id_product}_{$product.id_product_attribute}" value="{$product.quantity|intval}" />
				</li>
				{if $product.attribute_quantity AND $product.attribute_quantity >= 1}
				<input type="hidden" name="id_product" value="{$product.id_product|intval}" id="product_page_product_id"  />
				<input type="hidden" name="add" value="1" />
				<input type="hidden" name="token" value="{$token}" />
				<input type="hidden" name="id_product_attribute" id="idCombination" value="{$product.id_product_attribute|intval}" />
				<li class="menu add_to_cart">
					<a class="exclusive" href="javascript:WishlistBuyProduct('{$token|escape:'htmlall':'UTF-8'}', '{$product.id_product}', '{$product.id_product_attribute}', '{$product.id_product}_{$product.id_product_attribute}', this, {$ajax});" title="{l s='Add to cart' mod='homefeatured'}">
						<span class="name">{l s='Add to cart' mod='blockwishlist'}</span>
					</a>
				</li>
				{/if}
			</ul>
		</fieldset>
	</form>
	{/foreach}
{else}
	{capture name=warning}{l s='No products' mod='blockwishlist'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}

{if $wishlists && count($wishlists) > 1}
	<ul class="pageitem">
		<li class="textbox">
			<span class="header">
				{l s='Other wishlists of' mod='blockwishlist'} {$current_wishlist.firstname} {$current_wishlist.lastname}:
			</span>
		</li>
	{foreach from=$wishlists item=wishlist name=i}
		{if $wishlist.id_wishlist != $current_wishlist.id_wishlist}
		<li class="menu">
			<a href="{$base_dir_ssl}modules/blockwishlist/view.php?token={$wishlist.token}">
				<span class="name">{$wishlist.name}</span>
				<span class="arrow"></span>
			</a>
		</li>
		{/if}
	{/foreach}
	</ul>
{/if}

</div>
<!-- /MODULE Wishlist -->
