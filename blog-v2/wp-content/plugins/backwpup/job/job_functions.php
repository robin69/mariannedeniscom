<?PHP
// don't load directly
if (!defined('BACKWPUP_JOBRUN_FOLDER')) {
	header($_SERVER["SERVER_PROTOCOL"]." 404 Not Found");
	header("Status: 404 Not Found");
	die();
}

function __($message,$domain='backwpup') {
	global $STATIC;
	$msgid=md5($message);
	if (!empty($STATIC['TRANSLATE'][$msgid]))
		$message=$STATIC['TRANSLATE'][$msgid];
	return $message;
}

function _e($message,$domain='backwpup') {
	global $STATIC;
	$msgid=md5($message);
	if (!empty($STATIC['TRANSLATE'][$msgid]))
		$message=$STATIC['TRANSLATE'][$msgid];
	echo $message;
}

function _n($singular,$plural,$count,$domain='backwpup') {
	global $STATIC;
	if ($count<=1) {
		$msgid=md5($singular);
		$message=$singular;
	} else {
		$msgid=md5($plural);
		$message=$plural;
	}
	if (!empty($STATIC['TRANSLATE'][$msgid]))
		$message=$STATIC['TRANSLATE'][$msgid];
	return $message;
}

function exists_option($option='backwpup_jobs') {
	global $WORKING,$STATIC;
	mysql_update();
	$query="SELECT option_value as value FROM ".$STATIC['WP']['OPTIONS_TABLE']." WHERE option_name='".trim($option)."' LIMIT 1";
	$res=mysql_query($query);
	if (!$res or mysql_num_rows($res)<1) {
		return false;
	}
	return true;
}

function get_option($option='backwpup_jobs') {
	global $WORKING,$STATIC;
	mysql_update();
	$query="SELECT option_value FROM ".$STATIC['WP']['OPTIONS_TABLE']." WHERE option_name='".trim($option)."' LIMIT 1";
	$res=mysql_query($query);
	if (!$res) {
		trigger_error(sprintf(__('Database error %1$s for query %2$s','backwpup'), mysql_error(), $query),E_USER_ERROR);
		return false;
	}
	return unserialize(mysql_result($res,0));
}

function update_option($option='backwpup_jobs',$data) {
	global $WORKING,$STATIC;
	mysql_update();
	$serdata=mysql_real_escape_string(serialize($data));
	$query="UPDATE ".$STATIC['WP']['OPTIONS_TABLE']." SET option_value= '".$serdata."' WHERE option_name='".trim($option)."' LIMIT 1";
	$res=mysql_query($query);
	if (!$res) {
		trigger_error(sprintf(__('Database error %1$s for query %2$s','backwpup'), mysql_error(), $query),E_USER_ERROR);
		return false;
	}
	return true;
}

// add to file list
function add_file($files) {
	global $STATIC;
	if (empty($files))
		return;
	$filelist=get_filelist();
	foreach($files as $file)
		$filelist[]=$file;
	file_put_contents($STATIC['TEMPDIR'].'.filelist',serialize($filelist));
}

// add to file list
function get_filelist() {
	global $STATIC;
	if (file_exists($STATIC['TEMPDIR'].'.filelist') and $filelistfile=file_get_contents($STATIC['TEMPDIR'].'.filelist'))
		return unserialize(trim($filelistfile));
	else 
		return array();
}

//file size
function formatbytes($bytes, $precision = 2) {
	$units = array('B', 'KB', 'MB', 'GB', 'TB');
	$bytes = max($bytes, 0);
	$pow = floor(($bytes ? log($bytes) : 0) / log(1024));
	$pow = min($pow, count($units) - 1);
	$bytes /= pow(1024, $pow);
	return round($bytes, $precision) . ' ' . $units[$pow];
}

