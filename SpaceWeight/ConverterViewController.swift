//
//  FirstViewController.swift
//  SpaceWeight
//
//  Created by Davelaar,Clinton B on 11/12/19.
//  Copyright © 2019 Davelaar,Clinton B. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var earthWeightTF: UITextField!
    @IBOutlet weak var venusWeughtLBL: UILabel!
    @IBOutlet weak var marsWeightLBL: UILabel!
    @IBOutlet weak var jupiterWeightLBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convert(_ sender: Any) {
        let weightRates = [0.91, 0.38, 2.34]
        let lblArray = [venusWeughtLBL, marsWeightLBL, jupiterWeightLBL]
        let planets = ["Venus", "Mars", "Jupiter"]
        if let earthWeight = Double (earthWeightTF.text!){
            if earthWeight > 0.0{
                WeightsModel.shared.addWeight(earthWeight)
                for i in 0 ..< weightRates.count{
                    lblArray[i]?.text = "\(WeightsModel.shared.convert(earthWeight: earthWeight, to: planets[i]))"
                }
            }
        }else{
            let ac = UIAlertController(title: "Weight error", message: "Earth weight must be numeric", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
            ac.addAction(action)
            self.present(ac, animated: true)
        }
    }
    
}

