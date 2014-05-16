package com.coderpg

class Class {
    String name
    String description

    static hasMany = [players: Player, quests: Quest]

    static constraints = {
        name blank: false, unique: true
    }
}
