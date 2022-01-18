//
//  ViewController.swift
//  MVVMUsingProtocolDelegate
//
//  Created by Admin on 18/01/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userTableView: UITableView!
    var userViewModel : UserViewModel?
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
     
    }
    func config(){
        self.userViewModel = UserViewModel(view: self)
        userViewModel?.delegateP = self
    }
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userViewModel?.user1?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = userViewModel?.user1?[indexPath.row]
        if let cell = userTableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell{
            cell.l1.text = user?.name
            cell.l2.text = user?.email
            return cell
        }
        return UITableViewCell()
    }
    
    
}

extension ViewController: ViewModelProtocol {
    func dataPass() {
        DispatchQueue.main.async {
            self.userTableView.reloadData()
        }
    }
    
   
}
//func finalUpdate() {
//    DispatchQueue.main.async {
//        self.userList.reloadData()
//    }
////}
