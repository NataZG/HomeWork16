//
//  RGBVC.swift
//  HomeWork16
//
//  Created by Nata on 06.07.2021.
//

import UIKit

class RGBVC: UIViewController {

    weak var delegate: ColorToChangeVCDelegate?

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
        setUpView()

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
        guard let textGreen = greenTF.text else { return }
        guard let textBlue = blueTF.text else { return }
        let volGreen = Float(textGreen)
        let volBlue = Float(textBlue)
        let shortValue = round(Double(sender.value) * 10) / 10
        redTF.text = String(shortValue)
        color.backgroundColor = UIColor(red: CGFloat(shortValue), green: CGFloat(volGreen ?? 0), blue: CGFloat(volBlue ?? 0), alpha: 1)
    }


    @IBAction func greenSliderAction(_ sender: UISlider) {
        guard let textRed = redTF.text else { return }
        guard let textBlue = blueTF.text else { return }
        let volRed = Float(textRed)
        let volBlue = Float(textBlue)
        let shortValueGreen = round(Double(sender.value) * 10) / 10
        greenTF.text = String(shortValueGreen)
        color.backgroundColor = UIColor(red: CGFloat(volRed ?? 0), green: CGFloat(shortValueGreen), blue: CGFloat(volBlue ?? 0), alpha: 1)
    }

    @IBAction func blueSliderAction(_ sender: UISlider) {
        guard let textRed = redTF.text else { return }
        guard let textGreen = greenTF.text else { return }
        let volRed = Float(textRed)
        let volGreen = Float(textGreen)
        let shortValueBlue = round(Double(sender.value) * 10) / 10
        blueTF.text = String(shortValueBlue)
        color.backgroundColor = UIColor(red: CGFloat(volRed ?? 0), green: CGFloat(volGreen ?? 0), blue: CGFloat(shortValueBlue), alpha: 1)
    }


    @IBAction func opacitySliderAction(_ sender: UISlider) {
        guard let textRed = redTF.text else { return }
        guard let textGreen = greenTF.text else { return }
        guard let textBlue = blueTF.text else { return }
        let volRed = Float(textRed)
        let volGreen = Float(textGreen)
        let volBlue = Float(textBlue)
        let shortValueOpacity = round(Double(sender.value) * 10) / 10
        opacityTF.text = String(shortValueOpacity)
        color.backgroundColor = UIColor(red: CGFloat(volRed ?? 0), green: CGFloat(volGreen ?? 0), blue: CGFloat(volBlue ?? 0), alpha: CGFloat(shortValueOpacity))
    }


    @IBAction func redTFAction(_ sender: Any) {
        if let text = redTF.text,
            let vol = Float(text) {
            redSlider.value = vol
        }
    }


    @IBAction func greenTFAction(_ sender: Any) {
        if let text = greenTF.text,
            let vol = Float(text) {
            greenSlider.value = vol
        }
    }


    @IBAction func blueTFAction(_ sender: Any) {
        if let text = blueTF.text,
            let vol = Float(text) {
            blueSlider.value = vol
        }
    }


    @IBAction func opacityTFAction(_ sender: Any) {
        if let text = opacityTF.text,
            let vol = Float(text) {
            opacitySlider.value = vol
        }
    }

    private func setUpView() {
        self.color.layer.cornerRadius = self.color.bounds.height / 4
    }

    @IBAction func doneBtnTapped() {
        delegate?.update(color: color.backgroundColor!)
        navigationController?.popToRootViewController(animated: true)
    }
}
