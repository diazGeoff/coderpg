package com.coderpg

import org.springframework.dao.DataIntegrityViolationException

class PlayerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST", validate: "POST"]

    def playerService

    def beforeInterceptor = [action: this.&checkIfLoggedIn, except: ['login', 'create'] ]


    def checkIfLoggedIn(){
        if(!session.user){
            redirect controller: "player", action: "login"
            return false
        }
    }

    def index() {
        if(!session.user || session.admin) {
            session.admin ? redirect(uri: "/admin/") : redirect(action: "login", params: params)
        }
    }

    def create() {
        [playerInstance: new Player(params)]
        if(session.user){
            redirect(uri: '/player/')
        }
    }

    def login() {
        if(session.user){
            redirect(uri: '/player/')
            return
        }
        if(session.admin){
            redirect(uri: '/admin/')
            return
        }
        if(request.method == 'POST'){
            def playerInstance = new Player()
            if(Player.findByCodename(params.codename) ){
                if(params?.password == Player.findByCodename(params.codename).password ){
                    playerInstance = Player.findByCodename(params.codename)
                    session.user = playerInstance
                    redirect uri: "/player/"
                }
            }else{
                forward controller: "admin", action: "login", params: params
            }
            flash.message = "Incorrect Username/Password"
        }
    }

    def logout() {
        session.user = null
        redirect(action: "login")
    }

    def profile() {
        def player = Player.get(session.user.id)
        [player: player]
    }

    def save() {
        def playerInstance = new Player(params)
        if (!playerInstance.save(flush: true)) {
            render(view: "create", model: [playerInstance: playerInstance])
            return
        }

        flash.message = "Player Successfully Created"
        session.user = playerInstance
        redirect(uri: '/player/')
    }

    def validate(){
        if(params.check == "true"){
            params.check = true
        }else{
            params.check = false
        }
        def missionTaken = new PlayerMissions(params)
        missionTaken.properties['hasTaken'] = params.check
        if(!missionTaken.save(flush: true)){
            flash.message = missionTaken.errors
            redirect(action: "quests")
            return
        }
        (params.check) ? playerService.addPoints(Integer.parseInt(params.points), session.user.id) : 1
        session.user = Player.get(session.user.id)
        flash.message = "You have " + ((params.check) ? "passed" : "failed") + " the problem"
        redirect(action: "quests")
        return
    }

    def mission(Long id, Long missionId) {
        def mission
        def status = PlayerMissions.withCriteria {
            and {
                eq('player.id', session.user.id)
                eq('mission.id', missionId)
            }
        }
        def sessionId = Player.get(session.user.id).chosenclass.id
        def questId = Quest.findById(id)?.chosenclass?.id
        if (questId != sessionId) {
            redirect(action: "quests")
            return
        }
        mission = Mission.get(missionId)
        render(view: "mission", model: [mission: mission, status: status])
    }

    def changeClass() {
        def chosenclass = Player.get(session.user.id).chosenclass.id
        def classList = Class.where{ id != chosenclass }
        if(request.method == "POST") {
            playerService.changeClass(Integer.parseInt(params.playerId), Integer.parseInt(params.classId) )
            session.user = Player.get(params.playerId)
            redirect(uri: '/player')
        }
        [currentClass: Player.get(session.user.id), classList: classList]
    }

    def quests(Long id) {
        if (id) {
            def missionList
            def sessionId = Player.get(session.user.id).chosenclass.id
            def questId = Quest.findById(id)?.chosenclass?.id
            if (id == null) {
                missionList = Mission.where {
                    quest.chosenclass.id == sessionId
                }
            } else if (questId == null || questId != sessionId) {
                redirect(action: "quests")
            } else if (questId == sessionId) {
                missionList = Mission.where {
                    quest.id == id
                }

            }
            [missionList: missionList]
        } else {
            def questList = Quest.where {
                chosenclass.id == Player.get(session.user.id).chosenclass.id
            }
            [questList: questList]
        }
    }

    def update(Long id, Long version) {
        def playerInstance = Player.get(id)
        if (!playerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (playerInstance.version > version) {
                playerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'player.label', default: 'Player')] as Object[],
                        "Another user has updated this Player while you were editing")
                render(view: "edit", model: [playerInstance: playerInstance])
                return
            }
        }

        playerInstance.properties = params

        if (!playerInstance.save(flush: true)) {
            render(view: "edit", model: [playerInstance: playerInstance])
            return
        }

        flash.message = "Your Warrior Profile is Updated!"
        session.user = playerInstance
        redirect(action: "profile")
    }

    def delete(Long id) {
        def playerInstance = Player.get(id)
        if (!playerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "list")
            return
        }

        try {
            playerInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "show", id: id)
        }
    }
}
