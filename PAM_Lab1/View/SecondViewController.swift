//
//  SecondViewController.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 2/8/21.
//

import Foundation
import UIKit

protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(myData: String)
}
class SecondViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var textF: UITextField!
    
    var text = ""
    var delegate: MyDataSendingDelegateProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textF.text = text
}
        
   
    
    @IBAction func onBackTap(_ sender: Any) {
        if self.delegate != nil && self.textF.text != nil {
            let dataToBeSent = self.textF.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
   }
    
}




