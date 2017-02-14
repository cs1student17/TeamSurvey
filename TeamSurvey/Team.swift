import Foundation
import UIKit

var teams = [Team]()
var selectedTeam : Team?
var newTeam : Team?

// Data Model
class Team {
    
    // properties -- variables
    var name : String
    var number : Int
    var hasAuto : Bool
    var positionFromBoiler : Int
    var image : UIImage
    var rating : String
    var passedBreakLine : Bool
    var highGoals: Int
    var placedGears : Int
    
    // initializers
    init(name : String, number : Int, hasAuto : Bool, position : Int, image : UIImage, rating : String, passedBreakLine: Bool, highGoals: Int, placedGears: Int) {
        self.name = name
        self.number = number
        self.hasAuto = hasAuto
        self.positionFromBoiler = position
        self.image = image
        self.rating = rating
        self.passedBreakLine = passedBreakLine
        self.highGoals = highGoals
        self.placedGears = placedGears
    }
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
        image = UIImage(named: "FIRST-horizontal")!
        rating = "1Stars"
        hasAuto = false
        positionFromBoiler = 1
        passedBreakLine = false
        highGoals = 0
        placedGears = 0
    }
    
}
