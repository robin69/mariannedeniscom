<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
</div>

{assign var='current_step' value='payment'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">
	<span class="graytitle">{l s='Order confirmation'}</span>

	{include file=$tpl_dir./errors.tpl}

	{$HOOK_ORDER_CONFIRMATION}
	{$HOOK_PAYMENT_RETURN}

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir_ssl}history.php" title="{l s='My order history'}">
				<img alt="{l s='orders'}" src="{$ips_thumb_dir}calendar.png" />
				<span class="name">{l s='My order history'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

</div>
