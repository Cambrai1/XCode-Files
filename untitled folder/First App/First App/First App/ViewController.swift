//
//  ViewController.swift
//  First App
//
//  Created by Samuel Mark Jones on 2/4/18.
//  Copyright © 2018 Samuel Mark Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageButtonPress: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI(){
        view.backgroundColor = lightOn ? .white : .black
        messageLabel.textColor = lightOn ? .black : .white
    }
    
    
    @IBAction func doButtonTap(_ sender: Any) {
        print("Button touched!")
        lightOn = !lightOn
        messageLabel.text = "The spaghetti is cooked!"
        messageButtonPress.setTitle("ravioli", for: .normal)
        updateUI()
    }
}

