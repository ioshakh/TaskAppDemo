//
//  HomeVC.swift
//  Task
//
//  Created by Shakhzod Bektemirov on 2022/02/17.
//

import UIKit
import SnapKit
import CoreLocation


class HomeVC:BaseViewController {
    
    private(set) lazy var cityLabel:UILabel = {
       let label = UILabel()
       label.font = UIFont.boldSystemFont(ofSize:30)
       label.textAlignment = .center
       label.textColor = .white
       return label
    }()
    
    private(set) lazy var descriptionLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize:20)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private(set) lazy var weatherIcon:UIImageView = {
       let img = UIImageView()
        img.tintColor = .white
       return img
    }()
    
    private(set) lazy var contentView:infoWeatherView = {
       let view = infoWeatherView()
       return view
    }()
    
    private(set) lazy var windViewInfo:infoWindView = {
       let view = infoWindView()
       return view
    }()
    
    private(set) lazy var activity:UIActivityIndicatorView = {
       let view = UIActivityIndicatorView()
       view.color = .white
       view.style  = .large
       return view
    }()
    
    private(set) lazy var searchField:UITextField = {
       let view = UITextField()
        view.placeholder = "Search placeHolder"
        view.backgroundColor = .lightGray
        view.borderStyle = .roundedRect
        view.autocorrectionType = UITextAutocorrectionType.no
        view.keyboardType = UIKeyboardType.default
        view.returnKeyType = UIReturnKeyType.done
        return view
    }()
   
    var weatherManager = WeatherManager()
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        setEmbedViewsDelegate()
        navViewConfigure()
        locationManager.requestLocation()

      }
    
    private func setEmbedViewsDelegate() {
         searchField.delegate = self
         self.searchField.becomeFirstResponder()
       
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        weatherManager.delegate = self
        windViewInfo.symbolImage.isHidden = true
        contentView.iconImage.isHidden = true
        activity.startAnimating()
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    
    private func navViewConfigure() {
        let share = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(shareTapped))
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.leftBarButtonItems = [add, share]
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(addTappeds))
        navigationController?.navigationBar.barTintColor = UIColor.green
    }
    
    // Functions
    
    @objc func shareTapped() {
        locationManager.requestLocation()
        activity.isHidden = false
        activity.startAnimating()
    }
    
    
    @objc func addTapped() {
        navigationController?.pushViewController(DetailView(), animated:true)
    }
    
    @objc func addTappeds() {
        
        self.searchField.becomeFirstResponder()
        self.searchField.reloadInputViews()
        if searchField.text != "" {
            searchField.endEditing(true)
        }
        else {
             let alert = UIAlertController(title: "Shahar yo'q", message: "Iltimos shaharni kirgizing", preferredStyle: .alert)
             alert.addAction(UIAlertAction(title:"Okay", style: .default, handler: nil))
             DispatchQueue.main.async {
                 self.present(alert, animated: true)
           }
        }
    }
    
   
    @objc func dismissKeyboard() {
        searchField.endEditing(true)
     }
   }



//MARK: - WeatherManagerDelegate

extension HomeVC: WeatherManagerDelegate{
    
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async{
            self.descriptionLabel.text = weather.description
            self.cityLabel.text = weather.cityName
            self.weatherIcon.image = UIImage(systemName: weather.conditionName)
            self.contentView.currentTemp.text = "\(weather.temperatureString)°C"
            self.contentView.minTemp.text = "\(weather.min_temperatureString)°C"
            self.contentView.maxTemp.text = "\(weather.max_temperatureString)°C"
            self.windViewInfo.speedLabel.text = "\(weather.windSpeed) m/s, "
            self.windViewInfo.directionLabel.text = "\(weather.windDirection) direction"
            self.windViewInfo.symbolImage.isHidden = false
            self.contentView.iconImage.isHidden = false
            if self.activity.isHidden == false {
                self.activity.stopAnimating()
                self.activity.isHidden = true
            }
        }
    }
    
    func didFailWithError(error: Error) {
        print(error.localizedDescription)
        let alert = UIAlertController(title: "Hato", message: "Bunday shahar yo'q", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Okay", style: .default, handler: nil))
        DispatchQueue.main.async {
            self.present(alert, animated: true)
            self.activity.isHidden = true
        }
    }
}


///MARK: - UITextFieldDelegate

extension HomeVC: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchField.endEditing(true)
        return true
    }

//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if searchField.text != "" {
//            return true
//        }
//        else {
//            searchField.placeholder = "Type something..."
//            return false
//        }
//    }


    internal func textFieldDidEndEditing(_ textField: UITextField) {
        let city = searchField.text
        if city != "" {
            weatherManager.fetchWeather(cityName: city!)
            activity.isHidden = false
            activity.startAnimating()
        }
        searchField.text = ""
    }
    
}


extension HomeVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            weatherManager.fetchWeather(latitude: lat, longitude: lon)
            activity.isHidden = false
            activity.startAnimating()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}


extension HomeVC {
    
}
