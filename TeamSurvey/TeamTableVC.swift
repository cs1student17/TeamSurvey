import UIKit

class TeamTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        teams.append(Team(name: "Shark Attack", number: 744, hasAuto: true, position: 3, image: UIImage(named: "744")!, rating: "5Stars", passedBreakLine: true, highGoals: 7, placedGears: 4))
        teams.append(Team(name: "Ninjineers", number: 2383, hasAuto: true, position: 2, image: UIImage(named: "2383")!, rating: "4Stars", passedBreakLine: true, highGoals: 5, placedGears: 2))
        teams.append(Team(name: "SPAM", number: 180, hasAuto: false, position: 2, image: UIImage(named: "180")!, rating: "3Stars", passedBreakLine: true, highGoals: 2, placedGears: 1))
        
        let background = UIImageView(image: UIImage(named: "FIRST-iphone"))
        tableView.backgroundView = background
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)
        
        // configure the cell
        cell.textLabel?.text = teams[indexPath.row].name
        cell.detailTextLabel?.text = "Team \(teams[indexPath.row].number)"
        cell.imageView?.image = teams[indexPath.row].image

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedTeam = teams[indexPath.row]
    }
    
    @IBAction func exitToTeamTableVC(sender: UIStoryboardSegue) {
        tableView.reloadData()
    }
    
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
}
