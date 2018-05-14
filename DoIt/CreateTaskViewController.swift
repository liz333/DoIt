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
        //create a task from the outlet information
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.importance = importanceSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        //Go back to previous viewcontroller
        navigationController!.popViewController(animated: true)
    }
    
}
