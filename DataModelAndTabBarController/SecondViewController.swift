//
//  SecondViewController.swift
//  DataModelAndTabBarController
//
//  Created by Palliboina on 17/04/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myDelegate:AppDelegate!

    @IBOutlet weak var pictureView: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /*let app = UIApplication.shared
        myDelegate = app.delegate as? AppDelegate
        
        let selected = myDelegate.selectedPicture ?? 0
        let picture = myDelegate.pictureList[selected]
        let rating = myDelegate.rating[selected] */
        
        let selected = appData.selectedPicture ?? 0
        let picture = appData.pictureList[selected]
        let rating = appData.rating[selected]
        
        slider.value = Float(rating)
        
        pictureView.image = UIImage(named: picture)
        pictureView.contentMode = .scaleAspectFill
        
    }
    
    @IBAction func changeRationg(_ sender: UISlider) {
        var value = round(sender.value)
        slider.value = value
        //let selected = myDelegate.selectedPicture ?? 0
        let selected = appData.selectedPicture ?? 0
        //myDelegate.rating[selected] = Int(value)
        appData.rating[selected] = Int(value)
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
