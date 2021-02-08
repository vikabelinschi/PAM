//
//  ViewController.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 2/4/21.
//import UIKit

import UIKit
class FirstViewController: UIViewController, MyDataSendingDelegateProtocol {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var labelF: UILabel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is SecondViewController
           {
               let vc = segue.destination as? SecondViewController
            vc?.text = textField.text ?? ""
            vc?.delegate = self;
          
           }
        
    }
 
    
    func sendDataToFirstViewController(myData: String) {
        self.labelF?.text = "New message: \(myData)"

        
      }
    
      }
            
    
    
    

