//
//  ViewController.swift
//  iFit
//
//  Created by Mohammad Abd El-Fattah Mohammd on 17/03/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lblweight: UILabel!
    @IBOutlet weak var lblgender: UILabel!
    @IBOutlet weak var lblheight: UILabel!
    @IBOutlet weak var lblresult: UILabel!
    @IBOutlet weak var lblmassindex: UILabel!
    @IBOutlet weak var lblwestatus: UILabel!
    
    @IBOutlet weak var lblwht: UILabel!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var wht: UITextField!
    @IBOutlet weak var height: UITextField!
    
    @IBOutlet weak var result: UITextField!
    
    @IBOutlet weak var bmass: UITextField!
    
    @IBOutlet weak var wstatus: UITextField!
    
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var A:Int = 0
    @IBAction func segmafe(_ sender: Any) {
        A = Int(gender.selectedSegmentIndex)
    }

    
  
    @IBAction func Go (_ sender: Any) {
        var wh:Int = Int(wht.text!)!
        var hei:Int  = Int(height.text!)!
        /* Meteric Height */
        var mhei :Float = Float(hei) / 100
        /*Weight Status */
        var awstatus:String = String()
        /*Ideal Weight Result*/
        var bres:Int = Int()
        /*Body Mass Index*/
        var abmi:Float = Float()
        if A == 0 {
             bres = hei - 100
             abmi = Float(wh) / (mhei * mhei)
        }
        if A == 1 {
               bres = hei - 90
               abmi = Float(wh) / ((mhei - 0.10) * (mhei - 0.10))
        }
        if abmi < 18.5 {
            awstatus = "UnderWeight"
        }
        else if ((18.5 < abmi )&&(24.9 > abmi)){
            awstatus = "Normal Weight"
        }
        else if ((25.0 < abmi )&&(29.9 > abmi)){
            awstatus = "Overweight"
        }
        else if ((30.0 < abmi )&&(34.9 > abmi)){
            awstatus = "Obesity Class I"
        }
        else if ((35.0 < abmi )&&(39.9 > abmi)){
            awstatus = "Obesity Class II"
        }
        else if 40.0 < abmi {
            awstatus = "Obesity Class III"
        }
        
        wstatus.text = String(awstatus)
        result.text = String(bres)
        bmass.text  = String(abmi)
    }
    
    @IBAction func reset(_ sender: Any) {
        wstatus.text = ""
        result.text = ""
        bmass.text = ""
        wht.becomeFirstResponder()
        height.becomeFirstResponder()
        gender.becomeFirstResponder()
    }
    
    
    
    
    


}

