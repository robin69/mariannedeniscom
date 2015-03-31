{* Assign a value to 'current_step' to display current style *}
<!-- Steps -->
<div id="tributton">
	<div class="links">
		<a {if $current_step=='summary'}id="pressed" href="#"{else} href="{$base_dir_ssl}order.php"{/if}>{l s='Summary'}</a><a {if $current_step=='login' || $current_step=='shipping' || $current_step=='address'}id="pressed" href="#"{else} href="{$base_dir_ssl}order.php?step=1"{/if}>{l s='Informations'}</a><a {if $current_step=='payment'}id="pressed"{else}  href="javascript:{ldelim}{rdelim}"{/if}>{l s='Payment'}</a>
	</div>
</div>
 <!-- /Steps -->
