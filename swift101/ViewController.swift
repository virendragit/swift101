//
//  ViewController.swift
//  swift101
//
//  Created by Virendra Gupta on 17/08/2018.
//  Copyright © 2018 Virendra Gupta. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var initialtextView: UITextField!
    
    var locationManager = CLLocationManager()
    
    
    
    let listofCountry = ["Hyderabad","Raipur","Dehli","Mumbai","Pune","Ahamadabad","surat","Nagpur","Noida","Banglore","Chennai"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        if initialtextView.text != "" && initialtextView.text! != "Type city name"{
            performSegue(withIdentifier: "seque", sender: self)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seque"{
        var secondViewController = segue.destination as! SecondViewController
            secondViewController.myString = initialtextView.text!
            
        }
        else{
            
            
        }
    }
    
    
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return (listofCountry.count)
        
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
     let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = listofCountry[indexPath.row]
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
//    {
//        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 30))
//        //        if (section == integerRepresentingYourSectionOfInterest) {
//        //            headerView.backgroundColor = UIColor.redColor()
//        //        } else {
//        //            headerView.backgroundColor = UIColor.clearColor()
//        //        }
//
//        headerView.backgroundColor = UIColor.white
//        headerView.te
//        return headerView
//    }
    
    
    
    
    func tableView( _ tableView : UITableView,  titleForHeaderInSection section: Int)->String? {
        switch(section) {
        case 0:return "Popular cities"
            
        default :return ""
            
        }
    }
    
    private func tableView (tableView:UITableView , heightForHeaderInSection section:Int)->Float
    {
        
        let title = self.tableView(tableView, titleForHeaderInSection: section)
        if (title == "") {
            return 0.0
        }
        return 20.0
    }
    

    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    
}

