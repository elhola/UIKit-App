//
//  SecondViewController.swift
//  MyApp
//
//  Created by Yaroslav G on 07.06.2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func showAlert(){
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is MyApp",
            preferredStyle:.alert)
        // создаем кнопку OK
        let actionOK = UIAlertAction(title: "OK", style: .default, handler: nil)
        // создаем кнопку Cancel
        let actionCancel = UIAlertAction(title: "Cancel", style: .cancel,
                                         handler: nil)
        // Добавляем обе кнопки в Alert Controller
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        self.present(alertController, animated: true, completion: nil)
    }
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
}
