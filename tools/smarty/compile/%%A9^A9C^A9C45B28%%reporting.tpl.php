<?php /* Smarty version 2.6.20, created on 2014-05-14 09:59:10
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/modules/gmerchantcenter/reporting.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/modules/gmerchantcenter/reporting.tpl', 6, false),)), $this); ?>
<?php if (! empty ( $this->_tpl_vars['bThickBox'] )): ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo smartyTranslate(array('s' => 'Google products reporting','mod' => 'gmerchantcenter'), $this);?>
</title>
    <style type="text/css">
        <?php echo '
        body, span {
            font-size: 11px; font-family: Arial, sans-serif;
        }
        input[type=submit] {
            background-color: green; color: white; font-size: 16px; font-weight: bold;
        }
        img {
            border: 0;
        }
		.error {
			margin: 0 0 15px 0;
			line-height: 20px;
			padding: 10px 20px 10px 20px;
			border: 1px solid #CC0000;
			background-color: #FFD2D2;
		}
		.warning {
			margin: 0 0 15px 0;
			line-height: 20px;
			padding: 10px 20px 10px 20px;
			border: 1px solid #FF9900;
			background-color: #FFEBCC;
		}
		.notice {
			margin: 0 0 15px 0;
			line-height: 20px;
			padding: 10px 20px 10px 20px;
			border: 1px solid #00529B;
			background: #BDE5F8;
		}
		.confirm {
			background: #DFF2BF '; ?>
url(<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/icon-valid.png) no-repeat scroll 6px 6px;<?php echo ';
			border: 1px solid #4F8A10;
			color:#4F8A10;
			font-size: 18px;
			padding: 10px 20px 10px 50px;
			margin: 0 0 15px 0;
			line-height: 20px;
			
		}
		a { text-decoration: none; color: green; font-weight: bold; }
		a:hover { text-decoration: underline; }
		
        '; ?>

    </style>
    <script type="text/javascript" src="<?php echo $this->_tpl_vars['sPath']; ?>
/js/jquery-1.4.4.min.js"></script>
</head>

<body>
<?php endif; ?>

<div class="confirm">
<?php echo smartyTranslate(array('s' => 'Your feed was successfully generated !','mod' => 'gmerchantcenter'), $this);?>

</div>

<h2><?php echo smartyTranslate(array('s' => 'Google Merchant Center data diagnostic tool','mod' => 'gmerchantcenter'), $this);?>
</h2>

<div style="background: #eee; border: 1px solid #ccc; font-size: 12px; padding: 10px; margin-bottom: 15px;">
<p style="font-size: 12px;"><?php echo smartyTranslate(array('s' => 'This tool allows you to get diagnostic information about the quality of your feed and catch any problems with your data prior to submitting it to Google. For each type of warning, we will provide you with the ability to see which products are affected as well as how to fix the issue.','mod' => 'gmerchantcenter'), $this);?>
</p>

<p style="font-size: 12px;"><?php echo smartyTranslate(array('s' => 'Please understand that these warnings come from 1) either an incorrect configuration of the module or 2) data missing in your products. WE WILL NOT BE ABLE TO DO ANYTHING ABOUT IT... Either way, please simply refer to the recommendations in the diagnostic tool and you will have the information needed to be able to get rid of all issues.','mod' => 'gmerchantcenter'), $this);?>
</p>
</div>
<br /><br />

	
<?php if (! empty ( $this->_tpl_vars['aReport'] ) && ! empty ( $this->_tpl_vars['aReport']['notice'] )): ?>
<?php $_from = $this->_tpl_vars['aReport']['notice']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['report'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['report']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['tagName'] => $this->_tpl_vars['aTag']):
        $this->_foreach['report']['iteration']++;
?>
<div class="notice">
	<span style="font-size: 13px;"><strong><?php echo $this->_tpl_vars['tagName']; ?>
</strong>&nbsp;:&nbsp;<strong style="color: #00529B;"><?php echo $this->_tpl_vars['aTag']['count']; ?>
</strong>&nbsp;<?php echo smartyTranslate(array('s' => 'notice','mod' => 'gmerchantcenter'), $this);?>
<?php if ($this->_tpl_vars['aTag']['count'] > 1): ?>s<?php endif; ?></span><br/>
	<span><?php echo $this->_tpl_vars['aTag']['msg']; ?>
</span><p style="height: 10px; margin: 0; padding: 0;"> </p>
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/doc_small_icon.gif" align="absmiddle" height="16" width="16" /> <a href="#" onclick="$('#tagReport<?php echo $this->_tpl_vars['tagName']; ?>
').toggle(); return false;"><?php echo smartyTranslate(array('s' => 'View affected products','mod' => 'gmerchantcenter'), $this);?>
</a>
	<?php if ($this->_tpl_vars['aTag']['faq_id'] != 0): ?>
	<br /> 
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/help.png" align="absmiddle" height="16" width="16" /> <a href="<?php echo $this->_tpl_vars['sFaqURL']; ?>
<?php echo $this->_tpl_vars['aTag']['faq_id']; ?>
&lg=<?php echo $this->_tpl_vars['sFaqLang']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Learn how to fix this problem','mod' => 'gmerchantcenter'), $this);?>
</a>
	<?php endif; ?>
	<div id="tagReport<?php echo $this->_tpl_vars['tagName']; ?>
" style="display: none;">
	<ul style="padding: 10px; background: #fff; border: 1px solid #ccc;">
	<?php $_from = $this->_tpl_vars['aTag']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['aProduct']):
?>
		<li style="margin-left: 15px;"><a href="<?php echo $this->_tpl_vars['aProduct']['productUrl']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Product Id','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productId']; ?>
 - <?php echo smartyTranslate(array('s' => 'Product name','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productName']; ?>
</a></li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	</div>
</div>
<br/><br/>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['aReport'] ) && ! empty ( $this->_tpl_vars['aReport']['error'] )): ?>
<?php $_from = $this->_tpl_vars['aReport']['error']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['report'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['report']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['tagName'] => $this->_tpl_vars['aTag']):
        $this->_foreach['report']['iteration']++;
?>
<div class="error">
	<span style="font-size: 13px;"><strong><?php echo $this->_tpl_vars['tagName']; ?>
</strong>&nbsp;:&nbsp;<strong style="color: orange;"><?php echo $this->_tpl_vars['aTag']['count']; ?>
</strong>&nbsp;<?php if ($this->_tpl_vars['aTag']['mandatory'] == true): ?><?php echo smartyTranslate(array('s' => 'error','mod' => 'gmerchantcenter'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'warning','mod' => 'gmerchantcenter'), $this);?>
<?php endif; ?><?php if ($this->_tpl_vars['aTag']['count'] > 1): ?>s<?php endif; ?></span><br/>
	<span><?php echo $this->_tpl_vars['aTag']['msg']; ?>
</span><p style="height: 10px; margin: 0; padding: 0;"> </p>
	<?php if ($this->_tpl_vars['aTag']['faq_id'] != 0): ?>
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/doc_small_icon.gif" align="absmiddle" height="16" width="16" /> <a href="#" onclick="$('#tagReport<?php echo $this->_tpl_vars['tagName']; ?>
').toggle(); return false;"><?php echo smartyTranslate(array('s' => 'View affected products','mod' => 'gmerchantcenter'), $this);?>
</a>
	<br /> 
	<?php endif; ?>
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/help.png" align="absmiddle" height="16" width="16" /> <a href="<?php echo $this->_tpl_vars['sFaqURL']; ?>
<?php echo $this->_tpl_vars['aTag']['faq_id']; ?>
&lg=<?php echo $this->_tpl_vars['sFaqLang']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Learn how to fix this problem','mod' => 'gmerchantcenter'), $this);?>
</a>
	<div id="tagReport<?php echo $this->_tpl_vars['tagName']; ?>
" style="display: none;">
	<ul style="padding: 10px; background: #fff; border: 1px solid #ccc;">
	<?php $_from = $this->_tpl_vars['aTag']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['aProduct']):
?>
		<li style="margin-left: 15px;"><a href="<?php echo $this->_tpl_vars['aProduct']['productUrl']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Product Id','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productId']; ?>
 - <?php echo smartyTranslate(array('s' => 'Product name','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productName']; ?>
</a></li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	</div>
</div>
<br/><br/>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>

<?php if (! empty ( $this->_tpl_vars['aReport'] ) && ! empty ( $this->_tpl_vars['aReport']['warning'] )): ?>
<?php $_from = $this->_tpl_vars['aReport']['warning']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['report'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['report']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['tagName'] => $this->_tpl_vars['aTag']):
        $this->_foreach['report']['iteration']++;
?>
<div class="warning">
	<span style="font-size: 13px;"><strong><?php echo $this->_tpl_vars['tagName']; ?>
</strong>&nbsp;:&nbsp;<strong style="color: orange;"><?php echo $this->_tpl_vars['aTag']['count']; ?>
</strong>&nbsp;<?php if ($this->_tpl_vars['aTag']['mandatory'] == true): ?><?php echo smartyTranslate(array('s' => 'error','mod' => 'gmerchantcenter'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'warning','mod' => 'gmerchantcenter'), $this);?>
<?php endif; ?><?php if ($this->_tpl_vars['aTag']['count'] > 1): ?>s<?php endif; ?></span><br/>
	<span><?php echo $this->_tpl_vars['aTag']['msg']; ?>
</span><p style="height: 10px; margin: 0; padding: 0;"> </p>
	<?php if ($this->_tpl_vars['aTag']['faq_id'] != 0): ?>
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/doc_small_icon.gif" align="absmiddle" height="16" width="16" /> <a href="#" onclick="$('#tagReport<?php echo $this->_tpl_vars['tagName']; ?>
').toggle(); return false;"><?php echo smartyTranslate(array('s' => 'View affected products','mod' => 'gmerchantcenter'), $this);?>
</a>
	<br /> 
	<?php endif; ?>
	<img src="<?php echo $this->_tpl_vars['sPath']; ?>
/img/admin/help.png" align="absmiddle" height="16" width="16" /> <a href="<?php echo $this->_tpl_vars['sFaqURL']; ?>
<?php echo $this->_tpl_vars['aTag']['faq_id']; ?>
&lg=<?php echo $this->_tpl_vars['sFaqLang']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Learn how to fix this problem','mod' => 'gmerchantcenter'), $this);?>
</a>
	<div id="tagReport<?php echo $this->_tpl_vars['tagName']; ?>
" style="display: none;">
	<ul style="padding: 10px; background: #fff; border: 1px solid #ccc;">
	<?php $_from = $this->_tpl_vars['aTag']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['aProduct']):
?>
		<li style="margin-left: 15px;"><a href="<?php echo $this->_tpl_vars['aProduct']['productUrl']; ?>
" target="_blank"><?php echo smartyTranslate(array('s' => 'Product Id','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productId']; ?>
 - <?php echo smartyTranslate(array('s' => 'Product name','mod' => 'gmerchantcenter'), $this);?>
: <?php echo $this->_tpl_vars['aProduct']['productName']; ?>
</a></li>
	<?php endforeach; endif; unset($_from); ?>
	</ul>
	</div>
</div>
<br/><br/>
<?php endforeach; endif; unset($_from); ?>
<?php endif; ?>
	
<?php if (! empty ( $this->_tpl_vars['bThickBox'] )): ?>
</body>
</html>
<?php endif; ?>