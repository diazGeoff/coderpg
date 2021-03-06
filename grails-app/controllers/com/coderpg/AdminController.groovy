package com.coderpg

import org.springframework.dao.DataIntegrityViolationException

class AdminController {

    static allowedMethods = [save: "POST", update: ["POST","GET"], delete: "POST"]

    def adminNotLoggedIn(){
        if(!session.admin){
            redirect controller: "player"
            return
        }
    }

    def addClass() {
        adminNotLoggedIn()
        if(request.method == 'POST'){
            def newClass = new Class(params)
            if(newClass.save(flush: true)){
                redirect(action: "classes")
                return
            }
            flash.message = "Class Not Created"
            return
        }
    }

    def index() {
        adminNotLoggedIn()
    }

    def logout() {
        session.admin = null
        redirect controller: "player"
    }

    def login() {
        def adminInstance = new Admin()
        if(Admin.findByUsername(params.codename) ){
            if(params.password == Admin.findByUsername(params.codename).password ){
                adminInstance = Admin.findByUsername(params.codename)
                session.admin = adminInstance
                redirect uri: "/admin/"
                return
            }
        }
        redirect controller: "player", action: "login"
    }

    def classes() {
        adminNotLoggedIn()
        [classes: Class.list()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [adminInstanceList: Admin.list(params), adminInstanceTotal: Admin.count()]
    }

    def create() {
        [adminInstance: new Admin(params)]
    }

    def save() {
        def adminInstance = new Admin(params)
        if (!adminInstance.save(flush: true)) {
            render(view: "create", model: [adminInstance: adminInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'admin.label', default: 'Admin'), adminInstance.id])
        redirect(action: "show", id: adminInstance.id)
    }

    def show(Long id) {
        def adminInstance = Admin.get(id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "list")
            return
        }

        [adminInstance: adminInstance]
    }

    /*def edit(Long id) {
        def adminInstance = Admin.get(id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "list")
            return
        }

        [adminInstance: adminInstance]
    }*/

    def editClass(Long id) {
        if(request.method == "POST"){
            redirect(action: 'updateClass', params: params)
        }
        def classInstance = Class.get(id)
        [classes: classInstance]
    }

    def updateClass(Long id, Long version){
        def classInstance = Class.get(id)
        if(! classInstance){
            flash.message = "Class Not Found"
            redirect(action: 'editClass')
            return
        }
        if(version != null){
            if(classInstance.version > version){
                flash.message = "Default Optimistic Lock Failure"
                redirect(action: 'editClass')
                return
            }
        }
        classInstance.properties = params
        if(!classInstance.save(flush: true)){
            redirect(action: 'editClass', id: params.id)
            return
        }
        redirect(action: 'classes')
    }

    /*def update(Long id, Long version) {
        def adminInstance = Admin.get(id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (adminInstance.version > version) {
                adminInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'admin.label', default: 'Admin')] as Object[],
                        "Another user has updated this Admin while you were editing")
                render(view: "editClass", model: [adminInstance: adminInstance])
                return
            }
        }

        adminInstance.properties = params

        if (!adminInstance.save(flush: true)) {
            render(view: "edit", model: [adminInstance: adminInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'admin.label', default: 'Admin'), adminInstance.id])
        redirect(action: "show", id: adminInstance.id)
    }*/

    def delete(Long id) {
        def adminInstance = Admin.get(id)
        if (!adminInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "list")
            return
        }

        try {
            adminInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'admin.label', default: 'Admin'), id])
            redirect(action: "show", id: id)
        }
    }
}
