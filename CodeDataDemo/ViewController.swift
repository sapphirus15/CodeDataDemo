//
//  ViewController.swift
//  CodeDataDemo
//
//  Created by Ryan on 2022/03/28.
//

import UIKit

class ViewController: UIViewController {
    
    enum Devices: String {
        case iPhone = "iPhone"
        case iPad = "iPad"
        case iMac = "iMac"
        case macbookPro = "macbookPro"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        saveNewUser(1, name: "Danny")
//        getAllUsers()
//        deleteUser(1)
//        getAllUsers()
//
//        saveNewUser(2, name: "Ryan")
//        saveNewUser(3, name: "Nathon")
//        saveNewUser(4, name: "Harry")
//        saveNewUser(5, name: "Tom")
        getAllUsers()
    }

    fileprivate func saveNewUser(_ id: Int64, name: String) {
        CoreDataManager.shared.saveUser(id: id, name: name, age: 16, date: Date(),
                                        devices: [Devices.iMac.rawValue, Devices.iPad.rawValue]) { onSuccess in
            print("saved = \(onSuccess)")
        }
    }
    
    fileprivate func getAllUsers() {
        let users: [Users] = CoreDataManager.shared.getUsers()
        let userName: [String] = users.map({ $0.name! })
        let userDevices: [String]? = users.filter({ $0.name == "Danny" }).first?.devices
        print("allUsers = \(userName)")
        print("Danny's Devices = \(userDevices)")
    }

    fileprivate func deleteUser(_ id: Int64) {
        CoreDataManager.shared.deleteUser(id: id) { onSuccess in
            print("delete = \(onSuccess)")
        }
    }
}

