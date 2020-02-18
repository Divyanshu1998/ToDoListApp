//
//  AddTask.swift
//  ToDoListApp
//
//  Created by Divyanshu Upadhyay on 18/02/20.
//  Copyright © 2020 Divyanshu Upadhyay. All rights reserved.
//

import UIKit

class AddTask: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
    
    var toDoVC: TableViewController? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func addButton(_ sender: Any) {
        let newTask = ToDo()
        newTask.name = taskTextField.text!
        newTask.important = importantSwitch.isOn
        toDoVC?.toDoItems.append(newTask)
        toDoVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
        
    }
    
}
