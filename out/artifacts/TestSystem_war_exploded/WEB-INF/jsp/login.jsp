<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

<style type="text/css">
#UpdatePanel1 {
	padding: 118px;
}

#school {
	width: 137px;
}
</style>
</head>
<body>
<font style="color: red;">${ts}</font>
	<FORM id=form1 name=form1
		action="user_login"
		method=post>

		<DIV id=UpdatePanel1>
			<DIV>
				<TABLE cellSpacing=0 cellPadding=0 width=900 align=center border=0>
					<TBODY>
						<TR>
							<TD style="HEIGHT: 105px"><IMG src="${pageContext.request.contextPath}/images/login_1.gif"
								border=0></TD>
						</TR>
						<TR>
							<TD background=${pageContext.request.contextPath}/images/login_2.jpg height=300>
								<TABLE height=300 cellPadding=0 width=900 border=0>
									<TBODY>
										<TR>
											<TD colSpan=2 height=35></TD>
										</TR>
										<TR>
											<TD width=360></TD>
											<TD>
												<TABLE cellSpacing=0 cellPadding=2 border=0>
													<TBODY>
														<TR>
															<TD style="HEIGHT: 28px" width=85>姓名：</TD>
															<TD style="HEIGHT: 28px" width=150><INPUT id=txtName
																style="WIDTH: 130px" name="user_name"></TD>
															<TD style="HEIGHT: 28px" width=370><SPAN
																id=RequiredFieldValidator3
																style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入姓名</SPAN></TD>
														</TR>
														<TR>
															<TD style="HEIGHT: 28px" width="100px">身份证：</TD>
															<TD style="HEIGHT: 28px"><INPUT id=txtPwd
																style="WIDTH: 130px" type=password name="user_identitycard"></TD>
															<TD style="HEIGHT: 28px"><SPAN
																id=RequiredFieldValidator4
																style="FONT-WEIGHT: bold; VISIBILITY: hidden; COLOR: white">请输入身份证</SPAN></TD>
														</TR>
														<TR>
															<TD style="HEIGHT: 28px">培训机构：</TD>

															<TD style="HEIGHT: 28px"><select id="school">
																	<option>春华小学</option>
																	<option>笃马小学</option>
																	<option>黑马小学</option>
															</select></TD>
															<TD style="HEIGHT: 28px">&nbsp;</TD>
														</TR>
														<TR>
															<TD colspan="2"><INPUT id=btn
                                                                                   style="BORDER-TOP-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-RIGHT-WIDTH: 0px"
                                                                                   type=image src="${pageContext.request.contextPath}/images/login_button.gif" name=btn>
																
																<img src="${pageContext.request.contextPath}/images/regist_button.png"
																style="cursor: pointer;"
																onclick="window.location.href='${pageContext.request.contextPath}/regist.jsp'">
															</TD>
														</TR>
													</TBODY>
												</TABLE>
											</TD>
										</TR>
									</TBODY>
								</TABLE>
							</TD>
						</TR>
						<TR>
							<TD><IMG src="images/login_3.jpg" border=0></TD>
						</TR>
					</TBODY>
				</TABLE>
			</DIV>
		</DIV>


	</FORM>
</body>
</html>