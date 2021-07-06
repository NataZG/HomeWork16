//
//  RGBVC.swift
//  HomeWork16
//
//  Created by Nata on 06.07.2021.
//

import UIKit

class RGBVC: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redTF: UITextField!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenTF: UITextField!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueTF: UITextField!
    @IBOutlet weak var opacitySlider: UISlider!
    @IBOutlet weak var opacityTF: UITextField!
    @IBOutlet weak var color: UIView!
    @IBOutlet weak var doneBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func redSliderAction(_ sender: UISlider) {
        let shortValue = round(Double(sender.value) * 10) / 10
        redTF.text = String(shortValue)
    }
    @IBAction func doneBtnTapped() {
    }
}
