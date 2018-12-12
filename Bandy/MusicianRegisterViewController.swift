//
//  MusicianRegisterViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 09/12/2018.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit
import Apollo
import Alamofire
import CoreData

class MusicianRegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genrePicker: UIPickerView!
    @IBOutlet weak var bandPicker: UIPickerView!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    @IBAction func registerButton(_ sender: UIButton) {
//        apollo.perform(mutation: NewMusician(email: emailTextField, password: passwordTextField, name: nameTextField, genre: genrePicker, band: bandPicker, countr: countryTextField, city: cityTextField)) { (result, error) in
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
