<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>					
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>					

<%@ include file="../includes/header.jsp"%>

<ul class="nav navbar-top-links navbar-right">
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-messages">
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
					</div>
					<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque eleifend...</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
					</div>
					<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque eleifend...</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<strong>John Smith</strong> <span class="pull-right text-muted">
							<em>Yesterday</em>
						</span>
					</div>
					<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Pellentesque eleifend...</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>Read
						All Messages</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-messages --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-tasks">
			<li><a href="#">
					<div>
						<p>
							<strong>Task 1</strong> <span class="pull-right text-muted">40%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-success" role="progressbar"
								aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
								style="width: 40%">
								<span class="sr-only">40% Complete (success)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 2</strong> <span class="pull-right text-muted">20%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-info" role="progressbar"
								aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
								style="width: 20%">
								<span class="sr-only">20% Complete</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 3</strong> <span class="pull-right text-muted">60%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-warning" role="progressbar"
								aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
								style="width: 60%">
								<span class="sr-only">60% Complete (warning)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<p>
							<strong>Task 4</strong> <span class="pull-right text-muted">80%
								Complete</span>
						</p>
						<div class="progress progress-striped active">
							<div class="progress-bar progress-bar-danger" role="progressbar"
								aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
								style="width: 80%">
								<span class="sr-only">80% Complete (danger)</span>
							</div>
						</div>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>See
						All Tasks</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-tasks --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-alerts">
			<li><a href="#">
					<div>
						<i class="fa fa-comment fa-fw"></i> New Comment <span
							class="pull-right text-muted small">4 minutes ago</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-twitter fa-fw"></i> 3 New Followers <span
							class="pull-right text-muted small">12 minutes ago</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-envelope fa-fw"></i> Message Sent <span
							class="pull-right text-muted small">4 minutes ago</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-tasks fa-fw"></i> New Task <span
							class="pull-right text-muted small">4 minutes ago</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					<div>
						<i class="fa fa-upload fa-fw"></i> Server Rebooted <span
							class="pull-right text-muted small">4 minutes ago</span>
					</div>
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>See
						All Alerts</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-alerts --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-user">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> User
					Profile</a></li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
			<li class="divider"></li>
			<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
					Logout</a></li>
		</ul> <!-- /.dropdown-user --></li>
	<!-- /.dropdown -->
</ul>
<!-- /.navbar-top-links -->

<div class="navbar-default navbar-static-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="side-menu">
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Search...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<li><a href="index.html"><i class="fa fa-dashboard fa-fw"></i>
					Dashboard</a></li>
			<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
					Charts<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="flot.html">Flot Charts</a></li>
					<li><a href="morris.html">Morris.js Charts</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a href="tables.html"><i class="fa fa-table fa-fw"></i>
					Board Modify</a></li>
			<li><a href="forms.html"><i class="fa fa-edit fa-fw"></i>
					Forms</a></li>
			<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
					Elements<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="panels-wells.html">Panels and Wells</a></li>
					<li><a href="buttons.html">Buttons</a></li>
					<li><a href="notifications.html">Notifications</a></li>
					<li><a href="typography.html">Typography</a></li>
					<li><a href="grid.html">Grid</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
					Multi-Level Dropdown<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Second Level Item</a></li>
					<li><a href="#">Third Level <span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
							<li><a href="#">Third Level Item</a></li>
						</ul> <!-- /.nav-third-level --></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a href="#"><i class="fa fa-files-o fa-fw"></i> Sample
					Pages<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="blank.html">Blank Page</a></li>
					<li><a href="login.html">Login Page</a></li>
				</ul> <!-- /.nav-second-level --></li>
		</ul>
		<!-- /#side-menu -->
	</div>
	<!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
</nav>

