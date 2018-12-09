//
//  LoginViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 17-11-27.
//  Copyright © 2017 Bandy. All rights reserved.
//

import Alamofire
import Apollo
import UIKit

var tokenarray = [""]
var token = tokenarray[5]
var user_id = tokenarray[9]
//var user_id =

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textFieldLogin: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonLogin(_ loginButton: UIButton) {

        //creating parameters for the post request
        let parameters: Parameters=[
            "email":textFieldLogin.text!,
            "password":textFieldPassword.text!,
            ]
        
        //Sending http post request
        Alamofire.request("https://bandy.tech/graphql/login", method: .post, parameters: parameters, encoding:JSONEncoding.default).responseString
        {
                response in
                //printing response
            
                print(response)
                //getting the json value from the server
                if let result = response.result.value {
                    //displaying the message in label
                    tokenarray = result.components(separatedBy: "\"")
                    self.labelMessage.text = "connexion"
            }
        }
    }
}
