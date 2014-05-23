package com.coderpg

class ClassChanger {
    int currentpoints
    Player player
    Class chosenclass

    static constraints = {
        player unique: ['chosenclass']
    }
}
