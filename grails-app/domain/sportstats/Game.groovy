package sportstats

import org.bson.types.ObjectId

class Game {
    ObjectId id
    def data = [home:[id:0.toBigInteger(), nickname:'', team_key:'', linescores:[period:[[score:0, period_name:'', period_value:0], [score:0, period_name:0, period_value:0], [score:0, period_name:'', period_value:0], [score:0, period_name:'', period_value:0]]], team_code:'', score:0, abbreviation:'', url_name:'', city:''], period_time:[total_periods:0, period_status:'', period_name:'', game_clock:0.0, period_value:0, game_status:0], buzzerBeater:0, visitor_start_time:0.0, game_url:'', state:'', season_id:0, date:0, visitor:[id:0.toBigInteger(), nickname:'', team_key:'', linescores:[period:[[score:0, period_name:'', period_value:0], [score:0, period_name:'', period_value:0], [score:0, period_name:'', period_value:0], [score:0, period_name:'', period_value:0]]], team_code:'', score:0, abbreviation:'', url_name:'', city:''], city:'', country:'', id:0.toBigInteger(), notebookAvailable:0, visitor_start_date:0, isLeaguePass:0, time:0.0, broadcasters:[tv:[broadcaster:[[display_name:'', scope:'', home_visitor:''], [display_name:'', scope:'', home_visitor:''], [display_name:'', scope:'', home_visitor:''], [display_name:'', scope:'', home_visitor:'']]], radio:[broadcaster:[[display_name:'', scope:'', home_visitor:''], [display_name:'', scope:'', home_visitor:'']]]], arena:'', home_start_time:0, recapAvailable:0, playoffs:[series:0, game_necessary_flag:0, visitor_wins:0, home_seed:0, gameId:0, round:0, home_wins:0, visitor_seed:0, game_number:0, gameStatus:0, conference:''], home_start_date:0, previewAvailable:0]




    static constraints = {
    }
}
