package sportstats

class Games {
    String game
    static hasMany = [games: Game]
    static constraints = {
    }
}
