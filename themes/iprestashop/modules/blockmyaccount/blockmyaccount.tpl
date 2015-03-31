<!-- Block myaccount module -->
<span class="graytitle">{l s='My account' mod='blockmyaccount'}</span>
<ul class="pageitem">
	<li class="menu">
		<a href="{$base_dir_ssl}history.php" title="{l s='My orders' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$ips_thumb_dir}calendar.png" />
			<span class="name">{l s='My orders' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{if $returnAllowed}
	<li class="menu">
		<a href="{$base_dir_ssl}order-follow.php" title="{l s='My merchandise returns' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$ips_thumb_dir}clock.png" />
			<span class="name">{l s='My merchandise returns' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{/if}
	<li class="menu">
		<a href="{$base_dir_ssl}order-slip.php" title="{l s='My credit slips' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$ips_thumb_dir}notepad.png" />
			<span class="name">{l s='My credit slips' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
	<li class="menu">
		<a href="{$base_dir_ssl}addresses.php" title="{l s='My addresses' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$ips_thumb_dir}contacts.png" />
			<span class="name">{l s='My addresses' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
	<li class="menu">
		<a href="{$base_dir_ssl}identity.php" title="{l s='My personal info' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$ips_thumb_dir}accessibility.png" />
			<span class="name">{l s='My personal info' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{if $voucherAllowed}
	<li class="menu">
		<a href="{$base_dir_ssl}discount.php" title="{l s='My vouchers' mod='blockmyaccount'}">
			<img alt="{l s='account'}" src="{$img_dir}voucher.png" />
			<span class="name">{l s='My vouchers' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
{/if}
	{$HOOK_BLOCK_MY_ACCOUNT}
	<li class="menu">
		<a href="{$base_dir}index.php?mylogout">
			<img alt="{l s='log out' mod='blockmyaccount'}" src="{$img_dir}logout.png" />
			<span class="name">{l s='Sign out' mod='blockmyaccount'}</span>
			<span class="arrow"></span>
		</a>
	</li>
</ul>


<!-- /Block myaccount module -->
