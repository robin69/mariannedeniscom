<!-- Products list -->
{if isset($products) AND $products}
<ul class="pageitem">
	{foreach from=$products item=product name=loop}
	<li class="store {if $smarty.foreach.loop.first}first_item{elseif $smarty.foreach.loop.last}last_item{/if} {if $smarty.foreach.loop.index % 2}alternate_item{else}item{/if}">
		<a class="noeffect" href="{$link->getProductLink($product)}" title="{$product->name|escape:'htmlall':'UTF-8'}">
			<span class="image" style="background-image: url('{$link->getImageLink($product->link_rewrite, $product->cover, $ips_img_medium)}')"></span>
			<span class="name">{if $product->new == 1}<span class="new">{l s='new'}</span>{/if}{$product->name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</span>
			<span class="comment">
				{if isset($product->allow_oosp) && isset($product->quantity)}
					{if ($product->allow_oosp OR $product->quantity > 0)}<img src="{$img_dir}available.gif" alt="{l s='Available'}" />{else}<img src="{$img_dir}unavailable.gif" alt="{l s='Out of stock'}" />{/if}
				{/if}&nbsp;
				{$product->description_short|strip_tags|truncate:50:'...'}
			</span>
			<span class="comment">
				<p>
					{if !$priceDisplay || $priceDisplay == 2}{convertPrice price=$product->price}{if $priceDisplay == 2} {l s='+Tx'}{/if}{/if}
					{if $priceDisplay}{convertPrice price=$product->price_tax_exc}{if $priceDisplay == 2} {l s='-Tx'}{/if}{/if}
					{if $product->on_sale}
						- {l s='On sale!'}
					{elseif ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product->reduction_from))}
						- {l s='Reduction'}
					{/if}
				</p>
			</span>
			<span class="arrow"></span>
		</a>
	</li>
	{/foreach}
</ul>
{/if}
<!-- /Products list -->
