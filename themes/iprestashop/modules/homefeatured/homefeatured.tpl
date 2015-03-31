<!-- MODULE Home Featured Products -->
<span class="graytitle">{l s='Featured products' mod='homefeatured'}</span>
{if isset($products) AND $products}
	{include file=$tpl_dir./product-list.tpl products=$products}
{else}
	{capture name=warning}{l s='No featured products' mod='homefeatured'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /MODULE Home Featured Products -->
