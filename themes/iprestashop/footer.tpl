{if isset($smarty.get.browse)}
	<div id="topbar">
		<div id="leftnav">
			<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		</div>
		<div id="title">
			{l s='Browse'}
		</div>
		<div id="rightbutton">
			<a href="{$base_dir}search.php">{l s='Search'}</a>
		</div>
	</div>
	<div id="content">
		{$HOOK_LEFT_COLUMN}
		{$HOOK_RIGHT_COLUMN}
	</div>
{/if}

		<div id="footer">
			{if $logged}
			<a href="{$base_dir_ssl}my-account.php">{$customerName}</a> (<a href="{$base_dir}index.php?mylogout" title="{l s='Log me out'}">{l s='Log out'}</a>)
			{else}
			<a href="{$base_dir_ssl}my-account.php">{l s='Log in'}</a>
			{/if}
			<hr />
			{$HOOK_FOOTER}
			<a class="noeffect" href="http://mariannedenis.com">Mariannedenis.com</a> {l s='by'} <a href="http://www.studio-http.com">Studio HTTP</a>.
		</div>
	</body>
</html>
