//
//  ViewController.swift
//  Log.Pass.Study.Screen
//
//  Created by Igor Shelginskiy on 05/10/2018.
//  Copyright © 2018 Igor Shelginskiy. All rights reserved.
//

import UIKit

var answer = String()

class TitleViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard name.text != nil else { return answer = "Enter your name" }
        guard password.text != nil else { return answer = "Enter your password" }
        answer = "you are welcome"
    }
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
}