<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">게시판 수정</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            게시글 수정 페이지
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <div class="table-responsive">
						<form role="form" action="/board/modify" method="post">											
						
						<!-- 싸이클 6-2 : pageNum, amount 히든 파라미터  -->
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
						<!-- 싸이클 7 : type, keyword 히든 파라미터 -->
						<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'>
						<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
						
						<div class="form-group">											
							<label>게시글 번호</label>										
							<input class="form-control" name="bno" value="<c:out value="${board.bno }"/>" readonly="readonly">										
						</div>											
						
						<div class="form-group">											
							<label>작성자</label>										
							<input class="form-control" name="writer" value="<c:out value="${board.writer }"/>"  readonly="readonly">										
						</div>
																	
						<div class="form-group">											
							<label>제목</label>										
							<input class="form-control" name="title" value="<c:out value="${board.title }"/>">										
																	
						</div>											
																	
						<div class="form-group">											
							<label>내용</label>										
							<textarea class="form-control" rows="10"  name="content"><c:out value="${board.content }"/></textarea>
						</div>											
						
						<div class="form-group">																	
							<label>등록일자</label>																
							<input class="form-control" name="regDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regDate }"/>'  readonly="readonly">																
						</div>																	
																							
						<div class="form-group">																	
							<label>수정일자</label>																
							<input class="form-control" name="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updateDate }"/>'  readonly="readonly">																
						</div>																	
												
						<button type="submit" data-oper='modify' class="btn btn-primary">수정						
						</button>								
						<button type="submit" data-oper='remove' class="btn btn-danger">삭제						
						</button>								
						<button type="submit" data-oper='list' class="btn btn-info">목록						
						</button>								
					
					</form>	
                         </div>
                         
					</div>
					<!-- /.table-responsive -->
                            
                        </div>
                        <!-- /.panel-body -->
                        		<div class="bigPictureWrapper">
			<div class="bigPicture">
			</div>
		</div>
		
		<div class="row">
			<!-- 싸이클 21 - 첨부파일 리스트 -->
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Files</div>
					<div class="panel-body">
						<!-- 싸이클 23 - 게시물 교체 입력 영역 -->
						<div class="form-group uploadDiv">
							<input type="file" name="uploadFile" multiple="multiple">
						</div>
						<div class="uploadResult">
							<ul>
							</ul>
						</div>
					</div>
				</div>
			</div>
			
		</div>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
                
            </div>
            
            <!-- /.row -->
            
            <!-- /.row -->
            
            <!-- /.row -->
            
            <!-- /.row -->
        </div>
        
        <!-- /#page-wrapper -->
		<%@ include file="../includes/footer.jsp"%>
