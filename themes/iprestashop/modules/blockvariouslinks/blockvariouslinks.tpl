<!-- MODULE Block various links -->
<div id="block_various_links_footer">
	<a href="{$base_dir}prices-drop.php" title="">{l s='Specials' mod='blockvariouslinks'}</a>
	/ <a href="{$base_dir}new-products.php" title="">{l s='New products' mod='blockvariouslinks'}</a>
	/ <a href="{$base_dir}best-sales.php" title="">{l s='Top sellers' mod='blockvariouslinks'}</a>
	/ <a href="{$base_dir_ssl}contact-form.php" title="">{l s='Contact us' mod='blockvariouslinks'}</a>
	{foreach from=$cmslinks item=cmslink}
		/ <a href="{$cmslink.link|addslashes}" title="{$cmslink.meta_title|escape:'htmlall':'UTF-8'}">{$cmslink.meta_title|escape:'htmlall':'UTF-8'}</a>
	{/foreach}
</div>
<hr/>
<!-- /MODULE Block various links -->
