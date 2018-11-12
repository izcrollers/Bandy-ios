//
//  LoginTestViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 30/05/2018.
//  Copyright © 2018 Bandy. All rights reserved.
//

import Foundation
import Alamofire
import UIKit
import Apollo

class TestLoginViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLogin(_ loginButton: UIButton) {
        }
    //Button action
    /*@IBAction func buttonRegister(_ sender: UIButton) {
     
     //creating parameters for the post request
     let parameters: Parameters=[
     "login":textFieldLogin.text!,
     "password":textFieldPassword.text!,
     ]
     
     //Sending http post request
     Alamofire.request("localhost/app/register.php", method: .post, parameters: parameters).responseJSON
     {
     response in
     //printing response
     print(response)
     
     //getting the json value from the server
     if let result = response.result.value {
     
     //converting it as NSDictionary
     let jsonData = result as! NSDictionary
     
     //displaying the message in label
     self.labelMessage.text = jsonData.value(forKey: "message") as! String?
     }
     }
     
     }*/

}

