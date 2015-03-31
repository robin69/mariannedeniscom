<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
	</div>
	<div id="title">{l s='Sitemap'}</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Information'}</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="{$base_dir_ssl}contact-form.php">{l s='Contact'}</a></li>
				{foreach from=$cmslinks item=cmslink}
					<li><a href="{$cmslink.link}" title="{$cmslink.meta_title}">{$cmslink.meta_title}</a></li>
				{/foreach}
			</ul>
		</li>
	</ul>
	<span class="graytitle">{l s='Our offers'}</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="{$base_dir}new-products.php">{l s='New products'}</a></li>
				<li><a href="{$base_dir}best-sales.php">{l s='Top sellers'}</a></li>
				<li><a href="{$base_dir}prices-drop.php">{l s='Specials'}</a></li>
				<li><a href="{$base_dir}manufacturer.php">{l s='Manufacturers'}</a></li>
				<li><a href="{$base_dir}supplier.php">{l s='Suppliers'}</a></li>
			</ul>
		</li>
	</ul>
	<span class="graytitle">{l s='Your Account'}</span>
	<ul class="pageitem">
		<li class="textbox">
			<ul>
				<li><a href="{$base_dir_ssl}my-account.php">{l s='Your Account'}</a></li>
				<li><a href="{$base_dir_ssl}identity.php">{l s='Personal information'}</a></li>
				<li><a href="{$base_dir_ssl}addresses.php">{l s='Addresses'}</a></li>
				{if $voucherAllowed}<li><a href="{$base_dir_ssl}discount.php">{l s='Discount'}</a></li>{/if}
				<li><a href="{$base_dir_ssl}history.php">{l s='Orders history'}</a></li>
			</ul>
		</li>
	</ul>
	<span class="graytitle">{l s='Categories'}</span>
	<ul class="pageitem">
	{foreach from=$categoriesTree.children item=child name=loop}
		{include file=$tpl_dir./category-tree-branch.tpl node=$child space=0}
	{/foreach}
	</ul>
</div>
