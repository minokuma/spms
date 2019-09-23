/**
 * JavaScript 모듈
 */

console.log("Reply Module.....");

var replyService = (function() {
	
	
	// 싸이클 13 - AJAX 댓글 리스트 조회 처리 
	function getList(param, callback, error) {
		var bno = param.bno;
		var page = param.page || 1;

		$.getJSON("/replies/pages/" + bno + "/" + page + ".json",
				function(data) {
					if (callback) {
						callback(data);
					}
				}).fail(function(xhr, status, err) {
			if (error) {
				error();
			}
		});
	}
	
	// 싸이클 14 - AJAX 댓글 등록 처리 
	function add(reply, callback, error) {
		console.log("add reply......");
		alert("등록");
		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if (callback) {
					callback(result);
				}
			},
			error : function(xhr, status, er) {
				if (error) {
					error(er);
				}
			}
		})
	}
	
	// 싸이클 15 - AJAX 댓글 조회 처리 
	function get(rno, callback, error){
		$.get("/replies/" + rno + ".json", function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	
	// 싸이클 16 - AJAX 댓글 수정 처리
	function update(reply, callback, error){
		console.log("RNO : " + reply.rno);
		
		$.ajax({
			type : 'put',
			url : '/replies/' + reply.rno,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr){
				if(callback){
					callback(result);
				}
			},
			error : function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
	}
	
	// 싸이클 17 - AJAX 댓글 삭제 처리
	function remove(rno, callback, error) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + rno,
			success : function(deleteResult, status, xhr){
				if (callback){
					callback(deleteResult);
				}
			},
			error : function(xhr, status, er){
				if (error){
					error(er);
				}
			}
		});
	}
	
	// 싸이클 13 - AJAX 댓글 리스트 날짜 포멧 처리
	function displayTime(timeValue) {
		var today = new Date();
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		var str = "";
		
		if (gap < (1000 * 60 * 60 * 24)){
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [ (hh > 9 ? '' : '0') + hh, ':', 
					 (mi > 9 ? '' : '0') + mi, ':', 
					 (ss > 9? '' : '0') + ss ].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
			
			return [ yy, '/', (mm > 9 ? '' : '0') + 
					 mm, '/', (dd > 9 ? '' : '0') + 
					 dd ].join('');
			
		}
	};
	
	return {
		getList : getList,
		add : add,
		get : get,
		update : update,
		remove : remove,
		displayTime : displayTime
	};
})();