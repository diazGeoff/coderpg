package com.coderpg

import org.springframework.dao.DataIntegrityViolationException

class QuestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def notLoggedIn(){
        if(!session.admin){
            redirect controller: "player"
            return
        }
    }

    def index() {
        notLoggedIn()
        (session.admin) ? redirect(action: 'list', params: params) : 1
    }

    def list(Long id) {
        notLoggedIn()
        def quest = new Quest()
        if(id) {
            quest = Quest.where { chosenclass.id == id }
            [questInstanceList: quest.list(), questInstanceTotal: quest.count()]
        }else{
            [questInstanceList: Quest.list(), questInstanceTotal: Quest.count()]
        }
    }

    def create() {
        notLoggedIn()
        [questInstance: new Quest(params)]
    }

    def save() {
        def questInstance = new Quest(params)
        if (!questInstance.save(flush: true)) {
            render(view: "create", model: [questInstance: questInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'quest.label', default: 'Quest'), questInstance.id])
        redirect(action: "show", id: questInstance.id)
    }

    def show(Long id) {
        def questInstance = Quest.get(id)
        if (!questInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quest.label', default: 'Quest'), id])
            redirect(action: "list")
            return
        }

        [questInstance: questInstance]
    }

    def edit(Long id) {
        def questInstance = Quest.get(id)
        if (!questInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quest.label', default: 'Quest'), id])
            redirect(action: "list")
            return
        }

        [questInstance: questInstance]
    }

    def update(Long id, Long version) {
        def questInstance = Quest.get(id)
        if (!questInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quest.label', default: 'Quest'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (questInstance.version > version) {
                questInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'quest.label', default: 'Quest')] as Object[],
                        "Another user has updated this Quest while you were editing")
                render(view: "edit", model: [questInstance: questInstance])
                return
            }
        }

        questInstance.properties = params

        if (!questInstance.save(flush: true)) {
            render(view: "edit", model: [questInstance: questInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'quest.label', default: 'Quest'), questInstance.id])
        redirect(action: "show", id: questInstance.id)
    }

    def delete() {
        def questInstance = Quest.get(params.questId)
        if (!questInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'quest.label', default: 'Quest'), id])
            redirect(action: "list")
            return
        }

        try {
            questInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'quest.label', default: 'Quest')])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'quest.label', default: 'Quest')])
            redirect(action: "show", id: id)
        }
    }
}
