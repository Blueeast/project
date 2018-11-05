require.config({
	baseUrl:"/",
	paths:{
		"header": "module/header",
		"footer": "module/footer",
		"jquery": "libs/jquery/jquery-1.11.3",
		"bootstrap": "libs/bootstrap/js/bootstrap",
		"tools":"libs/tools"
	},
	shim:{
		"bootstrap":{
			deps:["jquery"]
		}
	}
})
