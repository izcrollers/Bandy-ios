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

class MusicianRegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genrePicker: UIPickerView!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    var genrePickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.hideKeyboardWhenTappedAround()
        // Connect data:
        genrePicker.delegate = self
        genrePicker.dataSource = self
        
        genrePickerData = ["Alternative", "Blues", "Classical", "Country", "Dance", "Easy Listening", "Electronic", "Folk", "Jazz", "Latin", "Opera", "Pop", "Soul", "Reggae", "Rock"]
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genrePickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genrePickerData[row]
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
