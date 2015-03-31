<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='cashondelivery'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir}?browse=1">{l s='Browse' mod='cashondelivery'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='cashondelivery'}</a>
	</div>
</div>

{assign var='current_step' value='payment'}
{include file=$tpl_dir./order-steps.tpl}

<div id="content">

{*if $nbProducts <= 0}
	{capture name=warning}{l s='Your shopping cart is empty.' mod='cashondelivery'}{/capture}
	{include file=$tpl_dir./warning.tpl}
{else*}

	<span class="graytitle">{l s='Cash on delivery (COD) payment' mod='cashondelivery'</span>

	<form action="{$this_path_ssl}validation.php" method="post" id="paymentForm">
		<fieldset>
			<ul class="pageitem">
				<li class="textbox">
					<img src="{$img_dir}cashondelivery.png" alt="{l s='cod' mod='cashondelivery'}" style="float:left; margin: 0px 10px 5px 0px;" />
					{l s='You have chosen the cash on delivery method.' mod='cashondelivery'}
				</li>
				<li class="textbox">
					{l s='The total amount of your order is' mod='cashondelivery'}
					<strong>
						<span id="amount_{$currencies.0.id_currency}" class="price">{convertPrice price=$total}</span> {l s='(tax incl.)' mod='cashondelivery'}
					</strong>
				</li>
			</ul>

			<ul class="pageitem">
				<li class="menu">
					<a href="javascript:$('#paymentForm').submit()" title="{l s='Next' mod='cashondelivery'}">
						<img alt="{l s='next' mod='cashondelivery'}" src="{$img_dir}cart_ok.png" />
						<span class="name">{l s='I confirm my order' mod='cashondelivery'}</span>
						<span class="arrow"></span>
					</a>
				</li>
				<li class="menu">
					<a href="{$base_dir_ssl}order.php?step=3" title="{l s='previous' mod='cashondelivery'}">
						<img alt="{l s='previous' mod='cashondelivery'}" src="{$img_dir}back.png" />
						<span class="name">{l s='Other payment methods' mod='cashondelivery'}</span>
					</a>
				</li>
			</ul>

		</fieldset>
		<input type="hidden" name="confirm" value="1" />
	</form>
{*/if*}
</div>