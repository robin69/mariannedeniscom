{include file=$tpl_dir./thickbox.tpl}
<div id="topbar">
	<div id="leftnav">
		<a href="{$base_dir}"><img alt="{l s='home' mod='referralprogram'}" src="{$ips_img_dir}home.png" /></a>
		<a href="{$base_dir_ssl}my-account.php">{l s='My account' mod='referralprogram'}</a>
	</div>
	<div id="rightbutton">
		<a href="{$base_dir}order.php">{l s='Cart' mod='referralprogram'}</a>
	</div>
</div>

<div id="tributton" class="idTabs">
	<div class="links">
		<a {if $activeTab eq 'sponsor' || !isset($activeTab)}class="selected"{/if} href="#idTab1">{l s='Sponsor' mod='referralprogram'}</a><a href="#idTab2" {if $activeTab eq 'pending'}class="selected"{/if}>{l s='Pending' mod='referralprogram'}</a><a href="#idTab3" {if $activeTab eq 'subscribed'}class="selected"{/if}>{l s='Sponsored' mod='referralprogram'}</a>
	</div>
</div>


<div id="content">
	<span class="graytitle">{l s='Referral program' mod='referralprogram'}</span>

	{if $error}
	<ul class="pageitem error">
		<li class="textbox">
		{if $error == 'conditions not valided'}
			{l s='You need to agree to the conditions of the referral program!' mod='referralprogram'}
		{elseif $error == 'email invalid'}
			{l s='At least one e-mail address is invalid!' mod='referralprogram'}
		{elseif $error == 'name invalid'}
			{l s='At least one first name or last name is invalid!' mod='referralprogram'}
		{elseif $error == 'email exists'}
			{l s='Someone with this e-mail address has already been sponsored!' mod='referralprogram'}: {foreach from=$mails_exists item=mail}{$mail} {/foreach}
		{elseif $error == 'no revive checked'}
			{l s='Please mark at least one checkbox' mod='referralprogram'}
		{elseif $error == 'cannot add friends'}
			{l s='Cannot add friends to database' mod='referralprogram'}
		{/if}
		</li>
	</ul>
{/if}

{if $invitation_sent}
	{capture name=confirmation}
		{if $nbInvitation > 1}
			{l s='Emails have been sent to your friends !' mod='referralprogram'}
		{else}
			{l s='Email have been sent to your friend !' mod='referralprogram'}
		{/if}
	{/capture}
	{include file=$tpl_dir./confirmation.tpl}
{/if}

