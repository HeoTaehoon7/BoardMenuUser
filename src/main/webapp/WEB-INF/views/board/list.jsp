<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>List</title>
<link rel="shortcut icon" href="/img/favicon.png">
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>

<style>

  th, td { padding: 10px;   }

  #table td:not([colspan]) { text-align: center;  } 
  
  #table tr:first-child        { 
      background : black; 
      color      : white;  
      td {
      	  border : 1px solid white;
      }
  }
  #table tr:nth-child(2) > td  { text-align : right;  }
  
  #table th:nth-of-type(1) { width:100px;  }
  #table th:nth-of-type(2) { width:500px;  }
  #table th:nth-of-type(3) { width:100px;  }
  #table th:nth-of-type(4) { width:120px;  }
  #table th:nth-of-type(5) { width:100px;  }
   
  #table td:nth-of-type(2) { text-align: left;  }
</style>

</head>
<body>
   <main>
   
   <!--  메뉴 목록 -->
   <%@include file="/WEB-INF/include/menus.jsp" %>
   
   <!--  게시물 목록 -->
   <table  id="table">
   <caption>
   	  <h2>${ name } 게시판</h2>   
   </caption>   
   <tr>
      <th>번호</th>
      <th>제목</th>  
      <th>글쓴이</th> 
      <th>날짜</th>      
      <th>조회수</th>
   </tr>
   
   <tr>
      <td colspan="5"  class="right">
        <a href="/Board/WriteForm/${ param.menu_id }">새 글쓰기</a>
      </td>
   </tr>
   
   <c:forEach  var="board"  items="${ boardList }" >
       
     <tr>
       <td>
            ${ board.idx }
       </td>
       <td>
            <a href="/Board/View?idx=${ board.idx }">${ board.title }</a>
       </td>
       <td>${ board.writer    }</td>
       <td>${ board.regdate   }</td>
       <td>${ board.readcount }</td>
     </tr>   
   </c:forEach>
   <tr>   
   </tr>    
   
   </table>
   
   </main>
</body>
</html>















