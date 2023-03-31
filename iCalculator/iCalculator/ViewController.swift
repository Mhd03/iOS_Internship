//
//  ViewController.swift
//  iCalculator
//
//  Created by Mohammad Abd El-Fattah Mohammd on 15/03/2023.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var txtNum1: UITextField!
    
    @IBOutlet weak var txtNum2: UITextField!
    
    @IBOutlet weak var txtcalcres: UITextField!
    
    @IBOutlet weak var txtnum1oddoreven: UITextField!
    
    @IBOutlet weak var txtnum2oddoreven: UITextField!
    
    @IBOutlet weak var txtnum1fac: UITextField!
    
    @IBOutlet weak var txtnum2fac: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func add(_ sender: Any)
{
        var  Num1:Int = Int(txtNum1.text!)!
        var  Num2:Int = Int(txtNum2.text!)!
        var  calcRes:Int  = Num1 + Num2
        var  aRes:String = String(calcRes)
        txtcalcres.text = aRes
}
   
    
    @IBAction func sub(_ sender: Any)
{
        var  Num1:Int = Int(txtNum1.text!)!
        var  Num2:Int = Int(txtNum2.text!)!
        var  calcRes:Int  = Num1 - Num2
        var  bRes:String = String(calcRes)
        txtcalcres.text = bRes
}
  
    @IBAction func multi(_ sender: Any)
{
        var  Num1:Int = Int(txtNum1.text!)!
        var  Num2:Int = Int(txtNum2.text!)!
        var  calcRes:Int  = Num1 * Num2
        var  cRes:String = String(calcRes)
        txtcalcres.text = cRes
}
    
    @IBAction func dev(_ sender: Any)
{
        var  Num1:Float = Float(txtNum1.text!)!
        var  Num2:Float = Float(txtNum2.text!)!
        var  calcRes:String
        if Num2 != 0{
            calcRes = String( Num1 / Num2 )
        }
        else
        {
            calcRes = "Can mot Divison by zero"
        }
        txtcalcres.text = String(calcRes)
}
    
    
    
  
    @IBAction func oddoreven(_ sender: Any)
{
        var  Num1:Int = Int(txtNum1.text!)!
        var  Num2:Int = Int(txtNum2.text!)!
        var num1oddoreven:String
        var num2oddoreven:String
        if   Num1 % 2 == 0
        {
            num1oddoreven = "Number 1 Is Even"
        }
        else
        {
            num1oddoreven = "Number 1 Is Odd"
        }
        if   Num2 % 2 == 0
        {
            num2oddoreven = "Number 2 Is Even"
        }
        else
        {
            num2oddoreven = "Number 2 Is Odd"
        }
        
    txtnum1oddoreven.text = String(num1oddoreven)
    txtnum2oddoreven.text = String(num2oddoreven)
}
    
    
   
    @IBAction func fac(_ sender: Any)
    {
        let  Num1:Int = Int(txtNum1.text!)!
        let  Num2:Int = Int(txtNum2.text!)!
        func calcfac1(of Num1: Int) -> Int
        {
            if Num1 == 1
            {
                return 1
            }else{
             return   Num1 * calcfac1(of:Num1 - 1)
            }
        }
        let fac1res = calcfac1(of: Num1)
        txtnum1fac.text = String(fac1res)
      
        func calcfac2(of Num2: Int) -> Int
        {
            if Num2 == 1
            {
                return 1
            }else{
             return   Num2 * calcfac2(of:Num2 - 1)
            }
        }
        let fac2res = calcfac2(of: Num2)
        txtnum2fac.text = String(fac2res)
        
    }
        /*
        var  Num1:Int = Int(txtNum1.text!)!
       // var  Num2:Int = Int(txtNum2.text!)!
       /* var  fac1:Int = Int( Num1*fac( a: Num1 - 1 ) ) */
      //  var  fac2:String
        var  fac1res:String
        func fac(a: Int) -> Int {
          /*  var  fac1:Int = Int(Num1*fac(a: Num1 - 1)) */
            var Num1 = a
            if(Num1 == 1)
            {
                return 1
            }
            else
            {
                return Num1*fac(a: Num1 - 1)
                
            }
            let fac1res = String(fac(a:Num1))
           // var fac1res:String = Int(fac1res)
            txtnum1fac.text = String(fac1res)
            */
        
       
    
        
        
    
       
        
        


    @IBAction func reset(_ sender: Any) {
        txtNum1.text = ""
        txtNum2.text = ""
        txtcalcres.text = ""
        txtnum1fac.text = ""
        txtnum2fac.text = ""
        txtnum1oddoreven.text = ""
        txtnum2oddoreven.text = ""
        txtNum1.becomeFirstResponder()
    }

}
