//
//  CreateTaskViewController.swift
//  DoIt
//
//  Created by Lizzy on 2018/5/13.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var taskNameTextField: UITextField!
    
    @IBOutlet weak var importanceLabel: UILabel!
    
    
    @IBOutlet weak var importanceSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    
}
