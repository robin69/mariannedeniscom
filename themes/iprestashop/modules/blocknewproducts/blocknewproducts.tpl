<!-- MODULE Block new products -->
<span class="graytitle"><a href="{$base_dir}new-products.php" title="{l s='New products' mod='blocknewproducts'}">{l s='New products' mod='blocknewproducts'}</a></span>
{if $new_products|@count > 0}
	{include file=$tpl_dir./product-list.tpl products=$new_products}
{else}
	{capture name=warning}{l s='No new product at this time' mod='blocknewproducts'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /MODULE Block new products -->
