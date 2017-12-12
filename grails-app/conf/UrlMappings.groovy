import ideaboardsproject.Dashboard
import org.apache.tools.ant.taskdefs.Get

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
        "/api/savestickynote"(controller: "Dashboard", action: "savestickynote")
        "/api/ajaxdata"(controller: "API",action: "ajaxdata")
        "/api/deletestickynote"(controller: "dashboard", action: "deletestickynote")
        "/api/deletestickynote1"(controller: "dashboard", action: "deletestickynote1")
        "/api/deletestickynote2"(controller: "dashboard", action: "deletestickynote2")
        "/api/deletestickynote3"(controller: "dashboard", action: "deletestickynote3")
        "/api/deletestickynote4"(controller: "dashboard", action: "deletestickynote4")
        "/api/updatestickynote4"(controller: "dashboard", action: "updatestickynote4")
        "/api/updatestickynote3"(controller: "dashboard", action: "updatestickynote3")
        "/api/updatestickynote2"(controller: "dashboard", action: "updatestickynote2")
        "/api/updatestickynote1"(controller: "dashboard", action: "updatestickynote1")
        "/api/updatestickynote"(controller: "dashboard", action: "updatestickynote")
        "/api/example"(controller: "dashboard", action: "example")
	}
}
