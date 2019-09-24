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
			<li><a href="/board/list"><i class="fa fa-dashboard fa-fw"></i>
					Dashboard</a></li>
			<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
					Charts<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Flot Charts</a></li>
					<li><a href="#">Morris.js Charts</a></li>
				</ul> <!-- /.nav-second-level --></li>
			<li><a href="/board/list"><i class="fa fa-table fa-fw"></i>
					Tables</a></li>
			<li><a href="#"><i class="fa fa-edit fa-fw"></i>
					Forms</a></li>
			<li><a href="#"><i class="fa fa-wrench fa-fw"></i> UI
					Elements<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Panels and Wells</a></li>
					<li><a href="#">Buttons</a></li>
					<li><a href="#">Notifications</a></li>
					<li><a href="#">Typography</a></li>
					<li><a href="#">Grid</a></li>
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
					<li><a href="#">Blank Page</a></li>
					<li><a href="#">Login Page</a></li>
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
			<h1 class="page-header">게시판</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-11">
			<div class="panel panel-default"><button id="regBtn" type="button" style="float: right;"  class="btn btn-primary">게시글 작성</button>
				<div class="panel-heading">게시판 목록</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<!-- <table class="table table-striped table-bordered table-hover"
							id="dataTables-example"> -->
							<table class="table table-striped table-bordered table-hover">
							<thead>
								<tr>
									<!-- <th>#번호</th> -->
									<th>제목</th>
									<!-- <th>작성자</th> -->
									<!-- <th>작성일</th>
									<th>수정일</th> -->
								</tr>
							</thead>

							<tbody>
			                  <c:forEach items="${list }" var="board">
			                    <tr>
			                      <!-- <td></td> -->
			                      <td>
			                      <font color="Gray"><c:out value="${board.bno }"/>&nbsp;/&nbsp;<c:out value="${board.writer }"/>&nbsp;/&nbsp;<fmt:formatDate pattern="yyyy-MM-dd"  value="${board.regDate }" /></font><br/><font size="3px">
			                        <a class='move' href="<c:out value="${board.bno }"/>">
			                           <c:out value="${board.title }"/>
			                        </a>
			                      </font></td>
			                      <%-- <td width="100px"><font size="3px"></font><br/><font color="gray" size="2px"><fmt:formatDate pattern="yyyy-MM-dd"  value="${board.regDate }" /><br/><fmt:formatDate pattern="yyyy-MM-dd"  value="${board.updateDate }" /></font></td> --%>
			                   <!--    <td></td>
			                      <td></td> -->
			                    </tr>
			                  </c:forEach>

							</tbody>
						</table>
												<!-- 싸이클 7 : 검색 조건 처리 검색 폼-->
						<div class="row">
							<div class="col-lg-12">
								<form id="searchForm" action="/board/list" method="get">
									<select name="type">
										<option value="" <c:out value="${ pageMaker.cri.type == null? 'selected':''}"/>>--</option>
										<option value="T" <c:out value="${ pageMaker.cri.type eq 'T'? 'selected':''}"/>>제목</option>
										<option value="C" <c:out value="${ pageMaker.cri.type eq 'C'? 'selected':''}"/>>내용</option>
										<option value="W" <c:out value="${ pageMaker.cri.type eq 'W'? 'selected':''}"/>>작성자</option>
										<option value="TC" <c:out value="${ pageMaker.cri.type eq 'TC'? 'selected':''}"/>>제목 or 내용</option>
										<option value="TW" <c:out value="${ pageMaker.cri.type eq 'TW'? 'selected':''}"/>>제목 or 작성자</option>
										<option value="TWC" <c:out value="${ pageMaker.cri.type eq 'TWC'? 'selected':''}"/>>제목 or 내용 or 작성자</option>
									</select>
									
									<input type="text" name="keyword" value='<c:out value="${pageMaker.cri.keyword }"/>'/>
									<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"/>'>
									<input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount }"/>'>
									
									<button class="btn btn-default">검색</button>
								</form>
							</div>
						</div>
						<div class="pull-right">
							<ul class="pagination">
								
								<c:if test="${pageMaker.prev }">
								<li class="paginate_button previous">
									<a href="${pageMaker.startPage -1}">Previous</a>
								</li> 
								</c:if>
								
								<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
								
									<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" :""} ">
										<a href="${num }">${num}</a>
									</li>
								</c:forEach>
								
								<c:if test="${pageMaker.next }">
									<li class="paginate_button next">	
										<a href="${pageMaker.endPage +1 }">Next</a>
									</li>
								</c:if>
								
							</ul>
						</div>
						
                <!-- 모달 추가 -->													
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLable" aria-hidden="true">													
                	<div class="modal-dialog">												
                		<div class="modal-content">											
                			<div class="modal-header">										
                				<h4 class="modal-title" id="myModalLabel">모달 창</h4>									
                			    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>										
                			</div>										
                			<div class="modal-body">처리가 완료되었습니다.</div>										
                			<div class="modal-footer">										
                				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>									
                				<button type="button" class="btn btn-primary">변경사항 저장</button>									
                			</div>										
                		</div>											
                	</div>												
                </div>													
                <!-- 모달 끝 -->													

					</div>
					<!-- /.table-responsive -->

				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>

</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<%@ include file="../includes/footer.jsp"%>

				<!-- 싸이클 7 - 검색어 히든 파라미터 -->
				<form id="actionForm" action="/board/list" method="get">
									<input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"/>'>
									<input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount }"/>'>
									<input type="hidden" name="type" value='<c:out value="${pageMaker.cri.type }"/>'/>
									<input type="hidden" name="keyword" value='<c:out value="${pageMaker.cri.keyword }"/>'/>
				</form>
                <!-- script -->									
				<script type="text/javascript">					
					$(document).ready(function(){				
						var result = '<c:out value="${result}"/>';		
						checkModal(result);			
									
						history.replaceState({}, null, null);			
									
						function checkModal(result){			
							if (result === '' || history.state){		
								return;	
							}		
									
							if (parseInt(result) > 0){		
								$(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");	
							}		
									
							//$("#myModal").modal("show");		
									
						}			
									
						
						$("#regBtn").on("click", function(){			
							self.location = "/board/register";
						});	
						
						var actionForm = $("#actionForm");
						
						$(".paginate_button a").on("click", function(e){
							e.preventDefault();
							console.log('click');
							actionForm.find("input[name='pageNum']").val($(this).attr("href"));
							actionForm.submit();
						});
						
						$(".move").on("click",function(e){
							e.preventDefault();
							actionForm.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+"'>");
							actionForm.attr("action","/board/get");
							actionForm.submit();
						});
						
					});			
					
					var searchForm = $("#searchForm");
					
					$("#searchForm button").on("click", function(e){
						if (!searchForm.find("option:selected").val()){
							alert("검색종류를 선택하세요.");
							return false;
						}
						if (!searchForm.find("input[name='keyword']").val()){
							alert("키워드를 선택하세요.");
							return false;
						}
						
						searchForm.find("input='pageNum'").val("1");
						e.preventDefault();
						
						searchForm.submit();
					});
				</script>					
