//
//  ViewController.swift
//  ConvertidorTemperatura
//
//  Created by user190825 on 8/16/21.
//

import UIKit

class ViewController: UIViewController {
    let temperatureConverter = TemperatureConverter()
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func convertToFarenheit(_ sender: UIButton) {
        fahrenheitTextField.text = ""
        if let celsiusValue = celsiusTextField.text {
            if !celsiusValue.isEmpty {
                let fahrenheitValue = temperatureConverter.convert(temperature:Temperature(value: Float16(celsiusValue)!, unit:Temperature.Unit.CELSIUS), unitToConvert: Temperature.Unit.FAHRENHEIT)
                print("Farenheit " + String(fahrenheitValue.value))
                fahrenheitTextField.text = String(fahrenheitValue.value)
                } else {
                    print("Celsius value is empty")
                }
        }
    }
}

