package com.coderpg

class Player {
    String name
    String codename
    String password
    String email
    Date birthdate
    GenderChoice gender
    String info
    Class chosenclass

    enum GenderChoice {
        Male, Female
    }

    static constraints = {
        name blank: false
        codename blank: false, size: 5..20, unique: true
        password blank: false, minSize: 8
        email blank: false, email: true
        birthdate blank: false
        gender blank: false
        chosenclass nullable: false
    }
}
