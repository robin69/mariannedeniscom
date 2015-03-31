<!-- MODULE Loyalty -->
<ul class="pageitem" id="loyalty">
	<li class="textbox align_justify">
	{if $points > 0}
		{l s='By check out this shopping cart you can collect' mod='loyalty'} {$points} {l s='loyalty points as a voucher of' mod='loyalty'} {convertPrice price=$voucher}.
	{else}
		{l s='Add some products to your shopping cart to collect some loyalty points.' mod='loyalty'}
	{/if}
	</li>
	<li class="menu">
		<a href="{$module_dir}loyalty-program.php" title="{l s='Loyalty program' mod='loyalty'}">
			<img src="{$img_dir}loyalty.png" alt="{l s='Loyalty program' mod='loyalty'}" />
			<span class="name">{l s='Your reward points.' mod='loyalty'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>
<!-- /MODULE Loyalty -->
