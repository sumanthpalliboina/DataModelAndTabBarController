//
//  ViewController.swift
//  DataModelAndTabBarController
//
//  Created by Palliboina on 17/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var myDelegate:AppDelegate!

    @IBAction func goToPicture(_ sender: UIButton) {
        //myDelegate.selectedPicture = sender.tag
        appData.selectedPicture = sender.tag
        performSegue(withIdentifier: "showPicture", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*var app = UIApplication.shared
        myDelegate = app.delegate as? AppDelegate*/
        
    }


}

