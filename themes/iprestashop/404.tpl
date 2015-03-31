<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home'}" src="{$ips_img_dir}home.png" /></a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}my-account.php" class="noeffect">{l s='My account'}</a>
	</div>
</div>

<div id="content">

	<span class="graytitle">{l s='Page not available'}</span>
	<ul class="pageitem error">
		<li class="textbox">
			<img src="{$img_dir}error.png" alt="{l s='Error'}" width="32" height="32" />
			{l s='We\'re sorry, but the Web address you entered is no longer available'}
		</li>
	</ul>

	<form action="{$base_dir}search.php" method="post" class="std">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<span class="header">{l s='To find a product, please type its name in the field below'}</span>
				</li>
				<li class="bigfield">
					<input placeholder="{l s='Search in our catalog'}" id="search_query" name="search_query" type="text" />
				</li>
				<li class="button">
					<input type="submit" name="Submit" value="{l s='OK'}" />
				</li>
			</ul>
		</fieldset>
	</form>

</div>
