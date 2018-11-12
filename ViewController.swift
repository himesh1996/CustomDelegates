//
//  ViewController.swift
//  ProtocolDelegate&NotificationCenter
//
//  Created by Himesh Soni on 02/11/18.
//  Copyright © 2018 Himesh Soni. All rights reserved.
//

import UIKit

class ViewController: UIViewController, passData {
  
    

    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblAddress: UILabel!
    @IBOutlet var lblContact: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    func personDetails(name: String, address: String, contact: String) {
//        lblName.text = name
//        lblAddress.text = address
//        lblContact.text = contact
//    }
    
    func personDetails(dictionary: [String : String]) {
        lblName.text = dictionary["name"]
        lblAddress.text = dictionary["address"]
        lblContact.text = dictionary["contact"]
    }

    @IBAction func btnNextAction(_ Sender: UIButton) {
    
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

