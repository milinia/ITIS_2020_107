//
//  ViewController.swift
//  contacts
//
//  Created by Evelina on 22.10.2020.
//  Copyright © 2020 Evelina. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet var tableView: UITableView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var telephoneLabel: UILabel?
    @IBOutlet var surnameLabel: UILabel?
    
    var contacts = [Contact.init(name: "Anna", surname: "Smith", telephoneNumber: "+79765301988"),
                    Contact.init(name: "Annabel", surname: "Hadid", telephoneNumber: "+79857823841"),
                    Contact.init(name: "Andrew", surname: "Bell", telephoneNumber: "+79642804453"),
                    Contact.init(name: "Aurora", surname: "Taylor", telephoneNumber: "+79330652897"),
                    Contact.init(name: "Conny", surname: "Kraft", telephoneNumber: "+79659842238"),
                    Contact.init(name: "Evelina", surname: "Memetova", telephoneNumber: "+79757763835"),
                    Contact.init(name: "Emil", surname: "Sharp", telephoneNumber: "+7976898564"),
                    Contact.init(name: "Sam", surname: "Appleseed", telephoneNumber: "+79765301000")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.dataSource = self
        tableView?.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {4}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 4
        case 1:
            return 1
        case 2:
            return 2
        case 3:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "A"
        case 1:
            return "C"
        case 2:
            return "E"
        case 3:
            return "S"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        let header = view as! UITableViewHeaderFooterView
        header.backgroundColor = UIColor.gray
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = contacts[indexInArray(indexPath: indexPath)].name
            cell.detailTextLabel?.text = contacts[indexInArray(indexPath: indexPath)].surname
        case 1:
            cell.textLabel?.text = contacts[indexInArray(indexPath: indexPath)].name
            cell.detailTextLabel?.text = contacts[indexInArray(indexPath: indexPath)].surname
        case 2:
            cell.textLabel?.text = contacts[indexInArray(indexPath: indexPath)].name
            cell.detailTextLabel?.text = contacts[indexInArray(indexPath: indexPath)].surname
        case 3:
            cell.textLabel?.text = contacts[indexInArray(indexPath: indexPath)].name
            cell.detailTextLabel?.text = contacts[indexInArray(indexPath: indexPath)].surname
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexInArray(indexPath: indexPath)
        nameLabel?.text = contacts[index].name!
        surnameLabel?.text = contacts[index].surname!
        telephoneLabel?.text = contacts[index].telephoneNumber!
    }
    
    func addNewContact(name:String?, surname:String?, telephoneNumber:String?){
        contacts.append(Contact.init(name: name, surname: surname, telephoneNumber: telephoneNumber))
    }
    
    func indexInArray(indexPath:IndexPath)-> Int{
        
        switch indexPath.section {
        case 0:
            return 0 + indexPath.row
        case 1:
            return 4 + indexPath.row
        case 2:
            return 5 + indexPath.row
        case 3:
            return 7 + indexPath.row
        default:
            return 0
        }
    }
}

