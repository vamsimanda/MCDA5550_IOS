//
//  GameViewController.swift
//  ClassProject1_Jul13
//
//  Created by vamsi manda on 2019-07-13.
//  Copyright © 2019 vamsi manda. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var ResultBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func genericButtonAction(_ sender: UIButton) {
        switch sender.tag {
        case 101:
            ResultBox.text = "Correct Answer"
            print("You win")
        default:
            ResultBox.text = "Wrong Answer"
            showAlert()
        }
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "Sorry, You Lost", message: "Please try again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
