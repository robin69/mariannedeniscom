<!-- MODULE Block best sellers -->
<span class="graytitle"><a href="{$base_dir}best-sales.php">{l s='Top sellers' mod='blockbestsellers'}</a></span>
{if $best_sellers|@count > 0}
	{include file=$tpl_dir./product-list.tpl products=$best_sellers}
{else}
	{capture name=warning}{l s='No best sellers at this time' mod='blockbestsellers'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /MODULE Block best sellers -->
