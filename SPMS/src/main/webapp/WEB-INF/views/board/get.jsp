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
					Board Register</a></li>
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
			<h1 class="page-header">Board View</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Board Register Page</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
						<div class="table-responsive">
						 						<!-- <form role="form" action="/board/register" method="post"> -->	
					<!-- operForm 폼 생성 -->
						<form id='operForm' action="/board/modify" method="get">
									<!-- 싸이클 7 - 조회 페이지 상 검색 처리 -->
									<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno }"/>'>
									<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
									<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
									<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'/>
									<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'/>
						</form>
																						
						<div class="form-group">											
							<label>Bno</label>										
							<input class="form-control" name="bno" value="<c:out value="${board.bno }"/>" readonly="readonly">										
																	
						</div>											
																	
						<div class="form-group">											
							<label>Title</label>										
							<input class="form-control" name="title" value="<c:out value="${board.title }"/>" readonly="readonly">										
																	
						</div>											
																	
						<div class="form-group">											
							<label>Text area</label>										
							<textarea class="form-control" rows="3"  name="content" readonly="readonly"><c:out value="${board.content }"/></textarea>
						</div>											
																	
						<div class="form-group">											
							<label>Writer</label>										
							<input class="form-control" name="writer" value="<c:out value="${board.writer }"/>"  readonly="readonly">										
						</div>											
																	
						<button data-oper='modify' class="btn btn-primary">Modify					
							<%-- <a href="/board/modify?bno=<c:out value="${board.bno }" /> " style="color: white"></a>	 --%>									
						</button>											
						<button data-oper='list' class="btn btn-info">List										
							<!-- <a href="/board/list" style="color: white"></a>	 -->									
						</button>
															
					<!-- </form> -->												
					<form id='operForm' action="/board/modify" method="get">
						<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno }"/>'>
					</form>
							 
					</div>
					<!-- /.table-responsive -->

				</div>
				<!-- /.panel-body -->
			</div>
					<!-- 싸이클 13 - 댓글 영역 생성 -->
		<div class="panel panel-default">
			<!-- 싸이클  -->
			<!-- 
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i> Reply
			</div>
			 -->
			<!-- 싸이클 14 - 댓글 작성 영역 생성 -->
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i> Reply
				<button id='addReplyBtn' class="btn btn-primary btn-xs pull-right">New
					Reply</button>
			</div>

			<div class="panel-body">
				<ul class="chat">
					<li class="left clearfix" data-rno='12'>
						<div>
							<div class="header">
								<strong class="primary-font">minokuma</strong> <small
									class="pull-right text-muted">2019-09-23</small>
							</div>
							<p>Good Job!</p>
						</div>
					</li>
				</ul>
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


<!-- 싸이클 14 - 댓글 작성 모달 추가 -->
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label>Reply</label>
					<input class="form-control" name="reply" value="New Reply!!">
				</div>
				<div class="form-group">
					<label>Replyer</label>
					<input class="form-control" name="replyer" value="New Replier">
				</div>
				<div class="form-group">
					<label>Reply Date</label>
					<input class="form-control" name="replyDate" value="">
				</div>
			</div>
			<div class="modal-footer">
				<button id='modalModBtn'  type="button" class="btn btn-warning" data-dismiss="modal">Modify</button>
				<button id='modalRemoveBtn'  type="button" class="btn btn-danger" data-dismiss="modal">Remove</button>
				<button id='modalRegisterBtn'  type="button" class="btn btn-primary" data-dismiss="modal">Register</button>
				<button id='modalCloseBtn'  type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- 싸이클 13 - reply.js-->
<script type="text/javascript" src="/resources/js/reply.js"></script>

