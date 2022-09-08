//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Henrique Alves Batochi on 07/09/22.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        /*
        let resource = Resource<WeatherResponse>(url: URL(string: "https://api.openweathermap.org/data/2.5/weather?q=curitiba&units=imperial&APPID=d738fda6eb94c9be97868ba69fd0fdbd")!) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        Webservice().load(resource: resource) { weatherResponse in
            if let weatherResponse = weatherResponse {
                print(weatherResponse)
            }*/
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLabel.text = "Houston"
        cell.temperatureLabel.text = "70°"
        return cell
    }
}
