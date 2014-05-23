package com.coderpg

class PlayerService {

    def addPoints(int points, Long id) {
        def player = Player.get(id)
        player.points += points
        player.save(flush: true)
    }

    def changeClass(Long playerId, Long classId) {
        def player = Player.get(playerId)
        def changeClass = ClassChanger.createCriteria().get{
            and {
                eq('player.id', playerId)
                eq('chosenclass.id', classId)
            }
            maxResults 1
        }
        def currentClass = ClassChanger.createCriteria().get {
            and {
                eq('player.id', playerId)
                eq('chosenclass.id', player.chosenclass.id)
            }
            maxResults 1
        }
        if(currentClass){
            currentClass.currentpoints = player.points
            currentClass.save(flush: true)
        }else{
            currentClass = new ClassChanger(player: player, chosenclass: player.chosenclass, currentpoints: player.points)
            currentClass.save(flush: true) ? System.out.println("Saved") : System.out.println("Failed")
        }
        if(changeClass){
            player.chosenclass =  Class.get(classId)
            player.points = changeClass.currentpoints
            player.save()
        }else{
            changeClass = new ClassChanger(player: player, chosenclass: Class.get(classId), currentpoints: 0)
            changeClass.save(flush: true)? System.out.println("Saved") : System.out.println("Failed")
            player.chosenclass = Class.get(classId)
            player.points = 0
            player.save() ? System.out.println("Saved" + playerId + " " + classId) : System.out.println("Failed")
        }
    }
}
