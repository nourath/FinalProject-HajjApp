//
//  HajjLoginViewController.swift
//  FinalProject-HajjApp
//
//  Created by Noura Althenayan on 05/01/2021.
//

import UIKit

class HajjLoginViewController: UIViewController {

    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginButtonTapped(_ sender: DesignableButton) {
        transitionToMainTabScreen()
    }
    
    func transitionToMainTabScreen() {
        
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        let mainTabVC =  storyboard.instantiateViewController(identifier: "tabBar")
         
         view.window?.rootViewController = mainTabVC
         view.window?.makeKeyAndVisible()
         
     }

}
