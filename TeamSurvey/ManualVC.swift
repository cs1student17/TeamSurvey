import UIKit

class ManualVC: UIViewController {

    @IBOutlet var highGoalsLabel: UILabel!
    @IBOutlet var placedGearsLabel: UILabel!
    @IBOutlet var highGoalsStepper: UIStepper!
    @IBOutlet var placedGearsStepper: UIStepper!
    
    @IBAction func highGoalsChanged(_ sender: UIStepper) {
        
        highGoalsLabel.text = "\(Int(highGoalsStepper.value))"
        
    }
    
    @IBAction func placedGearsStepper(_ sender: UIStepper) {
        
        placedGearsLabel.text = "\(Int(placedGearsStepper.value))"
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        newTeam?.highGoals = Int(highGoalsStepper.value)
        newTeam?.placedGears = Int(placedGearsStepper.value)
        
        if let t = newTeam {
            teams.append(t)
        }
    }

}









