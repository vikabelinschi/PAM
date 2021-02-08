//
//  ViewController.swift
//  PAM_Lab1
//
//  Created by Victoria Belinschi on 2/4/21.
//
import UIKit


class FirstViewController: UIViewController, MessageDelegate
{@IBOutlet var googleLoginBtn: UIButton!
   
    override func viewDidLoad()
       {
           super.viewDidLoad()
    }
   

    @IBAction func onButtonTap(_ sender: UIButton)
    {
        // Create the view controller
        let vc = SecondViewController(nibName: "SecondViewController", bundle: nil)
        
        // Set the text property, for "Passing Data Forward With Properties (A → B)"
        vc.text = "Next level blog photo booth, tousled authentic tote bag kogi"
        
        // Set the tightly-coupled property for "Passing Data Back With A Property"
        vc.ViewController = self
        
        // Set the delegate for "Passing Data Back With Delegation"
        vc.delegate = self
        
        // Define the closure for "Passing Data Back With A Closure"
        vc.completionHandler = { text in
            
            print("text = \(text)")
            
            return text.count
        }
        
        // Push the view controller onto the navigation stack
        navigationController?.pushViewController(vc, animated: true)
    }
    
    /**
          This segue is invoked when you press button B in this view controller
    */
    
    /**
         This function is invoked from the secondary view controller class,
         for "Passing Data Back With A Property"
    */
    func onUserAction(data: String)
    {
        print("Data received: \(data)")
    }
    
    func onMessageReady(type: String)
    {
        print("Alo alo hello \(type)")
    }
    

}

