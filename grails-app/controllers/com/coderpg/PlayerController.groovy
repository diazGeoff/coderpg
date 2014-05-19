package com.coderpg

import org.springframework.dao.DataIntegrityViolationException

class PlayerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        if(!session.user || session.admin){
            session.admin ? redirect(uri: "/admin/") : redirect(action: "login", params: params)
        }
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [playerInstanceList: Player.list(params), playerInstanceTotal: Player.count()]
    }

    def create() {
        [playerInstance: new Player(params)]
    }

    def login() {
        if(session.user){
            redirect(action: 'index')
        }
        if(request.method == 'POST'){
            def playerInstance = new Player()
            if(Player.findByCodename(params.codename) ){
                if(params?.password == Player.findByCodename(params.codename).password ){
                    playerInstance = Player.findByCodename(params.codename)
                    session.user = playerInstance
                    redirect uri: "/player/index"
                }
            }else{
                flash.message = "Incorrect Username/Password"
                forward controller: "admin", action: "login", params: params
            }
        }
    }

    def logout() {
        session.user = null
        redirect(action: "login")
    }

    def profile() {
        if(!session.user){
            redirect(action: 'login')
            return
        }
        def player = Player.get(session.user.id)
        [player: player]
    }

    def save() {
        def playerInstance = new Player(params)
        if (!playerInstance.save(flush: true)) {
            render(view: "create", model: [playerInstance: playerInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'player.label', default: 'Player'), playerInstance.id])
        redirect(action: "show", id: playerInstance.id)
    }

    def show(Long id) {
        def playerInstance = Player.get(id)
        if (!playerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "list")
            return
        }

        [playerInstance: playerInstance]
    }

    /*def edit(Long id) {
        def playerInstance = Player.get(id)
        if (!playerInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'player.label', default: 'Player'), id])
            redirect(action: "list")
            return
        }

        [playerInstance: playerInstance]
    }*/

    def missions(Long id) {
        def missionList
        if(id){
            missionList = Mission.where{
                quest.id == id
            }
        }else{
            missionList = Mission.where {
                quest.chosenclass.id == Player.get(session.user.id).chosenclass.id
            }
        }
        [missionList: missionList]
    }

    def quests() {
        def questList = Quest.where{
            chosenclass.id == Player.get(session.user.id).chosenclass.id
        }
        [questList: questList]
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
