//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Lizzy on 2018/5/14.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    
    @IBOutlet weak var taskNameLabel: UILabel!
    
    var task = Task()
    var previousVC = TaskListViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task.importance {
            taskNameLabel.text = "❗️\(task.name)"
        } else {
            taskNameLabel.text = task.name
        }
    }
    
    @IBAction func completeButtontapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tasklistTV.reloadData()
        navigationController!.popViewController(animated: true)
    }
    
    
}
