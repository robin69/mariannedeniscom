<!-- Block Viewed products -->
<span class="graytitle">{l s='Viewed products' mod='blockviewed'}</span>
{if isset($productsViewedObj) AND $productsViewedObj}
	{include file=$tpl_dir./product-list-object.tpl products=$productsViewedObj}
{/if}
<!-- /Block Viewed products -->
