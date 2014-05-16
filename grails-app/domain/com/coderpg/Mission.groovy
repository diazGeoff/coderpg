package com.coderpg

class Mission {
    String name
    String description
    String input
    String output

    static belongsTo = [quest: Quest]

    static constraints = {
        name blank: false, size: 5..25
        description blank: false
        input blank: false
        output blank: false
    }
}
