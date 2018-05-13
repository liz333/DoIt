//
//  ViewController.swift
//  DoIt
//
//  Created by Lizzy on 2018/5/13.
//  Copyright © 2018年 L&L. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tasklistTV: UITableView!
    
    var  tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        tasklistTV.dataSource = self
        tasklistTV.delegate = self
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.importance {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        return cell
    }
    
    func makeTasks () -> [Task] {
        let task1 = Task()
        task1.name = "Shopping"
        task1.importance = false
        
        let task2 = Task()
        task2.name = "Homework"
        task2.importance = true
        
        let task3 = Task()
        task3.name = "Feed Pudding"
        task3.importance = true
        
        let task4 = Task()
        task4.name = "Buy fruit"
        task4.importance = false
        
        return [task1, task2, task3, task4]
    }
    
    @IBAction func addTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
    
}

