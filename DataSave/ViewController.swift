//
//  ViewController.swift
//  DataSave
//
//  Created by user on 9.11.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var surnameText: UITextField!
    @IBOutlet weak var hereText: UITextView!
    @IBOutlet weak var surnameHere: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storeName = UserDefaults.standard.object(forKey: "name")
        let storeSurname = UserDefaults.standard.object(forKey: "surname")
        
        if let myName = storeName as? String{
            hereText.text = "Name: \(myName)"
        }
        
        
        if let mySurname = storeSurname as? String{
            surnameHere.text = "Surname: \(mySurname)"
        }
        
        
    }

    @IBAction func saveclick(_ sender: Any) {
    
        UserDefaults.standard.set(nameText.text!, forKey: "name")
        UserDefaults.standard.set(surnameText.text!, forKey: "surname")
        
        hereText.text = "Name: \(nameText.text!)"
        surnameHere.text = "Surname: \(surnameText.text!)"
        
    }
    
}

