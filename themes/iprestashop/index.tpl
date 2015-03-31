{if $smarty.get.config}
	<div id="topbar">
		<div id="leftnav">
			<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		</div>
		<div id="title">
			{l s='Config'}
		</div>
		<div id="rightbutton">
			<a href="{$base_dir}my-account.php">{l s='My account'}</a>
		</div>
	</div>
	<div id="content">
		<!-- span class="graytitle">{l s='Configure your navigation'}</span -->
		{$HOOK_TOP}
	</div>

{elseif $smarty.get.browse}
	{* display in footer.tpl *}

{else}
	<div id="topbar">
		<div id="title">
			{l s='Home'}
		</div>
		<div id="leftbutton">
			<a href="{$base_dir}?config=1" class="noeffect">{l s='Config'}</a>
		</div>
		<div id="rightbutton">
			<a href="{$base_dir}search.php">{l s='Search'}</a>
		</div>
	</div>
	<div id="content">
		{$HOOK_HOME}
	</div>
{/if}
