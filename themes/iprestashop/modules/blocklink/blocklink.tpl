<!-- Block links module -->
<span class="graytitle">
{if $url}
	<a href="{$url}">{$title}</a>
{else}
	{$title}
{/if}
</span>
<ul class="pageitem">
	{foreach from=$blocklink_links item=blocklink_link}
	<li class="menu">
		<a href="{$blocklink_link.url|htmlentities}"{if $blocklink_link.newWindow} onclick="window.open(this.href);return false;"{/if}>
			<!-- img alt="list" src="{$img_manu_dir}{$manufacturer.id_manufacturer}-{$ips_img_small}.jpg" / -->
			<span class="name">{$blocklink_link.$lang}</span>
			<span class="arrow"></span>
		</a>
	</li>
	{/foreach}
</ul>
<!-- /Block links module -->
