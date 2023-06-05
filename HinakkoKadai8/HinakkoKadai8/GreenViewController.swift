//
//  GreenViewController.swift
//  HinakkoKadai8
//
//  Created by Hina on 2023/06/01.
//

import UIKit

class GreenViewController :UIViewController {


    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var slider: UISlider!
    

    @IBAction func changeSlider(_ sender: UISlider) {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        //AppDelegateに用意した変数shareDataに値を入れる
        delegate.shareData = slider.value
        label.text = "\(slider.value)"
    }

    //sliderのポインターの動き
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let delegate = UIApplication.shared.delegate as! AppDelegate
        label.text = "\(delegate.shareData)"
        slider.value = delegate.shareData
    }
}
