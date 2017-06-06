//
//  LoginViewController.swift
//  Amaysim
//
//  Created by Marlon Boncodin on 06/06/2017.
//  Copyright © 2017 Marlon Boncodin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var helper: LoginHelper!
    @IBOutlet weak var mobileTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func login(_ sender: UIButton) {
        
        if helper.textFieldsCompleted(textFields: [mobileTF, passwordTF]){
            helper.validateHardCodedJSON {
                self.performSegue(withIdentifier: helper.getIdSegueToSubscription(), sender: self)
            }
        }else{
            let alert = UIAlertController(title: Strings().empty, message: Strings().complete_fields, preferredStyle: .alert)
            let cancel = UIAlertAction(title: Strings().cancel, style: .cancel, handler: nil)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func endEditing(_ sender: UIControl) {
        self.view.endEditing(true)
    }

}

extension LoginViewController: UITextFieldDelegate{

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            return textField.resignFirstResponder()
    }
    
}