function need_free_memory($memneed) {
	if (ini_get('safe_mode') or strtolower(ini_get('safe_mode'))=='on' or ini_get('safe_mode')=='1') {
		trigger_error(sprintf(__('PHP Safe mode is on!!! Can not increase memory limit is %s','backwpup'),ini_get('memory_limit')),E_USER_WARNING);
		return false;
	}

	//calc mem to bytes
	if (strtoupper(substr(trim(ini_get('memory_limit')),-1))=='K')
		$memory=trim(substr(ini_get('memory_limit'),0,-1))*1024;
	elseif (strtoupper(substr(trim(ini_get('memory_limit')),-1))=='M')
		$memory=trim(substr(ini_get('memory_limit'),0,-1))*1024*1024;
	elseif (strtoupper(substr(trim(ini_get('memory_limit')),-1))=='G')
		$memory=trim(substr(ini_get('memory_limit'),0,-1))*1024*1024*1024;
	else
		$memory=trim(ini_get('memory_limit'));

	//use real memory at php version 5.2.0
	if (version_compare(phpversion(), '5.2.0', '<'))
		$memnow=memory_get_usage();
	else
		$memnow=memory_get_usage(true);

	//need memory
	$needmemory=$memnow+$memneed;

	// increase Memory
	if ($needmemory>$memory) {
		$newmemory=round($needmemory/1024/1024)+1;
		if ($oldmem=ini_set('memory_limit', $newmemory.'M'))
			trigger_error(sprintf(__('Memory increased from %1$s to %2$s','backwpup'),$oldmem,ini_get('memory_limit')),E_USER_NOTICE);
		else
			trigger_error(sprintf(__('Can not increase memory limit is %1$s','backwpup'),ini_get('memory_limit')),E_USER_WARNING);
	}
	return true;
}

function maintenance_mode($enable = false) {
	global $WORKING,$STATIC;
	if (!$STATIC['JOB']['maintenance'])
		return;
	if ( $enable ) {
		trigger_error(__('Set Blog to maintenance mode','backwpup'),E_USER_NOTICE);
		if ( exists_option('wp-maintenance-mode-msqld') ) { //Support for WP Maintenance Mode Plugin
			update_option('wp-maintenance-mode-msqld','1');
		} elseif ( exists_option('plugin_maintenance-mode') ) { //Support for Maintenance Mode Plugin
			$mamo=get_option('plugin_maintenance-mode');
			$mamo['mamo_activate']='on_'.time();
			$mamo['mamo_backtime_days']='0';
			$mamo['mamo_backtime_hours']='0';
			$mamo['mamo_backtime_mins']='5';
			update_option('plugin_maintenance-mode',$mamo);
		} else { //WP Support
			if (is_writable(rtrim($STATIC['WP']['ABSPATH'],'/')))
				file_put_contents(rtrim($STATIC['WP']['ABSPATH'],'/').'/.maintenance','<?php $upgrading = '.time().'; ?>');
			else
				trigger_error(__('Cannot set Blog to maintenance mode! Root folder is not writeable!','backwpup'),E_USER_NOTICE);
		}
	} else {
		trigger_error(__('Set Blog to normal mode','backwpup'),E_USER_NOTICE);
		if ( exists_option('wp-maintenance-mode-msqld') ) { //Support for WP Maintenance Mode Plugin
			update_option('wp-maintenance-mode-msqld','0');
		} elseif ( exists_option('plugin_maintenance-mode') ) { //Support for Maintenance Mode Plugin
			$mamo=get_option('plugin_maintenance-mode');
			$mamo['mamo_activate']='off';
			update_option('plugin_maintenance-mode',$mamo);
		} else { //WP Support
			@unlink(rtrim($STATIC['WP']['ABSPATH'],'/').'/.maintenance');
		}
	}
}

function curl_progresscallback($download_size, $downloaded, $upload_size, $uploaded) {
	global $WORKING,$STATIC;
	if ($WORKING['STEPTODO']>10)
		$WORKING['STEPDONE']=$uploaded;
	update_working_file();
	return(0);
}

function get_working_file() {
	global $STATIC;
	if (is_writable($STATIC['TEMPDIR'].'.running')) {
		if ($runningfile=file_get_contents($STATIC['TEMPDIR'].'.running'))
			return unserialize(trim($runningfile));
		else
			return false;
	} else {
		return false;
	}
}