<!-- operForm 폼 컨트롤 -->
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var operForm = $("#operForm");
						$("button[data-oper='modify']").on(
								"click",
								function(e) {
									operForm.attr("action", "/board/modify")
											.submit();
								});
						$("button[data-oper='list']").on("click", function() {
							operForm.find("#bno").remove();
							operForm.attr("action", "/board/list");
							operForm.submit();
						});

						/* 싸이클 13 - 댓글 리스트 영역 */
						/* 게시글 번호(bno) 준비 */
						var bnoValue = '<c:out value="${board.bno}"/>';
						var replyUL = $(".chat");
						
						showList(1);

						function showList(page) {
							replyService
									.getList(
											{
												bno : bnoValue,
												page : page || 1
											},
											function(list) {

												var str = "";
												if (list == null
														|| list.length == 0) {
													replyUL.html("");
													return;
												}
												for (var i = 0, len = list.length || 0; i < len; i++) {
													str += "<li class='left clearfix' data-rno='" + list[i].rno + "'>";
													str += "   <div>";
													str += "      <div class='header'>";
													str += "         <strong class='primary-font'>"
															+ list[i].replyer
															+ "</strong>";
													// str += "         <small class='pull-right text-muted'>" + list[i].replyDate + "</small>";
													// 싸이클 13 - 날짜 포멧 사용
													str += "         <small class='pull-right text-muted'>"
															+ replyService
																	.displayTime(list[i].replyDate)
															+ "</small>";
													str += "      </div>";
													str += "      <p>"
															+ list[i].reply
															+ "</p>";
													str += "   </div>";
													str += "</li>";
												}
												replyUL.html(str);
											});
						} //end showList 
						
						
						/* 싸이클 14 - 모달 등록창 설정  */
						var modal = $(".modal");
						var modalInputReply = modal.find("input[name='reply']");
						var modalInputReplyer = modal.find("input[name='replyer']");
						var modalInputReplyDate = modal.find("input[name='replyDate']");
						
						
						var modalModBtn = $("#modalModBtn");
						var modalRemoveBtn = $("#modalRemoveBtn");
						var modalRegisterBtn = $("#modalRegisterBtn");
						
						/* 싸이클 14 - 모달 등록창 설정 후 오픈  */
						$("#addReplyBtn").on("click",function(e){
							modal.find("input").val("");
							modalInputReplyDate.closest("div").hide();
							modal.find("button[id != 'modalCloseBtn']").hide();
							
							modalRegisterBtn.show();
							
							$(".modal").modal("show");
						});
						
						/* 싸이클 14 - 모달 등록창에서 댓글 등록 이벤트 */
						modalRegisterBtn.on("click", function(e){
							var reply = {
									reply : modalInputReply.val(),
									replyer : modalInputReplyer.val(),
									bno : bnoValue
							};
							replyService.add(reply, function(result){
								alert(result);
								
								modal.find("input").val("");
								modal.modal("hide");
								
								/* 댓글 목록 갱신 */
								showList(1);
							});
						});
						
						/* 싸이클 14 - 댓글 클릭 이벤트 처리 */
						$(".chat").on("click", "li", function(e){
							var rno = $(this).data("rno");
							console.log(rno);
						});
						
						/* 싸이클 15 - 댓글 조회 이벤트 처리 */
						$(".chat").on("click", "li", function(e){
							var rno = $(this).data("rno");
							console.log(rno);
							replyService.get(rno, function(reply){
								modalInputReply.val(reply.reply);
								modalInputReplyer.val(reply.replyer);
								modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
								modal.data("rno", reply.rno);
								
								modal.find("button[id != 'modalCloseBtn']").hide();
								modalModBtn.show();
								modalRemoveBtn.show();
								
								$(".modal").modal("show");
							});
						});
						
						/* 싸이클 16 - 댓글 수정 이벤트 처리 */
						modalModBtn.on("click", function(e){
							var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
							
							replyService.update(reply, function(result){
								alert(result);
								modal.modal("hide");
								showList(1);
							});
						});
						
						/* 싸이클 17 - 댓글 삭제 이벤트 처리 */
						modalRemoveBtn.on("click", function(e){
							var rno = modal.data("rno");
							replyService.remove(rno, function(result){
								alert(result);
								modal.modal("hide");
								showList(1);
							});
						});
						
			});
</script>
