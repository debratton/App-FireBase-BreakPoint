//
//  CreateGroupsVC.swift
//  BreakPoint
//
//  Created by David E Bratton on 11/9/18.
//  Copyright © 2018 David Bratton. All rights reserved.
//

import UIKit
import Firebase

class CreateGroupsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var emailTextField: InsetTextField!
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        
    }
    
    @IBAction func doneBtnPressed(_ sender: Any) {
        
    }
    
}

extension CreateGroupsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell") as? UserCell else { return UITableViewCell() }
        let profileImage = UIImage(named: "defaultProfileImage")
        
        cell.configureCell(profileImage: profileImage!, email: "bob@gmail.com", isSelected: true)
        return cell
    }
    
    
}
