<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
	</div>
	<div id="title">{l s='My account'}</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}order.php" class="noeffect">{l s='Cart'}</a>
	</div>
</div>
<div id="content">
	<span class="graytitle">{l s='Welcome to your account!'}</span>
	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir_ssl}history.php" title="{l s='Orders'}">
				<img alt="{l s='account'}" src="{$ips_thumb_dir}calendar.png" />
				<span class="name">{l s='History of my orders'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{if $returnAllowed}
		<li class="menu">
			<a href="{$base_dir_ssl}order-follow.php" title="{l s='Merchandise returns'}">
				<img alt="{l s='account'}" src="{$ips_thumb_dir}clock.png" />
				<span class="name">{l s='Merchandise returns'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{/if}
		<li class="menu">
			<a href="{$base_dir_ssl}order-slip.php" title="{l s='Credit slips'}">
				<img alt="{l s='account'}" src="{$ips_thumb_dir}notepad.png" />
				<span class="name">{l s='Credit slips'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="{$base_dir_ssl}addresses.php" title="{l s='Addresses'}">
				<img alt="{l s='account'}" src="{$ips_thumb_dir}contacts.png" />
				<span class="name">{l s='My addresses'}</span>
				<span class="arrow"></span>
			</a>
		</li>
		<li class="menu">
			<a href="{$base_dir_ssl}identity.php" title="{l s='Information'}">
				<img alt="{l s='account'}" src="{$ips_thumb_dir}accessibility.png" />
				<span class="name">{l s='My personal information'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{if $voucherAllowed}
		<li class="menu">
			<a href="{$base_dir_ssl}discount.php" title="{l s='Vouchers'}">
				<img alt="{l s='account'}" src="{$img_dir}voucher.png" />
				<span class="name">{l s='Vouchers'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	{/if}
		{$HOOK_CUSTOMER_ACCOUNT}
	</ul>

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir}index.php?logout">
				<img alt="{l s='account'}" src="{$img_dir}logout.png" />
				<span class="name">{l s='Log me out'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
</div>
