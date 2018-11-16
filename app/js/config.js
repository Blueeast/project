require.config({
	baseUrl:"/",
	paths:{
		"header": "module/header",
		"footer": "module/footer",
		"sideshow": "module/sideshow",
		"template": "libs/template-web",
		"list": "module/list",
		"hot": "module/hot",
		"paging": "module/paging",
		"jquery": "libs/jquery/jquery-1.11.3",
		"jquerycookie":"libs/jquery/jquery.cookie",
		"bootstrap": "libs/bootstrap/js/bootstrap",
		"tools":"libs/tools"
	},
	shim:{
		"bootstrap":{
			deps:["jquery"]
		}
	}
})
