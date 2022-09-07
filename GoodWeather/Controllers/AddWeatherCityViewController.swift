//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Henrique Alves Batochi on 07/09/22.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        
        if let city = cityNameTextField.text {
            
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&units=imperial&APPID=d738fda6eb94c9be97868ba69fd0fdbd")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            
            Webservice().load(resource: weatherResource) { result in
                
            }
            
            
        }
        
    }
    
    @IBAction func close() {
        self.dismiss(animated: true)
    }
    
}
