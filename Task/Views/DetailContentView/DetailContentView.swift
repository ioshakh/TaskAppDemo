//
//  DetailContentView.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/18.
//

import Foundation
import SnapKit
import UIKit
import CoreLocation

class detailView:UIView {
    
    var weatherManager = WeatherManager()
    var locationManager = CLLocationManager()
    
    private(set) lazy var detailContentView:UIView = {
       let view = UIView()
       return view
    }()
    
    private(set) lazy var detailStackView:UIStackView = {
       let view = UIStackView()
        view.distribution = .fillProportionally
        view.axis = .vertical
        view.spacing = 6
       return view
    }()
    
    private(set) lazy var rightLabel:UILabel = {
       let label = UILabel()
       label.text = "Right now"
        label.font = UIFont.systemFont(ofSize:15)
       return label
    }()
    
    private(set) lazy var gradusLabel:UILabel = {
       let label = UILabel()
       label.text = "15°C"
       label.font = UIFont.boldSystemFont(ofSize:40)
       return label
    }()
    
    private(set) lazy var temperatureLabel:UILabel = {
       let label = UILabel()
        label.font = UIFont.systemFont(ofSize:14)
        label.text = "Mostly Sunny"
       return label
    }()
    
    private(set) lazy var pinLabel:UILabel = {
       let label = UILabel()
        
        label.text = "Porland"
        label.textColor = UIColor.gray
        label.font = UIFont.systemFont(ofSize:12)
       return label
    }()
    
    
    private(set) lazy var PinImageView:UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName:"sun.min.fill")
        img.contentMode = .scaleAspectFit
        img.tintColor = UIColor.orange
        return img
    }()
    
    private(set) lazy var plusButton:UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 17.5
        button.setImage(UIImage(systemName:"plus"), for:.normal)
        button.backgroundColor = .lightGray
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
         
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension detailView: WeatherManagerDelegate{
    
    
    func didFailWithError(error: Error) {
        print(error.localizedDescription)
        let alert = UIAlertController(title: "Hato", message: "Bunday shahar yo'q", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Okay", style: .default, handler: nil))
        DispatchQueue.main.async {
           
        }
    }
    
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async{
            self.gradusLabel.text = "\(weather.max_temperatureString)°C"
            }
        }
    }


extension detailView: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
           
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
