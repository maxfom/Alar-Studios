//
//  UsersTableViewController.swift
//  OnlineChecker
//
//  Created by Максим Фомичев on 06.10.2021.
//

import UIKit

class UsersTableViewController: UITableViewController {
    
    let idUsersTableCell = "idUsersTableCell"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Users Storage"
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.register(UsersTableViewCell.self, forCellReuseIdentifier: idUsersTableCell)
        tableView.separatorStyle = .none
        //tableView.register(HeaderOptionsTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionScheduleHeader)

    }
    
    @objc func leftHandAction() {
        print("back")
    }
    
    @objc func playTapped() {
        print("back")
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 4
        case 2:
            return 1
        case 3:
            return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idUsersTableCell, for: indexPath) as! UsersTableViewCell
        cell.cellConfigure(indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionScheduleHeader) as! HeaderOptionsTableViewCell
//        header.headerConfigure(nameArray: headerNameArray, section: section)
//        return header
//    }
    

}
