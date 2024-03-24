<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시글 등록</title>
<link rel="shortcut icon" href="/img/favicon.png">
<link rel="stylesheet" href="/css/common.css" />

<style>
   td   			 { padding :10px; }

   input             { height: 32px;  }
   #table            { width : 100%;  } 
   #table  th        { width : 20%;  }  
   #table  td        { width : 80%;  }  
   input[type=text]  { width : 100%; }
   textarea          { width : 100%; height : 400px; padding:10px;} 
      
</style>

</head>
<body>
  <main>
   <!--  메뉴 목록 -->
   <%@include file="/WEB-INF/include/menus.jsp" %>
 
  <form action="/Board/Write" method="POST" >
  <input type="hidden"  name="menu_id" value="${ menu_id }" />
 
  <table id="table">  
   <caption>새 글 쓰기</caption> 
   <tr>
     <th>제목</th>
     <td><input type="text" name="title"  /></td>
   </tr> 
   <tr>
     <th>글쓴이</th>
     <td><input type="text" name="writer" /></td>
   </tr> 
   <tr>
     <th>내용</th>
     <td><textarea name="cont" maxlength="1000"></textarea></td>
   </tr>   
   <tr>     
     <td colspan="2">
     <input type="submit" value="작성" />
     </td>
   </tr> 
  </table>
  </form>
  </main>
</body>
</html>








