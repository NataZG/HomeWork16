//
//  ColorToChangeVC.swift
//  HomeWork16
//
//  Created by Nata on 06.07.2021.
//

import UIKit

protocol ColorToChangeVCDelegate: AnyObject {
    func update(color: UIColor)
}


class ColorToChangeVC: UIViewController {

    @IBOutlet weak var changeColor: UIButton!
    @IBOutlet weak var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? RGBVC else { return }
        destination.delegate = self
    }

    @IBAction func changeColorBtn() {
    }
}

extension ColorToChangeVC: ColorToChangeVCDelegate {
    func update(color: UIColor){
        viewColor.backgroundColor = color
    }


}
