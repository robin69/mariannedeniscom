<!-- Block suppliers module -->
<span class="graytitle">
	<a href="{$base_dir}supplier.php" title="{l s='Suppliers' mod='blocksupplier'}">{l s='Suppliers' mod='blocksupplier'}</a>
</span>
{if $suppliers}
<ul class="pageitem">
	{if $text_list}
	{foreach from=$suppliers item=supplier name=supplier_list}
		{if $smarty.foreach.supplier_list.iteration <= $text_list_nb}
	<li class="menu">
		<a href="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}" title="{l s='More about' mod='blocksupplier'} {$supplier.name}">
			<img alt="list" src="{$img_sup_dir}{$supplier.id_supplier}-{$ips_img_small}.jpg" />
			<span class="name">{$supplier.name}</span>
			<span class="arrow"></span>
		</a>
	</li>
		{/if}
	{/foreach}
	{/if}
	{if $form_list}
	<form action="{$smarty.server.SCRIPT_NAME}" method="get">
		<li class="select">
			<select id="supplier_list" onchange="autoUrl('supplier_list', '');">
				<option value="0">{l s='All suppliers' mod='blocksupplier'}</option>
			{foreach from=$suppliers item=supplier}
				<option value="{$link->getsupplierLink($supplier.id_supplier, $supplier.link_rewrite)}">{$supplier.name}</option>
			{/foreach}
			</select>
			<span class="arrow"></span>
		</li>
	</form>
	{/if}
</ul>
{else}
	{capture name=warning}{l s='No supplier' mod='blocksupplier'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{/if}
<!-- /Block suppliers module -->
