//
//  SettingsViewController.swift
//  UserSettingsView0715
//
//  Created by leslie on 7/15/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SettingsViewController: UITableViewController {

    @IBOutlet weak var controlColors: UISegmentedControl!
    @IBOutlet weak var controlEditable: UISwitch!
    @IBOutlet weak var controlCorrection: UISwitch!
    
    var defaultValues: UserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        defaultValues = UserDefaults.standard

        if let color = defaultValues.object(forKey: "color") as? Int {
            controlColors.selectedSegmentIndex = color
        }
        
        if let editable = defaultValues.object(forKey: "editable") as? Bool {
            controlEditable.isOn = editable
        }
        
        if let correction = defaultValues.object(forKey: "correction") as? Bool {
            controlCorrection.isOn = correction
        }
    }
    
    //TODO: Saving the Settings
    @IBAction func saveColors(_ sender: UISegmentedControl) {
        let current = sender.selectedSegmentIndex
        defaultValues.set(current, forKey: "color")
    }
    
    @IBAction func saveEditable(_ sender: UISwitch) {
        let current = sender.isOn
        defaultValues.set(current, forKey: "editable")
    }
    
    @IBAction func saveCorrection(_ sender: UISwitch) {
        let current = sender.isOn
        defaultValues.set(current, forKey: "correction")
    }
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
