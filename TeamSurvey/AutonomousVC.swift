import UIKit

class AutonomousVC: UIViewController {

    @IBOutlet var hasAutoSegmentedControl: UISegmentedControl!
    @IBOutlet var positionSegmentedControl: UISegmentedControl!
    @IBOutlet var passedBreakLineSegmentedControl: UISegmentedControl!

    @IBAction func nextButtonPressed(_ sender: Any) {
        
        // does it have autonomous?
        if hasAutoSegmentedControl.selectedSegmentIndex == 0 {
            newTeam?.hasAuto = true
        } else {
            newTeam?.hasAuto = false
        }
        
        if positionSegmentedControl.selectedSegmentIndex == 0 {
            newTeam?.positionFromBoiler = 1
        } else if positionSegmentedControl.selectedSegmentIndex == 1 {
            newTeam?.positionFromBoiler = 2
        } else {
            newTeam?.positionFromBoiler = 3
        }
        
        if passedBreakLineSegmentedControl.selectedSegmentIndex == 0 {
            newTeam?.passedBreakLine = true
        } else {
            newTeam?.passedBreakLine = false
        }
        
        performSegue(withIdentifier: "GoToManualVC", sender: nil)
    }
}






