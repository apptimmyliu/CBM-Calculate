//
//  CbmViewController.swift
//  CBM  Calculate
//
//  Created by Timmy on 2023/12/11.
//

import UIKit

class CbmViewController: UIViewController {

    
    @IBOutlet weak var lengthTextField: UITextField!
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var cbmLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func calculate(_ sender: Any) {
        if let lengthText = lengthTextField.text,
           let widthText = widthTextField.text,
           let heightText = heightTextField.text,
           let length = Double(lengthText),
           let width  = Double(widthText),
           let height = Double(heightText){
           let lengthMeter = length / 100
           let widthMeter  = width / 100
           let heightMeter = height / 100
           let cbm = lengthMeter * widthMeter * heightMeter
           cbmLabel.text = String(format:  "%.2f", cbm)
                                        //小數點第二位
        }
        //當你按下button的時候鍵盤會收起來
        view.endEditing(true)
        
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
