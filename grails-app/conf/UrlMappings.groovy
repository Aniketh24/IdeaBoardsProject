import ideaboardsproject.Dashboard

class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
        "500"(view:'/error')
        "/api/other"(controller: "Dashboard", action: "other")

        "/api/dashboard"(controller: "Dashboard", action: "dashboard")
        "/api/save"(controller: "Dashboard", action: "save")
	}
}
