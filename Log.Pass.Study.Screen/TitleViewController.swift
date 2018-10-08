//
//  ViewController.swift
//  Log.Pass.Study.Screen
//
//  Created by Igor Shelginskiy on 05/10/2018.
//  Copyright © 2018 Igor Shelginskiy. All rights reserved.
//

import UIKit

class TitleViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var answer = String()
        if segue.identifier == "mainLog" {
//            guard !(name.text?.isEmpty)! else {
//                answer = "You forgot enter your name"
//                return
//            }
//            guard !(password.text?.isEmpty)! else {
//                answer = "You forgot enter password"
//                return
//            }
//            answer = "you are welcome"
            if (name.text?.isEmpty)! {
                answer = "You forgot enter your name"
            } else if (password.text?.isEmpty)! {
                answer = "You forgot enter password"
            } else {
                answer = "you are welcome"
            }
            
        } else if segue.identifier == "forgName" {
            answer = "enter your name"
        } else if segue.identifier == "forgPass" {
            answer = "enter your password"
        }
       segue.destination.navigationItem.title = answer
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
}

