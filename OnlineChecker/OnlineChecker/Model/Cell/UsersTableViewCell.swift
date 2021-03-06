//
//  UsersTableViewCell.swift
//  OnlineChecker
//
//  Created by Максим Фомичев on 06.10.2021.
//

import UIKit

class UsersTableViewCell: UITableViewCell {

    let backgroundViewCell: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let nameCellLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let repeatSwitch: UISwitch = {
        let repSwitch = UISwitch()
        repSwitch.isOn = true
        repSwitch.isHidden = true
        repSwitch.onTintColor = #colorLiteral(red: 0.05444354564, green: 0.5881057382, blue: 0.2993580401, alpha: 1)
        repSwitch.translatesAutoresizingMaskIntoConstraints = false
        return repSwitch
    }()
    
    let cellNameArray = [["Date", "Time"],
                         ["Name", "Type", "Building", "Audience"],
                         ["Teacher name"],
                         [""],
                         ["Repeat every 7 days"]]
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setConstraints()
        self.selectionStyle = .none
        self.backgroundColor = .clear
        repeatSwitch.addTarget(self, action: #selector(switchChange(paramTarget: )), for: .valueChanged)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        nameCellLabel.text = cellNameArray[indexPath.section][indexPath.row]
        
        if indexPath == [3, 0] {
            backgroundViewCell.backgroundColor = #colorLiteral(red: 0.05444354564, green: 0.5881057382, blue: 0.2993580401, alpha: 1)
        }
        
        if indexPath == [4, 0] {
            repeatSwitch.isHidden = false
        }
    }
    
    @objc func switchChange(paramTarget: UISwitch) {
        if paramTarget.isOn {
            print("Switch On")
        } else {
            print("Switch Off")
        }
    }
    
    func setConstraints() {
        
        self.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
        
        self.addSubview(nameCellLabel)
        NSLayoutConstraint.activate([
            nameCellLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            nameCellLabel.leadingAnchor.constraint(equalTo: backgroundViewCell.leadingAnchor, constant: 15),
        ])
        
        self.contentView.addSubview(repeatSwitch)
        NSLayoutConstraint.activate([
            repeatSwitch.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            repeatSwitch.trailingAnchor.constraint(equalTo: backgroundViewCell.trailingAnchor, constant: -20)
        ])
        
    }
    
}
