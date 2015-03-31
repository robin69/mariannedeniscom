<!-- Module Block TOP MENU -->
{if $MENU != ''}
<ul class="pageitem" id="blocktopmenu">
	{$MENU}
	{if $MENU_SEARCH}
	<li class="menu">
		<a href="{$base_dir}search.php" title="{l s='search' mod='blocktopmenu'}">
			{l s='Search' mod='blocktopmenu'}
		</a>
	</li>
	{/if}
</ul>
{/if}
<script type="text/javascript">
{literal}
$(document).ready(function() {
	$('#blocktopmenu ul').remove(); // remove all sub list
	$('#blocktopmenu li').each(function () {
		$(this).addClass('menu');
		$(this).find('a').html('<span class="name">'+$(this).text()+'</span><span class="arrow"></span>');
	}); // remove all sub list
});
{/literal}
</script>
<!-- /Module Block TOP MENU -->
