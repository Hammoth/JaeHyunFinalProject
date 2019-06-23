//
//  GameViewController.swift
//  JaeHyunFinalProject
//
//  Created by SWUCOMPUTER on 23/06/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit
import CoreData

class GameViewController: UIViewController {
    
    @IBOutlet var textName: UITextField!
    @IBOutlet var textDate: UITextField!
    @IBOutlet var textDescription: UITextField!

    var detailGame: NSManagedObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let list = detailGame {
            textName.text = list.value(forKey: "name") as? String
            textDescription.text = list.value(forKey: "descript") as? String
            let dbDate: Date? = list.value(forKey: "saveDate") as? Date
            
            let formatter: DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd h:mm a"
            if let unwrapDate = dbDate {
                textDate.text = formatter.string(from: unwrapDate as Date)
            } }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
