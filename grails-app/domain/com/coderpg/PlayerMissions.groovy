package com.coderpg

class PlayerMissions {
    Player player
    Mission mission
    boolean hasTaken

    static constraints = {
       player unique: ['mission']
    }

}
