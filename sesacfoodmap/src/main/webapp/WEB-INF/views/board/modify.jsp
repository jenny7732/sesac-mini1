
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/resources/assets/favicon.ico" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="/resources/css/styles.css" rel="stylesheet" />
    <link href="/resources/css/sesac.css" rel="stylesheet" />
    <link href="/resources/css/get.css" rel="stylesheet" />
    <title>글 수정 페이지</title>
   
    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- List page CSS -->
    <link href="../resources/css/modify.css" rel="stylesheet" />
    
    
</head>

<body class="d-flex flex-column min-vh-100">

	<%@ include file="../includes/header.jsp" %>
    <!-- Page Content-->
    <div id="modify_body" class="container px-4 px-lg-5">
        <div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">게시글 수정</h1>
    </div>
    <!-- /.col-lg-12 -->
</div>
<!-- /.row -->


<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-default">

            <div class="panel-heading">Board Read Page</div>
            <!-- /.panel-heading -->
            <div class="panel-body">
            
                <!-- Main Form -->
                <form id="mainForm">
                    <!-- Hidden Fields -->
                    <input type="hidden" name="pageNum" value="<c:out value='${cri.pageNum}'/>">
                    <input type="hidden" name="amount" value="<c:out value='${cri.amount}'/>">
                    <input type="hidden" name="type" value="<c:out value='${cri.type}'/>">
                    <input type="hidden" name="keyword" value="<c:out value='${cri.keyword}'/>">
                    <input type="hidden" name="bno" value="<c:out value='${board.bno}'/>">
                    <input type="hidden" id="boardPassword" name="boardPassword" value="<c:out value='${board.password}'/>">
                    <input type="hidden" name="writer" value="<c:out value='${board.writer}'/>">
                    <input type="hidden" name="regDate" value="<c:out value='${board.regDate}'/>">
                    <input type="hidden" name="recommend" value="<c:out value='${board.recommend}'/>">
                    <input type="hidden" name="comments" value="<c:out value='${board.comments}'/>"> 
                    
                    
                    <!-- 음식점 이름 -->
                    <div class="form-group">
                        <label>음식점 이름</label>
                        <input class="form-control" id="rname" name="rname" value="<c:out value='${board.rname}'/>">
                    </div>
                    
                    <div class="form-group flex-container">
                    
                    <!-- 분류 -->
                    <div class="custom-item">
                        <label>분류</label>
                        <select class="form-control" name="type">
                            <option value="한식" <c:if test="${board.type == '한식'}">selected</c:if>>한식</option>
                            <option value="일식" <c:if test="${board.type == '일식'}">selected</c:if>>일식</option>
                            <option value="중식" <c:if test="${board.type == '중식'}">selected</c:if>>중식</option>
                            <option value="양식" <c:if test="${board.type == '양식'}">selected</c:if>>양식</option>
                            <option value="아시안" <c:if test="${board.type == '아시안'}">selected</c:if>>아시안푸드</option>
                            <option value="카페" <c:if test="${board.type == '카페'}">selected</c:if>>카페</option>
                            <option value="분식" <c:if test="${board.type == '분식'}">selected</c:if>>분식</option>
                            <option value="기타" <c:if test="${board.type == '기타'}">selected</c:if>>기타</option>
                        </select>
                    </div>
                    
                    <!-- 식권대장 -->
				    <div class="custom-item">
				        <label id="ticket_flex">
				            <input type="checkbox" name="ticket" ${board.ticket ? 'checked' : ''}>
				            <img id="ticketImg" src="/resources/assets/ticket-image.png" alt="식권대장" />
				        </label>
				    </div>
                    
                     <!-- 별점 -->
				    <div class="custom-item">
				        <label>별점</label>
				        <div class="rating">
				            <input type="radio" name="stars" value="5" id="5" <c:if test="${board.stars == 5}">checked</c:if>>
				            <label for="5">☆</label>
				            <input type="radio" name="stars" value="4" id="4" <c:if test="${board.stars == 4}">checked</c:if>>
				            <label for="4">☆</label>
				            <input type="radio" name="stars" value="3" id="3" <c:if test="${board.stars == 3}">checked</c:if>>
				            <label for="3">☆</label>
				            <input type="radio" name="stars" value="2" id="2" <c:if test="${board.stars == 2}">checked</c:if>>
				            <label for="2">☆</label>
				            <input type="radio" name="stars" value="1" id="1" <c:if test="${board.stars == 1}">checked</c:if>>
				            <label for="1">☆</label>
				        </div>
				    </div>
				    </div>
							
					<!-- 글 제목 -->
                    <div class="form-group">
                        <label>글 제목</label>
                        <input class="form-control" name="title" value="<c:out value='${board.title}'/>">
                    </div>
                    
                    <!-- 내용 -->
                    <div class="form-group">
                        <label>내용</label>
                        <textarea class="form-control" rows="3" name="content"><c:out value="${board.content}"/></textarea>
                    </div>
                    

                    <div class="form-group">
						<label>파일 업로드</label> 
						<input type="file" class="form-control" name="fileUpload" accept="image/*">
					</div>
                    
                    <!-- 버튼 -->
                    <button id="modifyBoard" type="button" data-bno="${board.bno}" class="btn btn-default">수정하기</button>
                    <button id="removeBoard" type="button" data-bno="${board.bno}" class="btn btn-default">삭제하기</button>
                    <button id="listBoard" type="submit" data-oper="list" class="btn btn-default">글 목록</button>
                    
                </form>

            </div>
            <!-- /.panel-body -->
        </div>
        <!-- /.panel -->
    </div>
