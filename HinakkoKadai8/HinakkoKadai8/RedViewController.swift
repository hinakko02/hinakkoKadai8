//
//  RedViewController.swift
//  HinakkoKadai8
//
//  Created by Hina on 2023/06/01.
//

import UIKit

class RedViewController :UIViewController {


    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var slider: UISlider!

    @IBAction func changeSlider(_ sender: UISlider) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        //AppDelegateに用意した変数shareDataに値を入れる
        delegate.shareData = "\(slider.value)"
        redLabel.text = "\(slider.value)"
    }

    //Labelの継承
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let delegate = UIApplication.shared.delegate as? AppDelegate
        redLabel.text = delegate?.shareData
        delegate?.sliderPoint = slider
    }
    //sliderのポインターの動き
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.sliderPoint.value = slider.value
    }
}
