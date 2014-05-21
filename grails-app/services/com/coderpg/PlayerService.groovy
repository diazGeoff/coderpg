package com.coderpg

class PlayerService {

    def addPoints(int points, Long id) {
        def player = Player.get(id)
        player.properties['points'] = player.points + points
        player.save(flush: true)
    }

    def changeClass(Long playerId, Long classId) {
        def getPlayer = Player.get(playerId)
        def saveCurrentData
        def saveChangeClass
        def changeClass = ChangeClass.withCriteria {
            and {
                eq('player.id', playerId)
                eq('chosenclass.id', classId)
            }
        }
        def currentData = ChangeClass.withCriteria {
            and {
                eq('player.id', playerId)
                eq('chosenclass.id', getPlayer.chosenclass.id)
            }
        }
        if(!currentData.isEmpty()){
            saveCurrentData = ChangeClass.get(currentData?.id[0])
            saveCurrentData.properties['currentpoints'] = getPlayer.points
            saveCurrentData.save(flush: true)
        }else{
            saveCurrentData = new ChangeClass(player: getPlayer, chosenclass: getPlayer.chosenclass, currentpoints: getPlayer.points)
            saveCurrentData.save(flush: true) ? System.out.println("Saved") : System.out.println("Failed")
        }
        if(!changeClass.isEmpty()){
            getPlayer.properties['chosenclass'] =  Class.get(classId)
            getPlayer.properties['points'] = changeClass.currentpoints[0]
            getPlayer.save()
        }else{
            saveChangeClass = new ChangeClass(player: getPlayer, chosenclass: Class.get(classId), currentpoints: 0)
            saveChangeClass.save(flush: true)? System.out.println("Saved") : System.out.println("Failed")
            getPlayer.properties['chosenclass'] = Class.get(classId)
            getPlayer.properties['points'] = 0
            getPlayer.save() ? System.out.println("Saved" + playerId + " " + classId) : System.out.println("Failed")
        }
    }
}
