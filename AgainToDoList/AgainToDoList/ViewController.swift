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
    var rowIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //task  =  makeTasks()
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
            let taskItem = task[indexPath.row]
            performSegue(withIdentifier: "DeleteSegue", sender: taskItem)
            rowIndex = indexPath.row
        
    }
    
    
    
    @IBAction func AddTaskItemFunc(_ sender: Any) {
        
        performSegue(withIdentifier: "AddItemSegue", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "AddItemSegue") {
            let nextVC = segue.destination as! AddTaskViewController
            nextVC.previousVC  = self
        }
        if(segue.identifier == "DeleteSegue") {
            let nextVC1 = segue.destination as! DeleteViewController
            nextVC1.previousVC1  = self
        }
    }
}

