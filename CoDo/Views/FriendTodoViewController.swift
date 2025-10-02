//
//  FriendTodoViewController.swift
//  CoDo
//
//  Created by Şakir Yılmaz ÖĞÜT on 2.09.2025.
//

import UIKit

class FriendTodoViewController: UIViewController {

    @IBOutlet weak var tableViewFriendTodo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewFriendTodo.delegate = self
        tableViewFriendTodo.dataSource = self
        
        let nib = UINib(nibName: "TodoTableViewCell", bundle: nil)
        tableViewFriendTodo.register(nib, forCellReuseIdentifier: "TodoTableViewCell")
    }
    
    @IBAction func buttonAddFriendTodo(_ sender: UIBarButtonItem) {
        
    }
    
}

extension FriendTodoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableViewCell", for: indexPath) as? TodoTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
