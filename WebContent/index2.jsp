<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="user-scalable=0, width=device-width, initial-scale=1.0,  minimum-scale=1.0, maximum-scale=1.0">
<title>LivePerson example page: Full</title>
<script type="text/javascript">
	
	var lpTag = lpTag || {};
	lpTag.vars = lpTag.vars || [];
	lpTag.dbs = lpTag.dbs || [];
	lpTag.section = 'default';

	var arrLPvars = [ 
		             	
	// 'unit' is required in most deployments
	   	{ scope:'page', name:'unit', value:'sales' },
	   	// 'language' is required in deployments that do, or may in the future, need multi-lingual support
	   	{ scope:'session', name:'language', value:'english' }
	   	// You can add as many other variables as you need
	   
   	];
   	lpTag.vars.push(arrLPvars);
</script>


</head>
<body>
	<!-- Include LivePerson tag file -->
	<script type="text/javascript" src="resources/le-mtagconfig.js"></script>
	


	<!-- Button to demonstrate sending variables on click through a function -->
	<div style ="margin: 0 auto; width: 200px">
	<form action="basic.jsp">
		<input type="submit" value="Basic"></input>
	</form>
	<form action="advanced.jsp">
		<input type="submit" value="Advanced"></input>
	</form>
    </div>
    <script type="text/javascript">
		/* LP Mobile JS Configuration */
		var _LP_CFG_ = {
			    app_id : "87926074",
			    options : {
			      // All configuration options defined in here
			      chatDisabled : true 
			    }
		};
		/* End of Configuration */
	</script>	
</body>
</html>