{if $revive_sent}
	{capture name=confirmation}
		{if $nbRevive > 1}
			{l s='Revive emails have been sent to your friends !' mod='referralprogram'}
		{else}
			{l s='Revive email have been sent to your friend !' mod='referralprogram'}
		{/if}
	{/capture}
	{include file=$tpl_dir./confirmation.tpl}
{/if}



	<div id="idTab1">
	{if $canSendInvitations}
		<ul class="pageitem">
			<li class="textbox">
				<span class="header">
					{l s='Get a discount of' mod='referralprogram'} {$discount} {l s='for you and your friends by recommending this Website.' mod='referralprogram'}
				</span>
			</li>
			<li class="textbox">
				{l s='It\'s quick and it\'s easy. Just fill in the first name, last name, and e-mail address(es) of your friend(s) in the fields below.' mod='referralprogram'}
				{l s='When one of them makes at least' mod='referralprogram'} {$orderQuantity} {if $orderQuantity > 1}{l s='orders' mod='referralprogram'}{else}{l s='order' mod='referralprogram'}{/if},
				{l s='he or she will receive a' mod='referralprogram'} {$discount} {l s='voucher and you will receive your own voucher worth' mod='referralprogram'} {$discount}.
			</li>
		</ul>

		<form method="post" action="{$base_dir_ssl}modules/referralprogram/referralprogram-program.php" class="std">
			<fieldset>
				{section name=friends start=0 loop=$nbFriends step=1}
				<ul class="pageitem">
					<li class="textbox {if $smarty.section.friends.index % 2}item{else}alternate_item{/if}">
						<span class="header">{l s='Friend #' mod='referralprogram'}{$smarty.section.friends.iteration}</span>
					</li>
					<li class="smallfield">
						<span class="name">{l s='Last name' mod='referralprogram'}</span>
						<input placeholder="{l s='Last name' mod='referralprogram'}" type="text" class="text" name="friendsLastName[{$smarty.section.friends.index}]" value="{if isset($smarty.post.friendsLastName[$smarty.section.friends.index])}{$smarty.post.friendsLastName[$smarty.section.friends.index]}{/if}" />
					</li>
					<li class="smallfield">
						<span class="name">{l s='First name' mod='referralprogram'}</span>
						<input placeholder="{l s='First name' mod='referralprogram'}" type="text" class="text" name="friendsFirstName[{$smarty.section.friends.index}]" value="{if isset($smarty.post.friendsFirstName[$smarty.section.friends.index])}{$smarty.post.friendsFirstName[$smarty.section.friends.index]}{/if}" />
					</li>
					<li class="smallfield">
						<span class="name">{l s='E-mail' mod='referralprogram'}</span>
						<input placeholder="{l s='E-mail' mod='referralprogram'}" type="text" class="text" name="friendsEmail[{$smarty.section.friends.index}]" value="{if isset($smarty.post.friendsEmail[$smarty.section.friends.index])}{$smarty.post.friendsEmail[$smarty.section.friends.index]}{/if}" />
					</li>
				</ul>
				{/section}
	
				<ul class="pageitem">
					<li class="textbox">
						<span class="header">
							{l s='Important: Your friends\' e-mail addresses will only be used in the referral program. They will never be used for other purposes.' mod='referralprogram'}
						</span>
						{l s='You have to read the conditions of the referral program and accept them in their entirety. You need also to be agree to have my friend reminded again in two weeks (if he or she still has not made a purchase on conditions).' mod='referralprogram'}
					</li>
					<li class="checkbox">
						<span class="name">{l s='Accept conditions' mod='referralprogram'}</span>
						<input type="checkbox" name="conditionsValided" id="conditionsValided" value="1" {if isset($smarty.post.conditionsValided) AND $smarty.post.conditionsValided eq 1}checked="checked"{/if} />
					</li>
					<li class="menu">
						<a href="{$base_dir}modules/referralprogram/referralprogram-rules.php" title="{l s='Conditions of the referral program' mod='referralprogram'}">
							<span class="name">{l s='Read conditions' mod='referralprogram'}</span>
							<span class="arrow"></span>
						</a>
					</li>
					<li class="menu">
						<a href="{$base_dir_ssl}modules/referralprogram/preview-email.php?mail={$lang_iso}/referralprogram-invitation.html" title="{l s='Invitation e-mail' mod='referralprogram'}">
							<span class="name">{l s='View default e-mail sent' mod='referralprogram'}</span>
							<span class="arrow"></span>
						</a>
					</li>
					<li class="button">
						<input type="submit" id="submitSponsorFriends" name="submitSponsorFriends" value="{l s='Validate' mod='referralprogram'}" />
					</li>
				</ul>
			</fieldset>
		</form>

	{else}
		{capture name=warning}
			{l s='To become a sponsor, you need to have completed at least' mod='referralprogram'} {$orderQuantity} {if $orderQuantity > 1}{l s='orders' mod='referralprogram'}{else}{l s='order' mod='referralprogram'}{/if}.
		{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}

	</div>

	<div id="idTab2">
	{if $pendingFriends AND $pendingFriends|@count > 0}
		<form method="post" action="{$base_dir_ssl}modules/referralprogram/referralprogram-program.php" class="std">
			<fieldset>
				<ul class="pageitem">
					<li class="textbox">
						{l s='These friends have not yet placed an order on this Website since you sponsored them, but you can try again! To do so, mark the checkboxes of the friend(s) you want to remind, then click on the button "Remind my friend(s)"' mod='referralprogram'}
					</li>
					{foreach from=$pendingFriends item=pendingFriend name=myLoop}
					<li class="checkbox">
						<span class="name">
							{$pendingFriend.lastname|substr:0:22}
							{$pendingFriend.firstname|substr:0:22}
						</span>
						<input type="checkbox" name="friendChecked[{$pendingFriend.id_referralprogram}]" id="friendChecked[{$pendingFriend.id_referralprogram}]" value="1" />
					</li>
					<li class="textbox">
						{$pendingFriend.email}
						<br/>{l s='Last invitation:' mod='referralprogram'} {dateFormat date=$pendingFriend.date_upd full=1}
					</li>
					{/foreach}
					<li class="button">
						<input type="submit" value="{l s='Remind my friend(s)' mod='referralprogram'}" name="revive" id="revive" />
					</li>
				</ul>
			</fieldset>
		</form>
	{else}
		{capture name=warning}{l s='You have not sponsored any friends.' mod='referralprogram'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}
	</div>

	<div id="idTab3">
	{if $subscribeFriends AND $subscribeFriends|@count > 0}
		<ul class="pageitem">
			<li class=textbox>
				<span class="header">{l s='Here are sponsored friends who have accepted your invitation:' mod='referralprogram'}</span>
			</li>
			{foreach from=$subscribeFriends item=subscribeFriend name=myLoop}
			<li class="textbox">
				{$smarty.foreach.myLoop.iteration}. {$subscribeFriend.lastname|substr:0:22} {$subscribeFriend.firstname|substr:0:22}
				<br/>{l s='E-mail:' mod='referralprogram'} <a href="mailto:{$subscribeFriend.email}">{$subscribeFriend.email}</a>
				<br/>{l s='Inscription date:' mod='referralprogram'} {dateFormat date=$subscribeFriend.date_upd full=1}
			</li>
			{/foreach}
		</ul>
	{else}
		{capture name=warning}{l s='No sponsored friends have accepted your invitation yet.' mod='referralprogram'}{/capture}
		{include file=$tpl_dir./warning.tpl}
	{/if}
	</div>

</div>
