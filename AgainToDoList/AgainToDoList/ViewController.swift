//
//  ViewController.swift
//  AgainToDoList
//
//  Created by Satish Bhonsle on 4/30/17.
//  Copyright © 2017 Satish Bhonsle. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var task:[Task] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        task  =  makeTasks()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return task.count
    }
    

    func makeTasks() -> [Task]{
        let task5 = Task()
        task5.taskname =  "Jog everyday"
        task5.important  = true
        let task6 = Task()
        task6.taskname =  "Swim everyday"
        task6.important  = true
        let task7 = Task()
        task7.taskname =  "Sleep everyday"
        task7.important = true
        let task8 = Task()
        task8.taskname =  "talk everyday"
        task8.important = true
        return [task5,task6,task7,task8]
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell()
        let taskCell = task[indexPath.row]
        myCell.textLabel?.text  = taskCell.taskname
        return myCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //<#code#>
    }
    
}

