package com.coderpg

class ChangeClass {
    int currentpoints
    Player player
    Class chosenclass

    static constraints = {
        player unique: ['chosenclass']
    }
}
