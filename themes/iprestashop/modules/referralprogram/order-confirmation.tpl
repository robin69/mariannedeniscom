<!-- MODULE Referral program -->
{capture name=confirmation}
	{l s='Thanks to your order, your sponsor' mod='referralprogram'} {$sponsor_firstname} {$sponsor_lastname} {l s='will earn a voucher worth' mod='referralprogram'} {$discount} {l s='off when this order is confirmed.' mod='referralprogram'}
{/capture}
{include file=$tpl_dir./confirmation.tpl}
<!-- /MODULE Referral program -->
