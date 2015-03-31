<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}?config=1">{l s='Config'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Your personal information'}</span>

	{include file=$tpl_dir./errors.tpl}

{if $confirmation}
	{capture name=confirmation}
		{l s='Your personal information has been successfully updated.'}
		{if $pwd_changed}<br />{l s='Your password has been sent to your e-mail:'} {$email|escape:'htmlall':'UTF-8'}{/if}
	{/capture}
	{include file=$tpl_dir./confirmation.tpl}

{else}

	<ul class="pageitem">
		<li class="textbox">{l s='Do not hesitate to update your personal information if it has changed.'}</li>
	</ul>


	<form action="{$base_dir_ssl}identity.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header"><sup>*</sup>{l s='Required field'}</span>
				</li>
				<li class="radiobutton required">
					<span class="name">{l s='Mr.'}</span>
					<input type="radio" name="id_gender" id="id_gender1" value="1" {if $smarty.post.id_gender == 1}checked="checked"{/if} />
				</li>
				<li class="radiobutton">
					<span class="name">{l s='Ms.'}</span>
					<input type="radio" name="id_gender" id="id_gender2" value="2" {if $smarty.post.id_gender == 2}checked="checked"{/if} />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='First name'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="firstname" name="firstname" value="{$smarty.post.firstname}" />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='Last name'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="lastname" name="lastname" value="{$smarty.post.lastname}" />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='E-mail'}<sup>*</sup></span>
					<input type="text" class="text" id="email" name="email" value="{$smarty.post.email}" />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='Current password'}<sup>*</sup></span>
					<input placeholder="" type="password" name="old_passwd" id="old_passwd" />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='Password'}</span>
					<input placeholder="" type="password" name="passwd" id="passwd" />
				</li>
				<li class="smallfield required">
					<span class="name">{l s='Confirmation'}</span>
					<input placeholder="" type="password" name="confirmation" id="confirmation" />
				</li>
				<li class="textbox">
					<span class="header">{l s='Birthday'}</span>
				</li>
				<li class="select">
					<select id="days" name="days">
						<option value="">{l s='day'}</option>
						{foreach from=$days item=v}
							<option value="{$v|escape:'htmlall':'UTF-8'}" {if ($sl_day == $v)}selected="selected"{/if}>{$v|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
						{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select">
					{*
						{l s='January'}
						{l s='February'}
						{l s='March'}
						{l s='April'}
						{l s='May'}
						{l s='June'}
						{l s='July'}
						{l s='August'}
						{l s='September'}
						{l s='October'}
						{l s='November'}
						{l s='December'}
					*}
					<select id="months" name="months">
						<option value="">{l s='month'}</option>
						{foreach from=$months key=k item=month}
							<option value="{$k|escape:'htmlall':'UTF-8'}" {if ($sl_month == $k)} selected="selected"{/if}>{l s="$month"}&nbsp;</option>
						{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select">
					<select id="years" name="years">
						<option value="">{l s='year'}</option>
						{foreach from=$years item=year}
							<option value="{$year|escape:'htmlall':'UTF-8'}" {if ($sl_year == $year)} selected="selected"{/if}>{$year|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
						{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="checkbox">
					<span class="name">{l s='Sign up for our newsletter'}</span>
					<input type="checkbox" name="newsletter" id="newsletter" value="1" {if isset($smarty.post.newsletter) AND $smarty.post.newsletter == 1} checked="checked"{/if} />
				</li>
				<li class="checkbox">
					<span class="name">{l s='Receive special offers from our partners'}</span>
					<input type="checkbox"name="optin" id="optin" value="1" {if isset($smarty.post.optin) AND $smarty.post.optin == 1} checked="checked"{/if} />
				</li>
				<li class="button">
					<input type="submit" class="button" name="submitIdentity" value="{l s='Save'}" />
				</li>
			</ul>
		</fieldset>
	</form>

	<ul class="pageitem">
		<li class="textbox">{l s='[Insert customer data privacy clause or law here, if applicable]'}</li>
	</ul>

{/if}

</div>