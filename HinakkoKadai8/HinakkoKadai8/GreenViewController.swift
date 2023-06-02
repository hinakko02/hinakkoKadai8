//
//  GreenViewController.swift
//  HinakkoKadai8
//
//  Created by Hina on 2023/06/01.
//

import UIKit

class GreenViewController :UIViewController {


    @IBOutlet weak var greenLabel: UILabel!

    @IBOutlet weak var slider: UISlider!
    

    @IBAction func changeButton(_ sender: UISlider) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        //AppDelegateに用意した変数shareDataに値を入れる
        delegate.shareData = "\(slider.value)"
        greenLabel.text = "\(slider.value)"
    }

    //sliderのポインターの動き
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let delegate = UIApplication.shared.delegate as? AppDelegate
        greenLabel.text = delegate?.shareData
        delegate?.sliderPoint = slider
    }
    //Labelの継承
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.sliderPoint.value = slider.value
    }
}
