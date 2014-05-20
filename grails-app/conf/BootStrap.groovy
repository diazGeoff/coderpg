import com.coderpg.Admin
import com.coderpg.Class
import com.coderpg.Mission

class BootStrap {

    def init = { servletContext ->
        new Class(name: "Javascript Ninja", description: "Become a Javascript Ninja").save(flush: true)
        new Class(name: "Ruby Samurai", description: "Become a Ruby Samurai").save(flush: true)
        new Admin(username: "admin", password: "password").save(flush: true)
    }
    def destroy = {
    }
}
