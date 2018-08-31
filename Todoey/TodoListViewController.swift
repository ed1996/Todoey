//
//  ViewController.swift
//  Todoey
//
//  Created by Edgar Bekier on 30/08/2018.
//  Copyright © 2018 Edgar Bekier. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //MARK - TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        
        if tableView.cellForRow(at: IndexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: IndexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: IndexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: IndexPath, animated: true)
    }


}

