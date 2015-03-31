jQuery(document).ready( function($) {
	var backwpupajaxurl = $('#backwpupworkingajaxurl').val();
	if ($('#logfile').length>0) {
		$.ajaxSetup({ cache: false });
		var refreshId = setInterval(function() {
			$.ajax({type: 'POST',
				url: backwpupajaxurl,
				data: {
					logfile: $('#logfile').val(),
					BackWPupJobTemp: $('#backwpupjobtemp').val(),
					logpos:  $('#logpos').val()
				},
				dataType: 'json',
				success: function(rundata) {
					if ( 0 < rundata.logpos ) {
						$('#logpos').val(rundata.logpos);
					}
					if ( '' != rundata.LOG ) {
						$('#showworking').append(rundata.LOG);
						//$('#showworking').replaceWith('<div id=\"showworking\">'+rundata.LOG+'</div>');
						$('#showworking').scrollTop(rundata.logpos*12);
					}
					if ( 0 < rundata.ERROR ) {
						$('#errors').replaceWith('<span id="errors">'+rundata.ERROR+'</span>');
						$('#errorid').show();
					}
					if ( 0 < rundata.WARNING ) {
						$('#warnings').replaceWith('<span id="warnings">'+rundata.WARNING+'</span>');
						$('#warningsid').show();
					}
					if ( 0 < rundata.STEPSPERSENT ) {
						$('#progressstep').replaceWith('<div id="progressstep">'+rundata.STEPSPERSENT+'%</div>');
						$('#progressstep').css('width', parseFloat(rundata.STEPSPERSENT)+'%');
						$('.progressbar').show();
					}
					if ( 0 < rundata.STEPPERSENT ) {
						$('#progresssteps').replaceWith('<div id="progresssteps">'+rundata.STEPPERSENT+'%</div>');
						$('#progresssteps').css('width', parseFloat(rundata.STEPPERSENT)+'%');
						$('.progressbar').show();
					}						
				},
			});
			$("#stopworking").each(function(index) {
				$("#message").remove();
				clearInterval(refreshId);
			});
		}, 1000);
	}
});

