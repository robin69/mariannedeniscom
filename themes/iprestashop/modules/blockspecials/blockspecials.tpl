<!-- MODULE Block specials -->
<span class="graytitle"><a href="{$base_dir}prices-drop.php" title="{l s='Specials' mod='blockspecials'}">{l s='Specials' mod='blockspecials'}</a></span>
{if $special}
<ul class="pageitem">
	{include file=$tpl_dir./product-list-item.tpl product=$special}
</ul>
{else}
	{capture name=warning}{l s='No specials at this time' mod='blockspecials'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /MODULE Block specials -->