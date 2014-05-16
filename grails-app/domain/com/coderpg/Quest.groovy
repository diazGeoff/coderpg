package com.coderpg

class Quest {
    String name
    String description

    static hasMany = [missions: Mission]
    static belongsTo = [chosenclass: Class]

    static constraints = {
        name blank:false, size: 5..20
        description blank: false
    }
}
