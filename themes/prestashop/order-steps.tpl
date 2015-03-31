{* Assign a value to 'current_step' to display current style *}
<!-- Steps -->
<ul class="step" id="order_step">
	<li class="{if $current_step=='summary'}step_current{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address' || $current_step=='login'}
		<a href="{$base_dir_ssl}order.php{if $back}?back={$back}{/if}">
			1. {l s='Summary'}
		</a>
		{else}
			1. {l s='Summary'}
		{/if}
	</li>
	<li class="{if $current_step=='login'}step_current{else}{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment' || $current_step=='shipping' || $current_step=='address'}
		<a href="{$base_dir_ssl}order.php?step=1{if $back}&amp;back={$back}{/if}">
			2. {l s='Login'}
		</a>
		{else}
		2. {l s='Login'}
		{/if}
	</li>
	<li class="{if $current_step=='address'}step_current{else}{if $current_step=='payment' || $current_step=='shipping'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment' || $current_step=='shipping'}
		<a href="{$base_dir_ssl}order.php?step=1{if $back}&amp;back={$back}{/if}">
			3. {l s='Address'}
		</a>
		{else}
		3. {l s='Address'}
		{/if}
	</li>
	<li class="{if $current_step=='shipping'}step_current{else}{if $current_step=='payment'}step_done{else}step_todo{/if}{/if}">
		{if $current_step=='payment'}
		<a href="{$base_dir_ssl}order.php?step=2{if $back}&amp;back={$back}{/if}">
			4. {l s='Shipping'}
		</a>
		{else}
		4. {l s='Shipping'}
		{/if}
	</li>
	<li id="step_end" class="{if $current_step=='payment'}step_current{else}step_todo{/if}">
		5. {l s='Payment'}
	</li>
</ul>
<div class="clear"></div>
<!-- /Steps -->
