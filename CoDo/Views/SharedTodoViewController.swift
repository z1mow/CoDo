//
//  SharedTodoViewController.swift
//  CoDo
//
//  Created by Şakir Yılmaz ÖĞÜT on 2.09.2025.
//

import UIKit

class SharedTodoViewController: UIViewController {

    @IBOutlet weak var tableViewSharedTodo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSharedTodo.delegate = self
        tableViewSharedTodo.dataSource = self
    }

    @IBAction func buttonAddSharedTodo(_ sender: UIBarButtonItem) {
        
    }
    
}

extension SharedTodoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableViewCell", for: indexPath) as? TodoTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
}
