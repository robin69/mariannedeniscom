<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?config=1">{l s='Config'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}my-account.php" class="noeffect">{l s='My account'}</a>
	</div>
</div>
<div id="content">
	<span class="graytitle">{$cms->meta_title}</span>
	<ul class="pageitem">
		<li class="textbox">
		{if $cms}
			<div class="rte">{$cms->content}</div>
		{else}
			<p>{l s='This page does not exist.'}</p>
		{/if}
		</li>
	</ul>
</div>
