//
//  LabelRegisterViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 09/12/2018.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit

class LabelRegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var labelNameTextField: UITextField!
    @IBOutlet weak var genrePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
//    @IBAction func registerButton(_ sender: UIButton) {
//        apollo.perform(mutation: NewLabel(email: emailTextField, password: passwordTextField, name: labelNameTextField, subscribing_type: "classique", favorite_genre: genrePicker, contactable: 0)) { (result, error) in
//            print(result?.data?.newMucisian?)
//            show(LoginViewController, sender: UIButton)
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
