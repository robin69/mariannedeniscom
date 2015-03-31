<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
	</div>
	<div id="title">
		{if !isset($email_create)}{l s='Log in'}{else}{l s='Subscribe'}{/if}
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}?config=1">{l s='Config'}</a>
	</div>
</div>

{assign var='current_step' value='login'}
{include file=$tpl_dir./order-steps.tpl}

<script type="text/javascript">
// <![CDATA[
idSelectedCountry = {if isset($smarty.post.id_state)}{$smarty.post.id_state|intval}{else}false{/if};
countries = new Array();
{foreach from=$countries item='country'}
	{if isset($country.states)}
		countries[{$country.id_country|intval}] = new Array();
		{foreach from=$country.states item='state' name='states'}
			countries[{$country.id_country|intval}]['{$state.id_state|intval}'] = '{$state.name|escape:'htmlall':'UTF-8'}';
		{/foreach}
	{/if}
{/foreach}
//]]>
</script>

<div id="content">

	{include file=$tpl_dir./errors.tpl}

{if isset($confirmation)}
	{capture name=confirmation}<a href="{$base_dir_ssl}my-account.php">{l s='Your account has been successfully created.'}</a>{/capture}
	{include file=$tpl_dir./confirmation.tpl}
{else}
	{if !isset($email_create)}
	<form action="{$base_dir_ssl}authentication.php" method="post" id="login_form">
		<fieldset>
			<span class="graytitle">{l s='Already registered ?'}</span>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="{l s='E-mail address'}" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Password'}" type="password" id="passwd" name="passwd" value="{if isset($smarty.post.passwd)}{$smarty.post.passwd|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="button">
					{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
					<input type="submit" id="SubmitLogin" name="SubmitLogin" class="button" value="{l s='Log in'}" />
				</li>
			</ul>
		</fieldset>
	</form>

	<form action="{$base_dir_ssl}authentication.php" method="post" id="create-account_form">
		<fieldset>
			<span class="graytitle">{l s='Not yet ! Create your account...'}</span>
			<ul class="pageitem">
				<li class="bigfield">
					<input placeholder="{l s='Enter your e-mail address'}" type="text" id="email_create" name="email_create" value="{if isset($smarty.post.email_create)}{$smarty.post.email_create|escape:'htmlall'|stripslashes}{/if}" class="account_input" />
				</li>
				<li class="button">
					{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
					<input type="submit" id="SubmitCreate" name="SubmitCreate" class="button_large" value="{l s='Create your account'}" />
					<input type="hidden" class="hidden" name="SubmitCreate" value="{l s='Create your account'}" />
				</li>
			</ul>
		</fieldset>
	</form>

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir}password.php">
				<img alt="{l s='retrieve password'}" src="{$ips_thumb_dir}help.png" />
				<span class="name">{l s='Forgot your password?'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>

	{else}
	<span class="graytitle">{l s='Your personal information'}</span>
	<form action="{$base_dir_ssl}authentication.php" method="post" id="account-creation_form" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<sup>*</sup>{l s='Required field'} 
				</li>
				<li class="radiobutton">
					<span class="name">{l s='Mr.'}</span>
					<input type="radio" name="id_gender" id="id_gender1" value="1" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 1}checked="checked"{/if} />
				</li>
				<li class="radiobutton">
					<span class="name">{l s='Ms.'}</span>
					<input type="radio" name="id_gender" id="id_gender2" value="2" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 2}checked="checked"{/if} />
				</li>
				<li class="smallfield">
					<span class="name">{l s='First name'}<sup>*</sup></span>
					<input placeholder="" onkeyup="$('#firstname').attr('val',$(this).attr('val'));" type="text" class="text" id="customer_firstname" name="customer_firstname" value="{if isset($smarty.post.customer_firstname)}{$smarty.post.customer_firstname}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Last name'}<sup>*</sup></span>
					<input placeholder="" onkeyup="$('#lastname').attr('val',$(this).attr('val'));" type="text" class="text" id="customer_lastname" name="customer_lastname" value="{if isset($smarty.post.customer_lastname)}{$smarty.post.customer_lastname}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='E-mail'}<sup>*</sup></span>
					<input type="text" class="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Password'}<sup>*</sup></span>
					<input placeholder="{l s='5 characters min.'}" type="password" class="text" name="passwd" id="passwd" />
				</li>
			</ul>
			<span class="graytitle">{l s='Stay tunes!'}</span>
			<ul class="pageitem">
				<li class="checkbox">
					<span class="name">{l s='Sign up for our newsletter'}</span>
					<input type="checkbox" name="newsletter" id="newsletter" value="1" {if isset($smarty.post.newsletter) AND $smarty.post.newsletter == 1} checked="checked"{/if} />
				</li>
				<li class="checkbox">
					<span class="name">{l s='Receive special offers from our partners'}</span>
					<input type="checkbox"name="optin" id="optin" value="1" {if isset($smarty.post.optin) AND $smarty.post.optin == 1} checked="checked"{/if} />
				</li>
			</ul>

			<span class="graytitle">{l s='Your address'}</span>
			<ul class="pageitem">
				<li class="smallfield">
					<span class="name">{l s='Address title'}<sup>*</sup></span>
					<input placeholder="" class="text" name="alias" id="alias" value="{if isset($smarty.post.alias)}{$smarty.post.alias}{else}{l s='My address'}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='First name'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="firstname" name="firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Last name'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" id="lastname" name="lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Address'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="address1" id="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Zip code'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='City'}<sup>*</sup></span>
					<input placeholder="" type="text" class="text" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{/if}" />
				</li>
				<li class="select">
					<select name="id_country" id="id_country">
						<option value="">-</option>
						{foreach from=$countries item=v}
						<option value="{$v.id_country}" {if ($sl_country == $v.id_country)} selected="selected"{/if}>{$v.name|escape:'htmlall':'UTF-8'}</option>
						{/foreach}
					</select>
					<span class="arrow"></span>
				</li>
				<li class="select id_state">
					<select name="id_state" id="id_state">
						<option value="">{l s='State'}</option>
					</select>
					<span class="arrow"></span>
				</li>
				<li class="smallfield">
					<span class="name">{l s='Mobile phone'}</span>
					<input placeholder="{l s='useful for mobile version'}" type="tel" class="text" name="phone_mobile" id="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{/if}" />
				</li>
			</ul>

			{$HOOK_CREATE_ACCOUNT_FORM}

			<ul class="pageitem">
				<li class="button">
					<input type="hidden" name="email_create" value="1" />
					{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
					<input type="submit" name="submitAccount" value="{l s='Register or...'}" class="exclusive" />
				</li>
			</ul>

			<span class="graytitle">{l s='..fill some optional informations'}</span>
			<ul class="pageitem">
				<li class="smallfield">
					<span class="name">{l s='Home phone'}</span>
					<input placeholder="" type="tel" class="text" name="phone" id="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Company'}</span>
					<input placeholder="" type="text" class="text" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{/if}" />
				</li>
				<li class="smallfield">
					<span class="name">{l s='Address (2)'}</span>
					<input placeholder="" type="text" class="text" name="address2" id="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{/if}" />
				</li>
				<li class="textbox">
					<span class="header">{l s='Birthday'}</span>
				</li>
				<li class="select">
					<select id="days" name="days">
						<option value="">{l s='day'}</option>
						{foreach from=$days item=day}
							<option value="{$day|escape:'htmlall':'UTF-8'}" {if ($sl_day == $day)} selected="selected"{/if}>{$day|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
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
				<li class="textbox">
					<span class="header">{l s='Additional information'}</span>
					<textarea name="other" id="other" cols="26" rows="3">{if isset($smarty.post.other)}{$smarty.post.other}{/if}</textarea>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="button">
					<input type="hidden" name="email_create" value="1" />
					{if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
					<input type="submit" name="submitAccount" value="{l s='Register'}" class="exclusive" />
				</li>
			</ul>
		</fieldset>
	</form>
	{/if}
{/if}
</div>