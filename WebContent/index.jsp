<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%
	String siteId = request.getParameter("siteId");
	if(siteId==null) siteId="";
	request.setAttribute("siteId", siteId);
%>
<t:template>
	<jsp:body>
		
		<script type="text/javascript">
			/*
			var siteIdClick = function() {
				var sid = $('#Id').val();
				if (sessionStorage.siteId) {
				    sessionStorage.siteId = sid;
				} else {
				    sessionStorage.siteId = sid;
				}
				location.reload();
			}
			*/
		</script>
	 <b>Site Id: </b>
	 <form>
	 	<input type="text" value="${siteId}" id="Id" name="Id">
  		<input type="button" value="Submit" onclick="siteIdClick()">
	</form>
    </jsp:body>
</t:template>
<script type="text/javascript">
	/* LP Mobile JS Configuration */
	/*
	var _LP_CFG_ = {
		app_id : sessionStorage.siteId,
		options : {
			// All configuration options defined in here
			chatDisabled : true
		}

	};
	*/
	/* End of Configuration */
</script>