function delete_working_file() {
	global $STATIC;
	if (is_writable($STATIC['TEMPDIR'].'.running')) {
		unlink($STATIC['TEMPDIR'].'.running');
		unlink($STATIC['TEMPDIR'].'.static');
		return true;
	} else {
		return false;
	}
}

function update_working_file($mustwrite=false,$setpid=true) {
	global $WORKING,$STATIC,$runmicrotime;
	if (!file_exists($STATIC['TEMPDIR'].'.running'))
		job_end();
	if ($mustwrite or empty($runmicrotime) or $runmicrotime>(microtime()-500)) { //only update all 500 ms
		if ($WORKING['STEPTODO']>0 and $WORKING['STEPDONE']>0)
			$steppersent=round($WORKING['STEPDONE']/$WORKING['STEPTODO']*100);
		else
			$steppersent=1;
		if (count($WORKING['STEPSDONE'])>0)
			$stepspersent=round(count($WORKING['STEPSDONE'])/count($WORKING['STEPS'])*100);
		else
			$stepspersent=1;
		@set_time_limit($STATIC['CFG']['jobscriptruntime']);
		mysql_update();
		$runningfile=file_get_contents($STATIC['TEMPDIR'].'.running');
		$infile=unserialize(trim($runningfile));		
		if (is_writable($STATIC['TEMPDIR'].'.running')) {
			$PID=0;
			if ($setpid)
				$PID=getmypid();
			file_put_contents($STATIC['TEMPDIR'].'.running',serialize(array('timestamp'=>time(),'JOBID'=>$STATIC['JOB']['jobid'],'LOGFILE'=>$STATIC['LOGFILE'],'PID'=>getmypid(),'STEPSPERSENT'=>$stepspersent,'STEPPERSENT'=>$steppersent,'ABSPATH'=>$STATIC['WP']['ABSPATH'],'WORKING'=>$WORKING)));
			$runmicrotime=microtime();
		}
	}
	return true;
}

function mysql_update() {
	global $WORKING,$STATIC,$mysqlconlink;
	if (!$mysqlconlink or !@mysql_ping($mysqlconlink)) {
		// make a mysql connection
		$mysqlconlink=mysql_connect($STATIC['WP']['DB_HOST'], $STATIC['WP']['DB_USER'], $STATIC['WP']['DB_PASSWORD'], true);
		if (!$mysqlconlink) 
			trigger_error(sprintf(__('No MySQL connection: %s','backwpup'),mysql_error()),E_USER_ERROR);
		//set connecten charset
		if (!empty($STATIC['WP']['DB_CHARSET'])) {
			if ( function_exists( 'mysql_set_charset' )) {
				mysql_set_charset( $STATIC['WP']['DB_CHARSET'], $mysqlconlink );
			} else {
				$query = "SET NAMES '".$STATIC['WP']['DB_CHARSET']."'";
				if (!empty($collate))
					$query .= " COLLATE '".$STATIC['WP']['DB_COLLATE']."'";
				mysql_query($query,$mysqlconlink);
			}
		}
		//connect to database
		$mysqldblink = mysql_select_db($STATIC['WP']['DB_NAME'], $mysqlconlink);
		if (!$mysqldblink)
			trigger_error(sprintf(__('No MySQL connection to database: %s','backwpup'),mysql_error()),E_USER_ERROR);
	}
}

