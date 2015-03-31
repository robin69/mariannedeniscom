{if $node}
	<li class="menu">
		<a href="{$link->getCategoryLink($node.id_category, $node.link_rewrite)}" title="{$node.description|escape:htmlall:'UTF-8'}">
		{if $node.id_image}
			<img alt="" src="{$link->getCatImageLink($node.legend, $node.id_image, $ips_img_small)}" />
		{else}
			<img src="{$img_cat_dir}{$lang_iso}-default-{$ips_img_small}.jpg" alt="" />
		{/if}
			<span class="name">
				{if isset($space) && $space > 0}{section name=nbsp start=0 loop=$space}&nbsp;&raquo;{/section}{/if}
				{$node.name|escape:htmlall:'UTF-8'}
			</span>
			<span class="arrow"></span>
		</a>
	</li>
	{if $node.children|@count > 0}
		{math equation="x + 1" x=`$space` assign='space'}
		{foreach from=$node.children item=child name=categoryTreeBranch}
			{include file=$tpl_dir./category-tree-branch.tpl node=$child space=$space}
		{/foreach}
	{/if}
{/if}