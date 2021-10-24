//
//  DetailsCarController.swift
//  AutoRace
//
//  Created by Alberto Hoyos on 21/10/21.
//

import Foundation
import UIKit

class DetailsCarController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var car : Car = Car(name: "", carPrev: "", carModel: [], speed: "", acceleration: "", handling: "", weight: "", drivers: [])
    
    var drivers : [Driver] = []
    
    @IBOutlet weak var imgCar: UIImageView!
    @IBOutlet weak var lblSpeed: UILabel!
    @IBOutlet weak var lblAcceleration: UILabel!
    @IBOutlet weak var lblHandling: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var tvDrivers: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return drivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellDriver") as! CellDriverController
        cell.imgDriver.image = UIImage(named: drivers[indexPath.row].photo!)
        cell.lblDriverName.text = drivers[indexPath.row].name
        cell.lblNationality.text = drivers[indexPath.row].nationality
        cell.lblTime.text = drivers[indexPath.row].time
        cell.lblPosition.text = drivers[indexPath.row].position
        return cell
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        var carSec : [UIImage] = []
        
        for asset in car.carModel {
            let sec = UIImage(named: asset)
            carSec.append(sec!)
        }
        
        self.title = car.name

        imgCar.animationImages = carSec
        imgCar.animationDuration = 2
        imgCar.startAnimating()
        
        let speedStr = "Speed: "
        let accelerationStr = "Acceleration: "
        let handlingStr = "Handling: "
        let weightStr = "Weight: "
     
        lblSpeed.text = "\(speedStr) \(car.speed!)"
        lblAcceleration.text = "\(accelerationStr) \(car.acceleration!)"
        lblHandling.text = "\(handlingStr) \(car.handling!)"
        lblWeight.text = "\(weightStr) \(car.weight!)"
    }
}
