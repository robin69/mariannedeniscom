{include file=$tpl_dir./breadcrumb.tpl} 
{include file=$tpl_dir./errors.tpl}

{if $category->id AND $category->active}
	<h2 class="category_title">{strip}
		{$category->name|escape:'htmlall':'UTF-8'} {if $nb_products == 0}{else}({$nb_products}){/if}
		{/strip}
	</h2>

	{if $scenes}
		<!-- Scenes -->
		{include file=$tpl_dir./scenes.tpl scenes=$scenes}
	{else}
		<!-- Category image -->
		{if $category->id_image}
			<img src="{$link->getCatImageLink($category->link_rewrite, $category->id_image, 'category')}" width="203" height="203" alt="{$category->name|escape:'htmlall':'UTF-8'}" title="{$category->name|escape:'htmlall':'UTF-8'}" id="categoryImage" style="display:none;" />
		{/if}
	{/if}

	{if $category->description}
		<div class="cat_desc">{$category->description}</div>
	{/if}
	
	{if isset($subcategories)}
		
	<!-- Subcategories -->
	<div id="subcategories">
		<h3 style="display:none;">{l s='Subcategories'}</h3>
		<ul>	
		{counter start=0 print=false assign=compteur}
		{foreach from=$subcategories item=subcategory}{counter}
			
			<li>
				<a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">
					
					<div class="cat-overview-item-img">
						{if $subcategory.id_image}
							<img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'category')}" alt="" />
						{else}
							<img src="{$img_cat_dir}default-medium.jpg" alt="" />
						{/if}

					</div>
					
					<div class="cat-overview-item">
						<h3>{$subcategory.name|escape:'htmlall':'UTF-8'}</h3>
						<p>{$subcategory.description|escape:'htmlall':'UTF-8'}</p>
						<span>D&eacute;tails [+]</span>
					</div>
					
				</a>
			</li>
			{if $compteur==8}
		</ul>
		<hr class="rupture" />
		<ul>
			{/if}
		{/foreach}
		</ul>
		<br class="clear"/>
	</div>
	{/if}
	{$category->description}
	{if $products}
		
			{include file=$tpl_dir./product-sort.tpl}
			{include file=$tpl_dir./pagination.tpl}
			{include file=$tpl_dir./product-list.tpl products=$products}
			{include file=$tpl_dir./sidebar-catalogue.tpl}
			{include file=$tpl_dir./pagination.tpl}
		{elseif !isset($subcategories)}
			<p class="warning">{l s='There are no products in this category.'}</p>
		{/if}
		
{elseif $category->id}
	<p class="warning">{l s='This category is currently unavailable.'}</p>
{/if}
