<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
	</div>
	<div id="title">
		{l s='Search'}
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
</div>

<div class="searchbox">
	<form action="{$base_dir}search.php" method="get" id="searchbox">
		<fieldset>
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input id="search_query" placeholder="{l s='search'}" type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{elseif $query}{$query}{/if}" />
			<input id="submit" type="hidden" name="submit_search" />
		</fieldset>
	</form>
</div>
{if $ajaxsearch}
	<script type="text/javascript">
		{literal}
		function formatSearch(row) {
			return row[2] + ' > ' + row[1];
		}
		function redirectSearch(event, data, formatted) {
			$('#search_query').val(data[1]);
			document.location.href = data[3];
		}
		$('document').ready( function() {
			$("#search_query").autocomplete(
				'{/literal}{$base_dir}{literal}search.php', {
				minChars: 3,
				max:10,
				width:500,
				scroll: false,
				formatItem:formatSearch,
				extraParams: { ajaxSearch:1,id_lang:{/literal}{$cookie->id_lang}{literal} }
			}).result(redirectSearch)
		});
		{/literal}
	</script>
{/if}

<div id="content">
	{include file=$tpl_dir./errors.tpl}
{if !$nbProducts}
	{if $query}
	<span class="header">{l s='No results found for your search'}&nbsp;"{$query|escape:'htmlall':'UTF-8'}"</span>
	{/if}
	<span class="graytitle">{l s='Please type a search keyword above.'}</span>
{else}
	<span class="header">{l s='Search'} "{if $query}{$query|escape:'htmlall':'UTF-8'}{elseif $tag}{$tag|escape:'htmlall':'UTF-8'}{elseif $ref}{$ref|escape:'htmlall':'UTF-8'}{/if}"</span>
	<span class="graytitle"><b>{$nbProducts|intval}</b>&nbsp;{if $nbProducts == 1}{l s='result has been found.'}{else}{l s='results have been found.'}{/if}</span>
	{include file=$tpl_dir./product-sort.tpl}
	{include file=$tpl_dir./product-list.tpl products=$products}
	{include file=$tpl_dir./pagination.tpl}
{/if}
</div>