<!-- 삭제 버튼 클릭 시 처리	 -->
<script type="text/javascript">									
	$(document).ready(function(){								
		var formObj = $("form");							
		$('button').on("click", function(e){							
			e.preventDefault();						
			var operation = $(this).data("oper");						
			console.log(operation);
			
			
			if(operation === 'remove'){	 // remove 버튼 기능				
				formObj.attr("action", "/board/remove");
			
			}else if(operation === 'list'){	  // list 버튼 기능						
				//move to list
				
				formObj.attr("action","/board/list").attr("method","get");	
			
                var pageNumTag = $("input[name='pageNum']").clone();
                var amountTag = $("input[name='amount']").clone();
                /* 싸이클 7 - 검색어 */
                var keywordTag = $("input[name='keyword']").clone();
                var typeTag = $("input[name='type']").clone();           
                
                formObj.empty();					
                formObj.append(pageNumTag);
                formObj.append(amountTag);
                /* 싸이클 7 - 검색어 */
                formObj.append(keywordTag);
                formObj.append(typeTag);
                
			}else if (operation === 'modify'){
				console.log("submit clicked");
				var str = "";
				
				$(".uploadResult ul li").each(function(i, obj){
					var jobj = $(obj);
					console.dir(jobj);
					str += "<input type='hidden' name='attachList[" + i + "].fileName' value='" + jobj.data("filename") + "'>";
					str += "<input type='hidden' name='attachList[" + i + "].uuid' value='" + jobj.data("uuid") + "'>";
					str += "<input type='hidden' name='attachList[" + i + "].uploadPath' value='" + jobj.data("path") + "'>";
					str += "<input type='hidden' name='attachList[" + i + "].fileType' value='" + jobj.data("type") + "'>";
					
				});
				formObj.append(str).submit();
			}
			formObj.submit();				
		});	
		
		$(".uploadResult").on("click", "button", function(e){
			console.log("delete file");
			if(confirm("Remove this file? ")){
				var targetLi = $(this).closest("li");
				targetLi.remove();
			}
		});
		
		(function(){
			var bno = '<c:out value="${board.bno}"/>';
			
			$.getJSON("/board/getAttachList", {bno:bno}, function(arr){
				console.log(arr);
				var str = "";
				
				$(arr).each(function(i, attach){
					//image type
					 if(attach.fileType){
						var fileCallPath = encodeURIComponent(attach.uploadPath + "/s_" + attach.uuid + "_" + attach.fileName);
						
						str += "<li data-path='" + attach.uploadPath + "' data-uuid='" + attach.uuid + "' data-filename='" + attach.fileName + "' data-type='" + attach.fileType + "'>";
						str += "  <div>";
						str += "    <span>" + attach.fileName + "</span>";
						str += "    	<button type='button' data-file=\'" + fileCallPath + "\' data-type='image' class='btn btn-warning btn-circle'>";
						str += "    		<i class='fa fa-times'></i>";
						str += "        </button><br/>";
						str += "    <img src='/display?fileName=" + fileCallPath + "'>";
						str += "  </div>";
						str + "</li>"; 
					 } else{
						str += "<li data-path='"+attach.uploadPath+"' data-uuid='"+attach.uuid+"' data-filename='"+attach.fileName +"' data-type='"+attach.fileType+"'>";
						str += "  <div>";
						str += "    <span> " + attach.fileName + "</span><br/>";
						str += "      <button type='button' data-file=\'" + fileCallPath + "\' data-type='file' class='btn btn-warning btn-circle'>";
						str += "      	<i class='fa fa-times'></i>";
						str += "      </button></br>";
						str += "    <img src='/resources/img/attach.png'></a>";
						str += "  </div>";
						str + "</li>";
					}
				});
				$(".uploadResult ul").html(str);
			}); //end getjson
		})(); //end function
		
		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880 // 5MB
		
		function checkExtension(fileName, fileSize){
			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
			
			if(regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}
		$("input[type='file']").change(function(e){
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			
			for(var i = 0; i < files.length; i++){
				if(!checkExtension(files[i].name, files[i].size)){
					return false;
				}
				formData.append("uploadFile", files[i]);
			}
			
			/* 파일 업로드 액션 */
			$.ajax({
				url:'/uploadAjaxAction',
				processData:false,
				contentType:false,
				data:formData,
				type: 'POST',
				dataType:'json',
				success: function(result){
					console.log(result);
					showUploadResult(result); //업로드 결과 처리 함수
				}
			}); // $.ajax
		
			
			/* 업로드 결과 뷰 */
			function showUploadResult(uploadResultArr){
				if(!uploadResultArr || uploadResultArr.length == 0){
					return;
				}	
				
				var uploadUL = $(".uploadResult ul");
				var str = "";
					$(uploadResultArr).each(function(i, obj){
						console.log(obj)
						//image type
						if(obj.image){
							var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_" + obj.uuid + "_" + obj.fileName);
							str += "<li data-path='" + obj.uploadPath + "' data-uuid='" + obj.uuid + "' data-filename='" + obj.fileName + "' data-type='" + obj.image + "'>";
							str += "   <div>";
							str += "       <span> " + obj.fileName + "</span>";
							str += "       <button type='button' data-file=\'" + fileCallPath + "\' data-type='image' class='btn btn-warning btn-circle'>";
							str += "         <i class='fa fa-times'></i>";
							str += "       </button><br/>";
							str += "       <img src='/display?fileName=" + fileCallPath + "'>";
							str += "   </div>";
							str + "</li>";
						}else{
							var fileCallPath = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
							var fileLink = fileCallPath.replace(new RegExp(/\\/g),"/");
							
							str += "<li data-path='" + obj.uploadPath + "' data-uuid='"+ obj.uuid +"' data-filename='" + obj.fileName +"' data-type='" + obj.image +"'>";
							str += "  <div>";
							str += "    <span>" + obj.fileName + "</span>";
							str += "    <button type='button' data-file=\'" + fileCallPath + "\' data-type='file' class='btn btn-warning btn-circle'>";
							str += "      <i class='fa fa-times'></i>";
							str += "    </button><br/>";
							str += "    <img src='/resources/img/attach.png'></a>";
							str += "  </div>";
							str + "</li>";
						}
			});
					
				uploadUL.append(str);
			} // end 업로드 결과 뷰
		
	});
	});								
									
</script>	

		<style>
			.uploadResult{
				width:100%;
				background-color: gray;
			}
			
			.uploadResult ul{
				display: flex;
				flex-flow: row;
				justify-content: center;
				align-items: center;
			}
			
			.uploadResult ul li {
				list-style: none;
				padding: 10px;
				align-content: center;
				text-align: center;
			}
			
			.uploadResult ul li span {
				color:white;
			}
			
			.bigPictureWrapper {
				position: absolute;
				display: none;
				justify-content: center;
				align-items: center;
				top: 0%;
				width: 100%;
				height: 100%;
				background-color: gray;
				z-index: 100;
				background:rgba(255,255,255,0.5);
			}
			.bigPicture {
				position: relative;
				display: flex;
				justify-content: center;
				align-items: center;
			}
			
			.bigPicture img {
				width: 600px;
			}
		</style>