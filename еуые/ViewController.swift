//
//  ViewController.swift
//  еуые
//
//  Created by Mac on 12/12/2022.
//

import UIKit

class ViewController: UIViewController  {
   
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var cost: UILabel!
    
    @IBOutlet weak var search: UISearchBar!
    
        var names:[Ip] = [Ip(name: "Имбраимова", cost: 400), Ip(name: "Донецкая", cost: 500), Ip(name: "Магистраль", cost: 500), Ip(name: "Советская", cost: 400)]
//    var names:[String] = ["Ибраимова - 500 ", "Донецкая - 400", "Советская - 500", "Советская - 1000", "Магистраль - 600"]
//    var cost1:[Int] = [500, 400, 500, 1000, 600]
    var cosr = ""
    var array:[String] = []
  
    var filteredNames:[Ip] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "name_cell")
        tableView.dataSource = self
        tableView.delegate = self
//                filteredNames = names
        cost.text = cosr
        
        
    }
}
extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredNames.count
      
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "name_cell", for: indexPath)
//        cell.textLabel?.text = filteredNames[indexPath.row]
        cell.textLabel?.text = " \(names[indexPath.row].name) -  \(names[indexPath.row].cost)"
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       //        print(names[indexPath.row])
           
            let alert = UIAlertController(title: "Адрес", message: "Улица адреса", preferredStyle: .alert)
//                  var alertTextField = UITextField ()
//                  alert.addTextField() { TextField in
//                      alertTextField = TextField
//
//                  }
                  let acceptActio = UIAlertAction(title: "заказать ", style: .destructive) {
                      action in
                      self.cost.text! = "цена за улицу - \(self.names[indexPath.row].cost)"
                      print("ds")
//                      self.filteredNames.insert("\(self.names[indexPath.row])", at: 0)
//                      self.tableView.reloadData()
//                      self.filteredNames.append(contentsOf: self.names)
                  }
                  let cancelAction = UIAlertAction(title: "Отмена", style: .cancel) {
                      action in
                      self.names.append(self.names[indexPath.row])
                      self.names.append(contentsOf: self.names)
                      self.filteredNames = self.names
                      self.tableView.reloadData()
                  }
                  alert.addAction(acceptActio)
                  alert.addAction(cancelAction)
                  present(alert,animated: true)
     
           }
       }

extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        var names:[Ip] = [Ip(name: "Имбраимова", cost: 400), Ip(name: "Донецкая", cost: 500), Ip(name: "Магистраль", cost: 500), Ip(name: "Советская", cost: 400)]
        filteredNames = []
        if searchText == "\(names)" {
            filteredNames = names
//
        } else {
            for i in names {
                    filteredNames.append(i)
                }
        }
        tableView.reloadData()
    }
}


class Ip {
    var name:String
    var cost:Int
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
}

