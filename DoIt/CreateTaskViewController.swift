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
    
    var previousVC = TaskListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
        //creating a task from the outlet information
        let task = Task()
        task.name = taskNameTextField.text!
        task.importance = importanceSwitch.isOn
        
        //Add new task array in previous viewcontroller
        previousVC.tasks.append(task)
        previousVC.tasklistTV.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
}
