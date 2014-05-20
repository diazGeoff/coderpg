package com.coderpg

class PlayerService {

    def addPoints(int points, Long id) {
        def player = Player.get(id)
        player.properties['points'] = player.points + points
        player.save(flush: true)
    }
}