//function for PHP error handling
function joberrorhandler() {
	global $WORKING,$STATIC;
	$args = func_get_args(); // 0:errno, 1:errstr, 2:errfile, 3:errline

	// if error has been supressed with an @
    if (error_reporting()==0) 
        return;
	
	$adderrorwarning=false;

	switch ($args[0]) {
	case E_NOTICE:
	case E_USER_NOTICE:
		$message="<span>".$args[1]."</span>";
		break;
	case E_WARNING:
	case E_USER_WARNING:
		$WORKING['WARNING']++;
		$adderrorwarning=true;
		$message="<span class=\"warning\">".__('[WARNING]','backwpup')." ".$args[1]."</span>";
		break;
	case E_ERROR: 
	case E_USER_ERROR:
		$WORKING['ERROR']++;
		$adderrorwarning=true;
		$message="<span class=\"error\">".__('[ERROR]','backwpup')." ".$args[1]."</span>";
		break;
	case E_DEPRECATED:
	case E_USER_DEPRECATED:
		$message="<span>".__('[DEPRECATED]','backwpup')." ".$args[1]."</span>";
		break;
	case E_STRICT:
		$message="<span>".__('[STRICT NOTICE]','backwpup')." ".$args[1]."</span>";
		break;
	case E_RECOVERABLE_ERROR:
		$message="<span>".__('[RECOVERABLE ERROR]','backwpup')." ".$args[1]."</span>";
		break;
	default:
		$message="<span>[".$args[0]."] ".$args[1]."</span>";
		break;
	}

	//log line
	$timestamp="<span class=\"timestamp\" title=\"[Line: ".$args[3]."|File: ".basename($args[2])."|Mem: ".formatbytes(@memory_get_usage(true))."|Mem Max: ".formatbytes(@memory_get_peak_usage(true))."|Mem Limit: ".ini_get('memory_limit')."|PID: ".getmypid()."]\">".date('Y/m/d H:i.s',time()+$STATIC['WP']['TIMEDIFF']).":</span> ";
	//wirte log file
	if (is_writable($STATIC['LOGFILE'])) {
		file_put_contents($STATIC['LOGFILE'], $timestamp.$message."<br />\n", FILE_APPEND);

		//write new log header
		if ($adderrorwarning) {
			$found=0;
			$fd=fopen($STATIC['LOGFILE'],'r+');
			while (!feof($fd)) {
				$line=fgets($fd);
				if (stripos($line,"<meta name=\"backwpup_errors\"") !== false) {
					fseek($fd,$filepos);
					fwrite($fd,str_pad("<meta name=\"backwpup_errors\" content=\"".$WORKING['ERROR']."\" />",100)."\n");
					$found++;
				}
				if (stripos($line,"<meta name=\"backwpup_warnings\"") !== false) {
					fseek($fd,$filepos);
					fwrite($fd,str_pad("<meta name=\"backwpup_warnings\" content=\"".$WORKING['WARNING']."\" />",100)."\n");
					$found++;
				}
				if ($found>=2)
					break;
				$filepos=ftell($fd);
			}
			fclose($fd);
		}
	}
	//write working file
	if (is_file($STATIC['TEMPDIR'].'.running'))
		update_working_file();

	if ($args[0]==E_ERROR or $args[0]==E_CORE_ERROR or $args[0]==E_COMPILE_ERROR) {//Die on fatal php errors.
		die();
	}
	
	//true for no more php error hadling.
	return true;
}	

