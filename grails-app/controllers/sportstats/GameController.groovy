package sportstats

import com.gmongo.GMongo
import nba.com.grabJson

class GameController {
    def mongo = new GMongo()

// Get a reference to the db
    def db = mongo.getDB("sportStats")


    def index() {
        def game = db.game.find()
        return [game: game ]
    }
    def updateInfo(){
        def run = new grabJson().getAndInsertJson()
        return true
    }
    def test(){
        def game = db.game.find()
        return [game: game ]
    }
}
