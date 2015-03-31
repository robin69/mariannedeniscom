{if isset($product) AND $product}
<!-- Products list item -->
<li class="store {if $smarty.foreach.loop.first}first_item{elseif $smarty.foreach.loop.last}last_item{/if} {if $smarty.foreach.loop.index % 2}alternate_item{else}item{/if}">
	<a class="noeffect" href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.name|escape:'htmlall':'UTF-8'}">
		<span class="image" style="background-image: url('{$link->getImageLink($product.link_rewrite, $product.id_image, $ips_img_medium)}')"></span>
		{*if ($product.allow_oosp OR $product.quantity > 0)}{l s='Available'}{else}{l s='Out of stock'}{/if*}
		<span class="name">{if $product.new == 1}<span class="new">{l s='new'}</span>{/if}{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</span>
		<span class="comment">
			{if isset($product.allow_oosp) && isset($product.quantity)}
				{if ($product.allow_oosp OR $product.quantity > 0)}
				<img src="{$img_dir}available.gif" alt="{l s='Available'}" />
				{else}
				<img src="{$img_dir}unavailable.gif" alt="{l s='Out of stock'}" />
				{/if}
			{/if}&nbsp;
			{$product.description_short|strip_tags|truncate:50:'...'}
		</span>
		<span class="comment">
			<p>
				{if !$priceDisplay || $priceDisplay == 2}{convertPrice price=$product.price}{if $priceDisplay == 2} {l s='+Tx'}{/if}{/if}
				{if $priceDisplay}{convertPrice price=$product.price_tax_exc}{if $priceDisplay == 2} {l s='-Tx'}{/if}{/if}
				{if $product.on_sale || ($product.reduction_price != 0 || $product.reduction_percent != 0) && ($product.reduction_from == $product.reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product.reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product.reduction_from))}
				- <span class="reduction">
					{if $product.on_sale}
						{l s='On sale'}
					{elseif ($product.reduction_price != 0 || $product.reduction_percent != 0) && ($product.reduction_from == $product.reduction_to OR ($smarty.now|date_format:'%Y-%m-%d' <= $product.reduction_to && $smarty.now|date_format:'%Y-%m-%d' >= $product.reduction_from))}
						{l s='Reduction'}
					{/if}
					<!-- span class="price-discount">{displayWtPrice p=$product.price_without_reduction}</span -->
					{if $product.reduction_percent > 0 OR  $product.reduction_price > 0}
					: {if $product.reduction_percent}-{$product.reduction_percent}%{elseif $product.reduction_price}-{convertPrice price=$product.reduction_price}{/if}
					{/if}
				</span>
				{/if}
			</p>
		</span>
		<span class="arrow"></span>
	</a>
</li>
<!-- /Products list item -->
{/if}
