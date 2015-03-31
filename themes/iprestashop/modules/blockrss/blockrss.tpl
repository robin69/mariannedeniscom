<!-- Block RSS module-->
<span class="graytitle">{$title}</span>
<ul class="pageitem" id="rss_block">
{if $content}
	{$content}
{else}
	{l s='No RSS feed added' mod='blockrss'}
{/if}
</ul>
<script type="text/javascript">
<!--
{literal}
	$(document).ready(function() {
		//console.log($('#rss_block').find('li'));
		$('#rss_block').find('li').addClass('menu');
		$('#rss_block').find('a').each(function() {
			$(this).html('<span class="name">'+$(this).text()+'</span><span class="arrow"></span>');
		});
	});
{/literal}
//-->
</script>
<!-- /Block RSS module-->
