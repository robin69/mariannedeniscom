<li {if $last == 'true'}class="last"{/if}>
	<a href="{$node.link|escape:'htmlall':'UTF-8'}" {if $node.id == $currentCategoryId}class="selected"{/if} title="{$node.desc|escape:'htmlall':'UTF-8'}">{$node.name|escape:'htmlall':'UTF-8'}</a>
	{if $node.children|@count > 0}
		<ul style="list-style-type:none;margin:10px 0;">
		{foreach from=$node.children item=child name=categoryTreeBranch}
			{if $smarty.foreach.categoryTreeBranch.last}
						{include file=$tpl_dir./category-tree-branch.tpl node=$child last='true'}
			{else}
						{include file=$tpl_dir./category-tree-branch.tpl node=$child last='false'}
			{/if}
		{/foreach}
		</ul>
	{/if}
</li>
