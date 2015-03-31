<?php /* Smarty version 2.6.20, created on 2015-03-31 12:32:59
         compiled from /home/www/mariannedenis.com/modules/feeder/feederHeader.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', '/home/www/mariannedenis.com/modules/feeder/feederHeader.tpl', 1, false),)), $this); ?>
<link rel="alternate" type="application/rss+xml" title="<?php echo ((is_array($_tmp=$this->_tpl_vars['meta_title'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'html', 'UTF-8') : smarty_modifier_escape($_tmp, 'html', 'UTF-8')); ?>
" href="<?php echo $this->_tpl_vars['feedUrl']; ?>
" />