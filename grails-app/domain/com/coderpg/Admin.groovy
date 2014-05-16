package com.coderpg

class Admin {
    String username
    String password

    static constraints = {
        username blank: false
    }
}
