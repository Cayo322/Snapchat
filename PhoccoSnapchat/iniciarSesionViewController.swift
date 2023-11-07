//
//  ViewController.swift
//  PhoccoSnapchat
//
//  Created by Cayo on 7/11/23.
//

import UIKit
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password:
            passwordTextField.text!) { (user, error) in
        print("Intentando Iniciar Sesion")
        if error != nil {
            print("Se presento el siguient error: \(error)")
        }else{
            print("Inicio de sesion exitoso")
        }
    }
    }
    
}

