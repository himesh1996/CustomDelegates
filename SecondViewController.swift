//
//  SecondViewController.swift
//  ProtocolDelegate&NotificationCenter
//
//  Created by Himesh Soni on 02/11/18.
//  Copyright © 2018 Himesh Soni. All rights reserved.
//

import UIKit

protocol passData {
//    func personDetails(name: String, address: String, contact: String)
    func personDetails(dictionary:[String: String])
}

class SecondViewController: UIViewController {

    @IBOutlet var txtName:UITextField!
    @IBOutlet var txtAddress:UITextField!
    @IBOutlet var txtContact:UITextField!
    
    var delegate: passData!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func btnSaveAction(_ Sender : UIButton) {
//        delegate.personDetails(name: txtName.text!, address: txtAddress.text!, contact: txtContact.text!)
        let dataDic = ["name": txtName.text, "address": txtAddress.text, "contact": txtContact.text]
        
        delegate.personDetails(dictionary: dataDic as! [String : String])
    }
}
