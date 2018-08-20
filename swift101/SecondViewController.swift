//
//  SecondViewController.swift
//  swift101
//
//  Created by Virendra Gupta on 17/08/2018.
//  Copyright © 2018 Virendra Gupta. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var myString = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = myString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
    }
    
    
    @IBAction func loadview(_ sender: Any) {
        
    performSegue(withIdentifier: "sequea", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        var secondViewController = segue.destination as! SecondViewController
//        secondViewController.myString = initialtextView.text!
//
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
