//
//  OurTodoViewController.swift
//  CoDo
//
//  Created by Şakir Yılmaz ÖĞÜT on 2.09.2025.
//

import UIKit

class OurTodoViewController: UIViewController {
    
    @IBOutlet weak var tableViewOurTodo: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOurTodo.delegate = self
        tableViewOurTodo.dataSource = self
        
        let nib = UINib(nibName: "TodoTableViewCell", bundle: nil)
        tableViewOurTodo.register(nib, forCellReuseIdentifier: "TodoTableViewCell")
        
        
    }
    
    @IBAction func buttonAddOurTodo(_ sender: UIBarButtonItem) {
        
    }
    
}

extension OurTodoViewController: UITableViewDataSource, UITableViewDelegate {
    
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