//job end function
function job_end() {
	global $WORKING,$STATIC,$mysqlconlink;
	//check if job_end allredy runs
	if (empty($WORKING['JOBENDINPROGRESS']) or !$WORKING['JOBENDINPROGRESS']) {
		$WORKING['JOBENDINPROGRESS']=true;
		update_working_file(true);
	} else
		return;

	$WORKING['STEPTODO']=1;
	$WORKING['STEPDONE']=0;
	//delete old logs
	if (!empty($STATIC['CFG']['maxlogs'])) {
		if ( $dir = opendir($STATIC['CFG']['dirlogs']) ) { //make file list
			while (($file = readdir($dir)) !== false ) {
				if ('backwpup_log_' == substr($file,0,strlen('backwpup_log_')) and (".html" == substr($file,-5) or ".html.gz" == substr($file,-8)))
					$logfilelist[]=$file;
			}
			closedir( $dir );
		}
		if (sizeof($logfilelist)>0) {
			rsort($logfilelist);
			$numdeltefiles=0;
			for ($i=$STATIC['CFG']['maxlogs'];$i<sizeof($logfilelist);$i++) {
				unlink($STATIC['CFG']['dirlogs'].$logfilelist[$i]);
				$numdeltefiles++;
			}
			if ($numdeltefiles>0)
				trigger_error(sprintf(_n('One old log deleted','%d old logs deleted',$numdeltefiles,'backwpup'),$numdeltefiles),E_USER_NOTICE);
		}
	}
	//Display job working time	
	trigger_error(sprintf(__('Job done in %s sec.','backwpup'),time()-$STATIC['JOB']['starttime']),E_USER_NOTICE);	
	
	if (!is_file($STATIC['JOB']['backupdir'].$STATIC['backupfile']) or !($filesize=filesize($STATIC['JOB']['backupdir'].$STATIC['backupfile']))) //Set the filezie corectly
		$filesize=0;

	//clean up temp
	if ($dir = opendir($STATIC['TEMPDIR'])) {
		while (($file = readdir($dir)) !== false) {
			if (is_readable($STATIC['TEMPDIR'].$file) and is_file($STATIC['TEMPDIR'].$file)) {
				if ($file!='.' and $file!='..' and $file!='.running') {
					unlink($STATIC['TEMPDIR'].$file);
				}
			}
		}
		closedir($dir);
	}
	
	$jobs=get_option('backwpup_jobs');
	$jobs[$STATIC['JOB']['jobid']]['lastrun']=$jobs[$STATIC['JOB']['jobid']]['starttime'];
	$STATIC['JOB']['lastrun']=$jobs[$STATIC['JOB']['jobid']]['lastrun'];
	$jobs[$STATIC['JOB']['jobid']]['lastruntime']=time()-$STATIC['JOB']['starttime'];
	$STATIC['JOB']['lastruntime']=$jobs[$STATIC['JOB']['jobid']]['lastruntime'];
	$jobs[$STATIC['JOB']['jobid']]['starttime']='';
	if (!empty($STATIC['JOB']['lastbackupdownloadurl']))
		$jobs[$STATIC['JOB']['jobid']]['lastbackupdownloadurl']=$STATIC['JOB']['lastbackupdownloadurl'];
	else
		$jobs[$STATIC['JOB']['jobid']]['lastbackupdownloadurl']='';
	update_option('backwpup_jobs',$jobs); //Save Settings
	
	//write header info
	if (is_writable($STATIC['LOGFILE'])) {
		$fd=fopen($STATIC['LOGFILE'],'r+');
		$found=0;
		while (!feof($fd)) {
			$line=fgets($fd);
			if (stripos($line,"<meta name=\"backwpup_jobruntime\"") !== false) {
				fseek($fd,$filepos);
				fwrite($fd,str_pad("<meta name=\"backwpup_jobruntime\" content=\"".$STATIC['JOB']['lastruntime']."\" />",100)."\n");
				$found++;
			}
			if (stripos($line,"<meta name=\"backwpup_backupfilesize\"") !== false) {
				fseek($fd,$filepos);
				fwrite($fd,str_pad("<meta name=\"backwpup_backupfilesize\" content=\"".$filesize."\" />",100)."\n");
				$found++;
			}
			if ($found>=2)
				break;
			$filepos=ftell($fd);
		}
		fclose($fd);
	}
	//Restore error handler
	restore_error_handler();
	//logfile end
	file_put_contents($STATIC['LOGFILE'], "</body>\n</html>\n", FILE_APPEND);
	//gzip logfile
	if ($STATIC['CFG']['gzlogs'] and is_writable($STATIC['LOGFILE'])) {
		$fd=fopen($STATIC['LOGFILE'],'r');
		$zd=gzopen($STATIC['LOGFILE'].'.gz','w9');
		while (!feof($fd)) {
			gzwrite($zd,fread($fd,4096));
		}
		gzclose($zd);
		fclose($fd);
		unlink($STATIC['LOGFILE']);
		$STATIC['LOGFILE']=$STATIC['LOGFILE'].'.gz';
		
		$jobs=get_option('backwpup_jobs');
		$jobs[$STATIC['JOB']['jobid']]['logfile']=$STATIC['LOGFILE'];
		update_option('backwpup_jobs',$jobs); //Save Settings
	}
	
	//Send mail with log
	$sendmail=false;
	if ($WORKING['ERROR']>0 and $STATIC['JOB']['mailerroronly'] and !empty($STATIC['JOB']['mailaddresslog']))
		$sendmail=true;
	if (!$STATIC['JOB']['mailerroronly'] and !empty($STATIC['JOB']['mailaddresslog']))
		$sendmail=true;
	if ($sendmail) {
		//Create PHP Mailer
		require_once($STATIC['WP']['ABSPATH'].$STATIC['WP']['WPINC'].'/class-phpmailer.php');
		$phpmailer = new PHPMailer();
		//Setting den methode
		if ($STATIC['CFG']['mailmethod']=="SMTP") {
			require_once($STATIC['WP']['ABSPATH'].$STATIC['WP']['WPINC'].'/class-smtp.php');
			$phpmailer->Host=$STATIC['CFG']['mailhost'];
			$phpmailer->Port=$STATIC['CFG']['mailhostport'];
			$phpmailer->SMTPSecure=$STATIC['CFG']['mailsecure'];
			$phpmailer->Username=$STATIC['CFG']['mailuser'];
			$phpmailer->Password=base64_decode($STATIC['CFG']['mailpass']);
			if (!empty($STATIC['CFG']['mailuser']) and !empty($STATIC['CFG']['mailpass']))
				$phpmailer->SMTPAuth=true;
			$phpmailer->IsSMTP();
		} elseif ($STATIC['CFG']['mailmethod']=="Sendmail") {
			$phpmailer->Sendmail=$STATIC['CFG']['mailsendmail'];
			$phpmailer->IsSendmail();
		} else {
			$phpmailer->IsMail();
		}
		
		$mailbody=sprintf(__("Jobname: %s","backwpup"),$STATIC['JOB']['name'])."\n";
		$mailbody.=sprintf(__("Jobtype: %s","backwpup"),$STATIC['JOB']['type'])."\n";
		if (!empty($WORKING['ERROR']))
			$mailbody.=sprintf(__("Errors: %d","backwpup"),$WORKING['ERROR'])."\n";
		if (!empty($WORKING['WARNINGS']))
			$mailbody.=sprintf(__("Warnings: %d","backwpup"),$WORKING['WARNINGS'])."\n";
		
		$phpmailer->From     = $STATIC['CFG']['mailsndemail'];
		$phpmailer->FromName = $STATIC['CFG']['mailsndname'];
		$phpmailer->AddAddress($STATIC['JOB']['mailaddresslog']);
		$phpmailer->Subject  =  sprintf(__('BackWPup log from %1$s: %2$s','backwpup'),date('Y/m/d @ H:i',$STATIC['JOB']['starttime']+$STATIC['WP']['TIMEDIFF']),$STATIC['JOB']['name']);
		$phpmailer->IsHTML(false);
		$phpmailer->Body  =  $mailbody;
		$phpmailer->AddAttachment($STATIC['LOGFILE']);
		$phpmailer->Send();
	}

	$WORKING['STEPDONE']=1;
	$WORKING['STEPSDONE'][]='JOB_END'; //set done
	if (is_file($STATIC['TEMPDIR'].'.running')) {
		update_working_file(true);
		unlink($STATIC['TEMPDIR'].'.running');
		rmdir($STATIC['TEMPDIR']);
	}
	mysql_close($mysqlconlink);
	die();
}

