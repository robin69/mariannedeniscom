<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}authentication.php" title="{l s='login'}">{l s='back to Login'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}?config=1">{l s='Config'}</a>
	</div>
</div>

<div id="content">
	<span class="graytitle">{l s='Forgot your password'}</span>
	{include file=$tpl_dir./errors.tpl}

{if isset($confirmation)}
	{capture name=confirmation}{l s='Your password has been successfully reset and has been sent to your e-mail address:'} {$email|escape:'htmlall':'UTF-8'}{/capture}
	{include file=$tpl_dir./confirmation.tpl}
{else}

	<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header">{l s='Please enter your e-mail address used to register. We will e-mail you your new password.'}</span>
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Type your e-mail address'}" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" />
				</li>
				<li class="button">
					<input type="submit" class="button" value="{l s='Retrieve'}" />
				</li>
			</ul>
		</fieldset>
	</form>
{/if}

	<ul class="pageitem">
		<li class="menu">
			<a href="{$base_dir_ssl}authentication.php" title="{l s='Back to Login'}">
				<img alt="{l s='retrieve password'}" src="{$ips_thumb_dir}accessibility.png" class="standard" />
				<span class="name">{l s='Back to Login'}</span>
				<span class="arrow"></span>
			</a>
		</li>
	</ul>
</div>
