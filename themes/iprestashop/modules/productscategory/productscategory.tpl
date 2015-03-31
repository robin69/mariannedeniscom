<!-- Module PRODUCTS CATEGORY -->
{if count($categoryProducts) > 0}
	<span class="graytitle">
	{section loop=$categoryProducts name=loop step=1 start=0 max=1}
		{if isset($categoryProducts[$smarty.section.loop.index].id_category_default) AND $categoryProducts[$smarty.section.loop.index].id_category_default > 1}
		<a href="{$base_dir}category.php?id_category={$categoryProducts[$smarty.section.loop.index].id_category_default}">
			{l s='In same category' mod='productscategory'}
		</a>
		{else}
			{l s='In same category' mod='productscategory'}
		{/if}
	{/section}
	</span>
	{include file=$tpl_dir./product-list.tpl products=$categoryProducts}
{/if}
<!-- /Module PRODUCTS CATEGORY -->
