<!-- MODULE Block WishList -->
<li class="menu">
	<a class="noeffect" href="javascript:WishlistCart('wishlist_block_list', 'add', '{$id_product|intval}', $('#idCombination').val(), document.getElementById('quantity_wanted').value);">
		<img src="{$img_dir}wishlist_add.png" alt="{l s='My wishlists' mod='blockwishlist'}" />
		<span class="name" id="wishlist_block_list">{l s='Add to my wishlist' mod='blockwishlist'}</span>
		<span class="arrow"></span>
	</a>
</li>
<script type="text/javascript">
<!--
var wishlistConfirmation = "{l s='Product added to wishlist!' mod='blockwishlist'}";
//-->
</script>
<!-- /MODULE Block WishList -->
