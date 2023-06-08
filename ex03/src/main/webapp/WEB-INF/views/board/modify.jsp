<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="includes/header.jsp"%>

<form role="from" action="/board/modify" method="post">

	<input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
	<input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
	<div class="from-group">
		<label>Bno</label> <input class="from-control" name='bno'
			value='<c:out value="${board.bno }"/>' readonly="readonly">
	</div>

	<div class="from-group">
		<label>Title</label> <input class="from-control" name='title'
			value='<c:out value="${board.title }"/>'>
	</div>

	<div class="from-group">
		<label>Text area</label>
		<textarea class="from-control" rows="3" name='content'><c:out
				value="${board.content }" /></textarea>
	</div>

	<div class="from-group">
		<label>Writer</label> <input class="from-control" name='writer'
			value='<c:out value="${board.writer }"/>' readonly="readonly">
	</div>

	<div class="from-group">
		<label>Bno</label> <input class="from-control" name='bno'
			value='<c:out value="${board.bno }"/>' readonly="readonly">
	</div>

	<div class="from-group">
		<label>Title</label> <input class="from-control" name='title'
			value='<c:out value="${board.title }"/>' readonly="readonly">
	</div>

	<div class="from-group">
		<label>Text area</label>
		<textarea class="from-control" rows="3" name='content'
			readonly="readonly"><c:out value="${board.content }" /></textarea>
	</div>

	<div class="from-group">
		<label>RegDate</label> <input class="from-control" name='regDate'
			value='<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}" />'
			readonly="readonly">
	</div>

	<div class="form-group">
		<label>Update Date</label> <input class="form-control"
			name='updateDate'
			value='<fmt:formatDate pattern = "yyyy/MM/dd" value= "${board.updateDate}" />'
			readonly="readonly">
	</div>

	<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
	<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
	<button type="submit" data-oper='list' class="btn btn-info">List</button>
</form>

<script type="text/javascript">
        $(document).ready(function() {

            var formObj = $("form");

            $('button').on("click", function(e) {

                e.preventDefault();

                var operation = $(this).data("oper");

                /* console.log(operation); */
                alert(operation);

                if (operation === 'remove') {
                    formObj.attr("action", "/board/remove");

                } else if (operation === 'list') {
                    //move to list
                    formObj.attr("action", "/board/list").attr("method", "get");

                    var pageNumTag = $("input[name='pageNum']").clone();
                    var amountTag = $("input[name='amount']").clone();
                    var keywordTag = $("input[name='keyword']").clone();
                    var typeTag = $("input[name='type']").clone();
    
                    
                    formObj.empty();

                    formObj.append(pageNumTag);
                    formObj.append(amountTag);
                    formObj.append(keywordTag);
                    formObj.append(typeTag);
                }

                formObj.submit();
            });

        });
    </script>