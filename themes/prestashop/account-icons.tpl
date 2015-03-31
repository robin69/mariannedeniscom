<ul class="account-icons-bloc">
	<li><a href="{$base_dir_ssl}" title="Accueil"><img src="{$img_dir}icon/icon-home.jpg" alt="{l s='Home'}" class="icon" /><p>Accueil</p></a></li>
	<li><a href="{$base_dir_ssl}my-account.php" title="Mon compte"><img src="{$img_dir}icon/icon-account.jpg" alt="{l s='Back to Your Account'}" class="icon" /><p>Compte</p></a></li>
	<li><a href="{$base_dir_ssl}history.php" title="Commandes"><img src="{$img_dir}icon/icon-commandes.jpg" alt="Commandes" class="icon" /><p>Commandes</p></a></li>
	{if $returnAllowed}
		<li><a href="{$base_dir_ssl}order-follow.php" title="{l s='Merchandise returns'}"><img src="{$img_dir}icon/return.gif" alt="{l s='Merchandise returns'}" class="icon" /></a></li>
	{/if}
	<li><a href="{$base_dir_ssl}order-slip.php" title="Avoirs"><img src="{$img_dir}icon/icon-avoirs.jpg" alt="Avoirs" class="icon" /><p>Avoirs</p></a></li>
	<li><a href="{$base_dir_ssl}addresses.php" title="Adresses"><img src="{$img_dir}icon/icon-adresses.jpg" alt="Adresses" class="icon" /><p>Adresses</p></a></li>
	<li><a href="{$base_dir_ssl}identity.php" title="Profil"><img src="{$img_dir}icon/icon-infos.jpg" alt="Profil" class="icon" /><p>Profil</p></a></li>
	{if $voucherAllowed}
		<li><a href="{$base_dir_ssl}discount.php" title="R&eacute;ductions"><img src="{$img_dir}icon/icon-reduc.jpg" alt="R&eacute;ductions" class="icon" /><p>R&eacute;ductions</p></a></li>
	{/if}
	<li><a href="{$base_dir_ssl}modules/blockwishlist/mywishlist.php" title="Wishlists"><img src="{$img_dir}icon/icon-wishlist.jpg" alt="Wishlists" class="icon" /><p>Wishlists</p></a></li>
	<li><a href="{$base_dir_ssl}modules/loyalty/loyalty-program.php" title="Programme de fid&eacute;lit&eacute;"><img src="{$content_dir}themes/prestashop/img/icon/icon-fidelite.jpg" alt="{l s='My loyalty points' mod='loyalty'}" class="icon" /><p>Fid&eacute;lit&eacute;</p></a></li>
	<li><a href="{$base_dir_ssl}modules/referralprogram/referralprogram-program.php" title="Parrainage"><img src="{$content_dir}themes/prestashop/img/icon/icon-parrainage.jpg" alt="{l s='referralprogram' mod='referralprogram'}" class="icon" /><p>Parrainage</p></a></li>
	<li><a href="{$base_dir_ssl}modules/mailalerts/myalerts.php" title="Mes alertes"><img src="{$content_dir}themes/prestashop/img/icon/icon-alertes.jpg" alt="{l s='referralprogram' mod='referralprogram'}" class="icon" /><p>Mes alertes</p></a></li>
	<li><a href="{$base_dir_ssl}index.php?mylogout" title="D&eacute;connexion"><img src="{$img_dir}icon/icon-logout.jpg" alt="D&eacute;connexion" class="icon" /><p>D&eacute;connexion</p></a></li>
	<div class="clear"></div>
</ul>
