//
//  ViewController.swift
//  HW4
//
//  Created by Artem Lapov on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var exampleOfColor: UIView!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    @IBOutlet var redPercentLabel: UILabel!
    @IBOutlet var greenPercentLabel: UILabel!
    @IBOutlet var bluePercentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        exampleOfColor.layer.cornerRadius = exampleOfColor.frame.width / 15
        exampleOfColor.backgroundColor = setBackgroundColor()

    }

    @IBAction func redSliderAction() {
        redSlider.value = round(redSlider.value * 100) / 100
        redPercentLabel.text = redSlider.value.formatted()
        exampleOfColor.backgroundColor = setBackgroundColor()
    }

    @IBAction func greenSliderAction() {
        greenSlider.value = round(greenSlider.value * 100) / 100
        greenPercentLabel.text = greenSlider.value.formatted()
        exampleOfColor.backgroundColor = setBackgroundColor()
    }

    @IBAction func blueSliderAction() {
        blueSlider.value = round(blueSlider.value * 100) / 100
        bluePercentLabel.text = blueSlider.value.formatted()
        exampleOfColor.backgroundColor = setBackgroundColor()
    }

    private func setBackgroundColor() -> UIColor {
        return UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

}

