//
//  CompleteViewController.swift
//  ToDoListApp
//
//  Created by Divyanshu Upadhyay on 18/02/20.
//  Copyright © 2020 Divyanshu Upadhyay. All rights reserved.
//

import UIKit

class CompleteViewController: UIViewController {

    var toDoVC: TableViewController? = nil

    @IBOutlet weak var completeLabel: UILabel!
    
    var todo = ToDo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        completeLabel.text = todo.name
    }
    

    @IBAction func completeButton(_ sender: Any) {
        
        if let toDo = toDoVC?.toDoItems {
            var index = 0
            for i in toDo{
                if i.name == todo.name {
                    toDoVC?.toDoItems.remove(at: index)
                    toDoVC?.tableView.reloadData()
                    navigationController?.popViewController(animated: true)
                        return
                }
                index += 1
            }
        }
    }
    

}
