//
//  RedirectViewController.swift
//  Bandy
//
//  Created by Julien Kessali on 11/12/2018.
//  Copyright © 2018 Bandy. All rights reserved.
//

import UIKit

class RedirectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        apollo.fetch(query: RedirectUser(user_id: user_id)) { (result, error) in
            if (result = "musician") {
                show(vc: MusicienProfil, sender: <#T##Any?#>)
            }
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
