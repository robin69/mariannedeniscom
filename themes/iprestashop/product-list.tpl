{if isset($products) AND $products}
<!-- Products list -->
<ul class="pageitem">
	{foreach from=$products item=product name=loop}
		{include file=$tpl_dir./product-list-item.tpl product=$product}
	{/foreach}
</ul>
<!-- /Products list -->
{/if}