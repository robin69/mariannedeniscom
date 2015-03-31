<!-- Block categories module -->
<span class="graytitle">{l s='Categories' mod='blockcategories'}</span>
<ul class="pageitem">
{if $blockCategTree.children|@count > 0}
	{foreach from=$blockCategTree.children item=node name=loop}
		{include file=$tpl_dir./category-tree-branch.tpl node=$node space=0}
	{/foreach}
{/if}
</ul>
<!-- /Block categories module -->
