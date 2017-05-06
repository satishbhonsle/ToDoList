//
//  AddTaskViewController.swift
//  AgainToDoList
//
//  Created by Satish Bhonsle on 5/2/17.
//  Copyright © 2017 Satish Bhonsle. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    @IBOutlet weak var importantSwitch: UISwitch!
    @IBOutlet weak var taskText: UITextField!
    @IBOutlet weak var taskLabel: UILabel!
    
    var  previousVC = ViewController()
    
    
    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitTaskButton(_ sender: Any) {
        let newTask = Task()
        newTask.important = importantSwitch.isOn
        newTask.taskname = taskText.text!
        previousVC.task.append(newTask)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
            
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