</div>
</div>
<!-- /.row -->

<div class="modal" tabindex="-1">
         <div class="modal-dialog">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title">비밀번호 확인</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal"
                     aria-label="Close"></button>
               </div>
				<form id="modalForm">
	                <div class="modal-body">
						<div class="form-group">
							<label>비밀번호</label>
							<input type="password" class="form-control" name="password">
						</div>
						<input type="hidden" name="bno" value="${board.bno}">
					</div>
	                <div class="modal-footer">
	                    <button id="modalSubmitBtn" type="button" class="btn btn-primary">확인</button>
	                    <button type="button" class="btn btn-default modalCloseBtn" data-bs-dismiss="modal">취소</button>
	                </div>
				</form>
            </div>
         </div>
      </div>

    
      
<%@ include file="../includes/footer.jsp" %>
</body>

<script type="text/javascript">
$(document).ready(function () {
    let pmodal = $(".modal");
    let modalInputPassword = pmodal.find("input[name='password']");
    let bnoValue = `<c:out value="${board.bno}" />`;
 
    let modalSubmitBtn = $("#modalSubmitBtn");

    // 수정하기 버튼 클릭 시
    $("#modifyBoard").on("click", function (e) {
    	e.preventDefault();  // 기본 동작 방지
       /* e.preventDefault();

        modalInputPassword.val(""); // 비밀번호 초기화
        pmodal.data("bno", bnoValue);
        
        pmodal.data("operation", "modify"); // 작업 설정
        pmodal.show();  */
        console.log("터버튼누름");
        console.log($("#mainForm").serialize());

        $("#mainForm").attr("action", "/board/modify");
        $("#mainForm").attr("method", "post");
        //$("#mainForm").submit(); 
    });

    // 삭제하기 버튼 클릭 시
    $("#removeBoard").on("click", function (e) {
        e.preventDefault();

        modalInputPassword.val(""); // 비밀번호 초기화
        pmodal.data("bno", bnoValue);
        pmodal.data("operation", "remove"); // 작업 설정
        pmodal.show();
    });

    modalSubmitBtn.click(function (e) {
        
        let operation = pmodal.data("operation");
        let modalForm = $("#modalForm");
        let mainForm = $("#mainForm");

        if (operation === "modify") {
        	// 모달에서 비밀번호 값 가져오기
            var password = $('#password').val();
            
            // mainForm에 hidden input으로 modal 데이터 추가
            var hiddenPasswordInput = $('<input>')
                .attr('type', 'hidden')
                .attr('name', 'password')
                .val(password);

            // mainForm에 modal 데이터 추가
            $('#mainForm').append(hiddenPasswordInput);

            // 폼 제출
            $('#mainForm').submit();  // 폼 전송
            modalForm.attr("action", "/board/modify");
            modalForm.attr("method", "post");
            console.log("modify submitted!");
            modalForm.submit(); 
            
        } else if (operation === "remove") {
            modalForm.attr("action", "/board/remove");
            modalForm.attr("method", "post");

            modalForm.submit();  
        }
        
    });

    let msg = '${result}';
    if(msg === 'fail') {
        alert("비밀번호를 다시 확인하세요.");
    }

    // 모달 닫기 버튼 클릭 시
    $(".modalCloseBtn").click(function (e) {
        modalInputPassword.val("");
        pmodal.hide();
    });

    // 글 목록으로 이동
    $("#listBoard").on("click", function (e) {
        self.location = "/board/list";
        return;
    });
});


</script>

</html>