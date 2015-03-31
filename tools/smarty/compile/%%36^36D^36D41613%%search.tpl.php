<?php /* Smarty version 2.6.20, created on 2013-03-04 18:54:33
         compiled from /var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'l', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl', 3, false),array('modifier', 'htmlentities', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl', 18, false),array('modifier', 'stripslashes', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl', 18, false),array('modifier', 'escape', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl', 52, false),array('modifier', 'intval', '/var/www/vhosts/mariannedenis.com/httpdocs/themes/iprestashop/search.tpl', 57, false),)), $this); ?>
<div id="topbar">
	<div id="leftnav">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
"><img alt="<?php echo smartyTranslate(array('s' => 'home'), $this);?>
" src="<?php echo $this->_tpl_vars['ips_img_dir']; ?>
home.png" /></a>
	</div>
	<div id="title">
		<?php echo smartyTranslate(array('s' => 'Search'), $this);?>

	</div>
	<div id="rightbutton">
		<a href="<?php echo $this->_tpl_vars['base_dir']; ?>
?browse=1"><?php echo smartyTranslate(array('s' => 'Browse'), $this);?>
</a>
	</div>
</div>

<div class="searchbox">
	<form action="<?php echo $this->_tpl_vars['base_dir']; ?>
search.php" method="get" id="searchbox">
		<fieldset>
			<input type="hidden" name="orderby" value="position" />
			<input type="hidden" name="orderway" value="desc" />
			<input id="search_query" placeholder="<?php echo smartyTranslate(array('s' => 'search'), $this);?>
" type="text" name="search_query" value="<?php if (isset ( $_GET['search_query'] )): ?><?php echo ((is_array($_tmp=((is_array($_tmp=$_GET['search_query'])) ? $this->_run_mod_handler('htmlentities', true, $_tmp, $this->_tpl_vars['ENT_QUOTES'], 'utf-8') : htmlentities($_tmp, $this->_tpl_vars['ENT_QUOTES'], 'utf-8')))) ? $this->_run_mod_handler('stripslashes', true, $_tmp) : stripslashes($_tmp)); ?>
<?php elseif ($this->_tpl_vars['query']): ?><?php echo $this->_tpl_vars['query']; ?>
<?php endif; ?>" />
			<input id="submit" type="hidden" name="submit_search" />
		</fieldset>
	</form>
</div>
<?php if ($this->_tpl_vars['ajaxsearch']): ?>
	<script type="text/javascript">
		<?php echo '
		function formatSearch(row) {
			return row[2] + \' > \' + row[1];
		}
		function redirectSearch(event, data, formatted) {
			$(\'#search_query\').val(data[1]);
			document.location.href = data[3];
		}
		$(\'document\').ready( function() {
			$("#search_query").autocomplete(
				\''; ?>
<?php echo $this->_tpl_vars['base_dir']; ?>
<?php echo 'search.php\', {
				minChars: 3,
				max:10,
				width:500,
				scroll: false,
				formatItem:formatSearch,
				extraParams: { ajaxSearch:1,id_lang:'; ?>
<?php echo $this->_tpl_vars['cookie']->id_lang; ?>
<?php echo ' }
			}).result(redirectSearch)
		});
		'; ?>

	</script>
<?php endif; ?>

<div id="content">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./errors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php if (! $this->_tpl_vars['nbProducts']): ?>
	<?php if ($this->_tpl_vars['query']): ?>
	<span class="header"><?php echo smartyTranslate(array('s' => 'No results found for your search'), $this);?>
&nbsp;"<?php echo ((is_array($_tmp=$this->_tpl_vars['query'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
"</span>
	<?php endif; ?>
	<span class="graytitle"><?php echo smartyTranslate(array('s' => 'Please type a search keyword above.'), $this);?>
</span>
<?php else: ?>
	<span class="header"><?php echo smartyTranslate(array('s' => 'Search'), $this);?>
 "<?php if ($this->_tpl_vars['query']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['query'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php elseif ($this->_tpl_vars['tag']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['tag'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php elseif ($this->_tpl_vars['ref']): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['ref'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'htmlall', 'UTF-8') : smarty_modifier_escape($_tmp, 'htmlall', 'UTF-8')); ?>
<?php endif; ?>"</span>
	<span class="graytitle"><b><?php echo ((is_array($_tmp=$this->_tpl_vars['nbProducts'])) ? $this->_run_mod_handler('intval', true, $_tmp) : intval($_tmp)); ?>
</b>&nbsp;<?php if ($this->_tpl_vars['nbProducts'] == 1): ?><?php echo smartyTranslate(array('s' => 'result has been found.'), $this);?>
<?php else: ?><?php echo smartyTranslate(array('s' => 'results have been found.'), $this);?>
<?php endif; ?></span>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-sort.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./product-list.tpl", 'smarty_include_vars' => array('products' => $this->_tpl_vars['products'])));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => ($this->_tpl_vars['tpl_dir'])."./pagination.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<?php endif; ?>
</div>