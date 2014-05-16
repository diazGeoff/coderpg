class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: "player")
        "500"(view:'/error')
    }
}
