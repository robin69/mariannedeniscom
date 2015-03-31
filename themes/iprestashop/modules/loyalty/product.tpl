<!-- MODULE Loyalty -->
<ul class="pageitem" id="loyalty">
	<li class="textbox align_justify">
	{if $points}
		{l s='By buying this product you can collect up to' mod='loyalty'} {$points} {l s='reward points as a voucher of' mod='loyalty'} {convertPrice price=$voucher}.
	{else}
		{l s='No reward points for this product.' mod='loyalty'}
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
