//$(document).ready(function(){
//	$('.dept_descript').click(function(e){
//		e.preventDefault();
//		var id = $(this).attr('id');
//		$.ajax({
//			url: 'dept_fetch.php',
//			method: 'GET',
//			data: ({ id:id }),
//			datatype: 'json',
//			success: function(data) {
//				var obj = $.parseJSON(data);
//				$('.nav-cont').html(obj.dept_desc);
//				$('.cont-head').html("<h2><b>"+obj.dept_name+"</b></h2>");
//			},
//			error: function(request,status,error) {
//				alert(error);
//			}
//		});
//	});
//	$('.club_descript').click(function(e){
//		e.preventDefault();
//		var id = $(this).attr('id');
//		$.ajax({
//			url: 'club_fetch.php',
//			method: 'GET',
//			data: ({ id:id }),
//			datatype: 'json',
//			success: function(data) {
//				var obj1 = $.parseJSON(data);
//				
//				$('.nav-cont').html(obj1[2]);
//				$('.cont-head').html("<h2><b>"+obj1[0]+"</b></h2>");
//			},
///			error: function(request,status,error) {
//				alert(error);
//			}
//		});
//	});
//
//	$('.assoc_descript').click(function(e){
//		e.preventDefault();
//		var id = $(this).attr('id');
//		$.ajax({
//			url: 'assoc_fetch.php',
//			method: 'GET',
//			data: ({ id:id }),
//			datatype: 'json',
//			success: function(data) {
//				
//				var obj1 = $.parseJSON(data);
//				
//				$('.nav-cont').html(obj1[2]);
//				$('.cont-head').html("<h2><b>"+obj1[0]+"</b></h2>");
//			},
//			error: function(request,status,error) {
//				alert(error);
///			}
//		});
//	});
//});