// execute on script job shutdown
function job_shutdown() {
	global $WORKING,$STATIC;
	if (empty($STATIC['LOGFILE'])) //nothing on empty
		return;
	$WORKING['RESTART']++;
	if ($WORKING['RESTART']>=$STATIC['CFG']['jobscriptretry'] and file_exists($STATIC['TEMPDIR'].'.running') and is_writable($STATIC['LOGFILE'])) {  //only x restarts allowed
		file_put_contents($STATIC['LOGFILE'], "<span class=\"timestamp\" title=\"[Line: ".__LINE__."|File: ".basename(__FILE__)."\"|Mem: ".formatbytes(@memory_get_usage(true))."|Mem Max: ".formatbytes(@memory_get_peak_usage(true))."|Mem Limit: ".ini_get('memory_limit')."|PID: ".getmypid()."]>".date('Y/m/d H:i.s',time()+$STATIC['WP']['TIMEDIFF']).":</span> <span class=\"error\">[ERROR]".__('To many restarts....','backwpup')."</span><br />\n", FILE_APPEND);
		$WORKING['ERROR']++;
		$fd=fopen($STATIC['LOGFILE'],'r+');
		while (!feof($fd)) {
			$line=fgets($fd);
			if (stripos($line,"<meta name=\"backwpup_errors\"") !== false) {
				fseek($fd,$filepos);
				fwrite($fd,str_pad("<meta name=\"backwpup_errors\" content=\"".$WORKING['ERROR']."\" />",100)."\n");
				break;
			}
			$filepos=ftell($fd);
		}
		fclose($fd);
		job_end();
	}
	//Put last error to log if one
	$lasterror=error_get_last();
	if (($lasterror['type']==E_ERROR or $lasterror['type']==E_PARSE or $lasterror['type']==E_CORE_ERROR or $lasterror['type']==E_COMPILE_ERROR) and is_writable($STATIC['LOGFILE'])) {
		file_put_contents($STATIC['LOGFILE'], "<span class=\"timestamp\" title=\"[Line: ".$lasterror['line']."|File: ".basename($lasterror['file'])."|Mem: ".formatbytes(@memory_get_usage(true))."|Mem Max: ".formatbytes(@memory_get_peak_usage(true))."|Mem Limit: ".ini_get('memory_limit')."|PID: ".getmypid()."]\">".date('Y/m/d H:i.s',time()+$STATIC['WP']['TIMEDIFF']).":</span> <span class=\"error\">[ERROR]".$lasterror['message']."</span><br />\n", FILE_APPEND);
		//write new log header
		$WORKING['ERROR']++;
		$fd=fopen($STATIC['LOGFILE'],'r+');
		while (!feof($fd)) {
			$line=fgets($fd);
			if (stripos($line,"<meta name=\"backwpup_errors\"") !== false) {
				fseek($fd,$filepos);
				fwrite($fd,str_pad("<meta name=\"backwpup_errors\" content=\"".$WORKING['ERROR']."\" />",100)."\n");
				break;
			}
			$filepos=ftell($fd);
		}
		fclose($fd);
	}
	//Excute jobrun again
	if (!file_exists($STATIC['TEMPDIR'].'.running'))
		return;
	if (is_writable($STATIC['LOGFILE']))
		file_put_contents($STATIC['LOGFILE'], "<span class=\"timestamp\" title=\"[Line: ".__LINE__."|File: ".basename(__FILE__)."|Mem: ".formatbytes(@memory_get_usage(true))."|Mem Max: ".formatbytes(@memory_get_peak_usage(true))."|Mem Limit: ".ini_get('memory_limit')."|PID: ".getmypid()."]\">".date('Y/m/d H:i.s',time()+$STATIC['WP']['TIMEDIFF']).":</span> <span>".$WORKING['RESTART'].'. '.__('Script stop! Will started again now!','backwpup')."</span><br />\n", FILE_APPEND);
	update_working_file(true,false);
	if (!empty($STATIC['JOBRUNURL'])) {
		include_once(dirname(__FILE__).'/../libs/class.http.php');
		$http = new Http();
		$http->setMethod('POST');
		$http->addParam('BackWPupJobTemp', $STATIC['TEMPDIR']);
		$http->addParam('nonce',$WORKING['NONCE']);
		$http->addParam('type', 'restart');
		$http->setUseragent('BackWPup');
		$http->setTimeout(0.01);
		$http->execute($STATIC['JOBRUNURL']);
	}
}
?>