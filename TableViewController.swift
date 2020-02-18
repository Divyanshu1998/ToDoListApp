//
//  TableViewController.swift
//  ToDoListApp
//
//  Created by Divyanshu Upadhyay on 18/02/20.
//  Copyright © 2020 Divyanshu Upadhyay. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    var toDoItems: [ToDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let t1 = ToDo()
        t1.name = "Complete this course"
        t1.important = true
        toDoItems.append(t1)
        let t2 = ToDo()
        t2.name = "Read iOS 13 book"
        t2.important = false
        
        toDoItems.append(t2)


    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDoItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        let todo = toDoItems[indexPath.row]
        
        if todo.important {
            todo.name = "❗️" + todo.name
        }
        //Hello there
        cell.textLabel?.text = todo.name

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedToDo = toDoItems[indexPath.row]
        performSegue(withIdentifier: "completionSegue", sender: selectedToDo)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let createVc = segue.destination as? AddTask
        {
            createVc.toDoVC = self
            
        }
        if let completeVC = segue.destination as? CompleteViewController{
            if let toda = sender as? ToDo{
                completeVC.toDoVC = self

            completeVC.todo = toda
        }
    }

}
}
