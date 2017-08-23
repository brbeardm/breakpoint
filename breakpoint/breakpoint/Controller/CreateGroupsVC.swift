//
//  CreateGroupsVC.swift
//  breakpoint
//
//  Created by Brian Beardmore on 8/22/17.
//  Copyright © 2017 Brian Beardmore. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    
    @IBOutlet weak var titleTextField: insetTextField!
    
    @IBOutlet weak var descriptionTextField: insetTextField!
    
    @IBOutlet weak var groupMemberLabel: UILabel!
    @IBOutlet weak var emailSearchTextField: insetTextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func closeButtonWasPressed(_ sender: Any) {
    }
    
}
