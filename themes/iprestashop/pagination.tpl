<!-- Pagination -->
{if isset($p) AND $p}
	{if $smarty.get.id_category|intval}
		{assign var='requestPage' value=$link->getPaginationLink('category', $category, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('category', $category, true, false, false, true)}
	{elseif $smarty.get.id_manufacturer|intval}
		{assign var='requestPage' value=$link->getPaginationLink('manufacturer', $manufacturer, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('manufacturer', $manufacturer, true, false, false, true)}
	{elseif $smarty.get.id_supplier|intval}
		{assign var='requestPage' value=$link->getPaginationLink('supplier', $supplier, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('supplier', $supplier, true, false, false, true)}
	{else}
		{assign var='requestPage' value=$link->getPaginationLink(false, false, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink(false, false, true, false, false, true)}
	{/if}

<span class="header pagination" style="text-align: center; display: block;">
	{if $start!=$stop}
		{if $p != 1}
			{assign var='p_previous' value=$p-1}
			<a href="{$link->goPage($requestPage, $p_previous)}">&laquo;&nbsp;{l s='Previous'}</a>
		{else}
			<span>&laquo;&nbsp;{l s='Previous'}</span>
		{/if}
		&nbsp;&nbsp;&nbsp;
		{if $start>3}
			<a href="{$link->goPage($requestPage, 1)}">1</a> ...
		{/if}
		{section name=pagination start=$start loop=$stop+1 step=1}
			{if $p == $smarty.section.pagination.index}
				<span class="current">{$p|escape:'htmlall':'UTF-8'}</span>
			{else}
				<a href="{$link->goPage($requestPage, $smarty.section.pagination.index)}">{$smarty.section.pagination.index|escape:'htmlall':'UTF-8'}</a>
			{/if}
		{/section}
		{if $pages_nb>$stop+2}
			<a href="{$link->goPage($requestPage, $pages_nb)}">{$pages_nb|intval}</a>
		{/if}
		&nbsp;&nbsp;&nbsp;
		{if $pages_nb > 1 AND $p != $pages_nb}
			{assign var='p_next' value=$p+1}
			<a href="{$link->goPage($requestPage, $p_next)}">{l s='Next'}&nbsp;&raquo;</a>
		{else}
			<span>{l s='Next'}&nbsp;&raquo;</span>
		{/if}
	{/if}
</span>

<form action="{if !is_array($requestNb)}{$requestNb}{else}{$requestNb.requestUrl}{/if}" method="get" class="pagination" id="paginationForm">
	<fieldset>
		<ul class="pageitem">
			<li class="select">
				<select name="n" id="nb_item" onchange="$('#paginationForm').submit()">
				{foreach from=$nArray item=nValue}
					<option value="{$nValue|escape:'htmlall':'UTF-8'}" {if $n == $nValue}selected="selected"{/if}>
						{$nValue|escape:'htmlall':'UTF-8'} {l s='items'}
					</option>
				{/foreach}
				</select>
				<span class="arrow"></span>
			</li>
		</ul>
		{if is_array($requestNb)}
			{foreach from=$requestNb item=requestValue key=requestKey}
				{if $requestKey != 'requestUrl'}
					<input type="hidden" name="{$requestKey|escape:'htmlall':'UTF-8'}" value="{$requestValue|escape:'htmlall':'UTF-8'}" />
				{/if}
			{/foreach}
		{/if}
		{if isset($query) AND $query}<input type="hidden" name="search_query" value="{$query|escape:'htmlall':'UTF-8'}" />{/if}
		{if isset($tag) AND $tag AND !is_array($tag)}<input type="hidden" name="tag" value="{$tag|escape:'htmlall':'UTF-8'}" />{/if}
	</fieldset>
</form>

	<!-- /Pagination -->
{/if}
