package nba.com
import com.gmongo.GMongo
import groovy.json.JsonSlurper

class grabJson {


    def getAndInsertJson() {
        String JSON_URL = "http://data.nba.com/5s/json/cms/noseason/scoreboard/20140502/games.json"
        URL url = new URL(JSON_URL)
        InputStream urlStream = null
        def mongo = new GMongo()
        def db = mongo.getDB("sportStats")
        //mongo.getDB("sportStats")
        try {
            urlStream = url.openStream()
            BufferedReader reader = new BufferedReader(new InputStreamReader(urlStream))
            JsonSlurper jsonSlurper = new JsonSlurper()
            Object result = jsonSlurper.parse(reader)

            Map jsonResult = (Map) result
            Map sportsContent = (Map) jsonResult.get("sports_content");
            Map game = (Map) sportsContent.get("games")
            Map home = (Map) game.get("home");
            Set entrySet = game.entrySet();
            def getInfo = entrySet[0].value[0]
            if(!db.game.find(["date":getInfo.date])) {
                db.game.insert(getInfo)
            }
       } finally {
            if (urlStream != null) {
                urlStream.close()
            }
        }
    }
}