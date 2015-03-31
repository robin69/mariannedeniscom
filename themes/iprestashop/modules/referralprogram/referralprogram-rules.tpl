<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='referralprogram'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}modules/referralprogram/referralprogram-program.php">{l s='Back' mod='referralprogram'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.tpl">{l s='My account' mod='referralprogram'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Referral program rules' mod='referralprogram'}</span>
{if isset($xml) && isset($xml->body->$paragraph)}
	<ul class="pageitem">
		<li class="textbox rte">
			{$xml->body->$paragraph|replace:"\'":"'"|replace:'\"':'"'}
		</li>
	</ul>
{/if}
</div>
