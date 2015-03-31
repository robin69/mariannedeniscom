<!-- Block tags module -->
<span class="graytitle">{l s='Tags' mod='blocktags'}</span>
{if $tags}
<ul class="pageitem">
	<li class="textbox">
		<p>
		{foreach from=$tags item=tag name=myLoop}
			<a href="{$base_dir}search.php?tag={$tag.name|urlencode}" title="{l s='More about' mod='blocktags'} {$tag.name|escape:htmlall:'UTF-8'}" class="{$tag.class} {if $smarty.foreach.myLoop.last}last_item{elseif $smarty.foreach.myLoop.first}first_item{else}item{/if}">{$tag.name|escape:htmlall:'UTF-8'} ({$tag.times})</a>
			{if !$smarty.foreach.myLoop.last}/{/if}
		{/foreach}
		</p>
	</li>
</ul>
{else}
	{capture name=warning}{l s='No tags specified yet' mod='blocktags'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /Block tags module -->
