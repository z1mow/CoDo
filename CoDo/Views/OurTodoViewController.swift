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
        
        tableViewOurTodo.rowHeight = UITableView.automaticDimension
        tableViewOurTodo.estimatedRowHeight = 160
    }
    
    @IBAction func buttonAddOurTodo(_ sender: UIBarButtonItem) {
        
    }
    
    @objc private func completeButtonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        //toggle animasyonu
        UIView.transition(with: sender, duration: 0.15, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
    
}

extension OurTodoViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableViewCell", for: indexPath) as? TodoTableViewCell else {
            return UITableViewCell()
        }
        
        // Butonun normal/selected state'leri için image'ları bir kez tanımlıyoruz.
        // Böylece tap geldiğinde sadece isSelected toggle edilir.
        cell.buttonComplete.setImage(UIImage(systemName: "circle.dotted"), for: .normal)
        cell.buttonComplete.setImage(UIImage(systemName: "checkmark.circle.dotted"), for: .selected)
        
        // Reuse sırasında aynı butona birden fazla target eklenmesini önlemek için:
        cell.buttonComplete.removeTarget(nil, action: nil, for: .allEvents)
        cell.buttonComplete.addTarget(self, action: #selector(completeButtonTapped(_:)), for: .touchUpInside)
        
        // Eğer bir modeliniz olsaydı, burada butonun isSelected'ını modele göre set ederdiniz:
        // cell.buttonComplete.isSelected = todos[indexPath.row].isCompleted
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    // MARK: - Header Section (Basit metin başlık)
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "High Priority"
    }
    
    // İsteğe bağlı: header yüksekliği
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 32
    }
    
        
}
