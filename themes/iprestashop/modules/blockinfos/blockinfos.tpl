<!-- Block informations module -->
<span class="graytitle">{l s='Information' mod='blockinfos'}</span>
<ul class="pageitem">
{foreach from=$cmslinks item=cmslink}
	<li class="menu">
		<a href="{$cmslink.link}" title="{$cmslink.meta_title|escape:htmlall:'UTF-8'}">
			<span class="name">{$cmslink.meta_title|escape:htmlall:'UTF-8'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{/foreach}
</ul>
<!-- /Block informations module -->
