<%@page import="member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% MemberVO member = (MemberVO) session.getAttribute("login"); %>
<form method="post" action="MemberInsertServ">
	<div>
	<P><label for="id">���̵� (���ڸ� ����)</label> : <INPUT type="text" id="id" name="id" size="20" value="<%=member.getId() %>" required></P>
	<P><label for="password">��й�ȣ</label> : <INPUT type="password" name="pw" id="password" value="<%=member.getPw() %>" size="20"></P>
	</div>
	
<div>
	<INPUT type="radio" name="gender" value="man" checked <%if("man".equals(member.getGender())){out.print("checked='checked'");}%>>����&nbsp;
	<INPUT type="radio" name="gender" value="woman" <%if("woman".equals(member.getGender())){out.print("checked='checked'");}%>>����
</div>
	<label for="job">����</label>
<div>
<SELECT id="job" name="job" size="4">
<OPTION value="select" selected <%if("select".equals(member.getJob())){out.print("selected='selected'");}%>>����</OPTION>
<OPTION value="inoccupation" <%if("inoccupation".equals(member.getJob())){out.print("selected='selected'");}%>>����</OPTION>
<OPTION value="jobless" <%if("jobless".equals(member.getJob())){out.print("selected='selected'");}%>>���</OPTION>
<OPTION value="Home security guard" <%if("Home security guard".equals(member.getJob())){out.print("selected='selected'");}%>>���� ����</OPTION>
<OPTION value="housewife" <%if("housewife".equals(member.getJob())){out.print("selected='selected'");}%>>�����ֺ�</OPTION>
</SELECT>
</div>
<div>
�� <input type="checkbox" name="hobby" value="basket">
�౸<input type="checkbox" name="hobby" value="football">
����ñ�<input type="checkbox" name="hobby" value="ignore">
</div>
<div>
<TEXTAREA name="Motive" rows="5" cols="50">
���Ե���
</TEXTAREA>
</div>

<div>
<P>���ϼ��� ����<INPUT type="checkbox" name="mail" value="Y" checked></P>
</div>
<div>
<button type = "submit" >���</button>&nbsp;&nbsp;
<button type = "reset" name = "reset" >����</button>
</div>
</form>
</body>
</html>