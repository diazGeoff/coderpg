class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?"{
            constraints {
                // apply constraints here
            }
        }
        "/$controller/quests/$id?/$action?/$missionId?"{
        }
        "/"(view: "index")
        "500"(view:'/error')
    }
}
