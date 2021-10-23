//
//  ViewController.swift
//  AutoRace
//
//  Created by Alexia Ruiz Quiroz on 20/10/21.
//

import UIKit
import AVFoundation

class ListCarsController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var playerSound = AVAudioPlayer()
    let urlSound = Bundle.main.url(forResource: "sound", withExtension: "wav")
    var cars : [Car] = []
    @IBOutlet weak var tvCars: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 135
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellCar") as! CellCarController
        cell.lblName.text = cars[indexPath.row].name
        cell.imgPrev.image = UIImage(named: cars[indexPath.row].carPrev!)
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destiny = segue.destination as! DetailsCarController
        let destiny2 = segue.destination as! DetailsCarController
        
        destiny.car = cars[tvCars.indexPathForSelectedRow!.row]
        
        destiny2.drivers = cars[tvCars.indexPathForSelectedRow!.row].drivers
    }
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        self.title = "Auto Race"
        
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            playerSound = try AVAudioPlayer(contentsOf: urlSound!, fileTypeHint: AVFileType.wav.rawValue)
            playerSound.numberOfLoops = -1
            playerSound.volume = 0.2
            playerSound.play()
        } catch let error {
            print(error.localizedDescription)
        }
        //Drivers
        //Car 1
        let driver1 = Driver(photo: "driver1", name: "Tom", time: "01:25.18", nationality: "USA", position: "1°")
        let driver2 = Driver(photo: "driver15", name: "Ingrid", time: "01:31.32", nationality: "Norway", position: "2°")
        let driver3 = Driver(photo: "driver11", name: "Rachel", time: "01:33.13", nationality: "Canada", position: "3°")
        //Car 2
        let driver4 = Driver(photo: "driver2", name: "Adelaide", time: "01:52.09", nationality: "France", position: "1°")
        let driver5 = Driver(photo: "driver13", name: "Vicenzo", time: "01:54.46", nationality: "Italy", position: "2°")
        let driver6 = Driver(photo: "driver14", name: "Bill", time: "01:58.27", nationality: "South Africa", position: "3°")
        //Car 3
        let driver7 = Driver(photo: "driver10", name: "Juan", time: "01:53.31", nationality: "Mexico", position: "1°")
        let driver8 = Driver(photo: "driver3", name: "Arya", time: "01:56.22", nationality: "India", position: "2°")
        let driver9 = Driver(photo: "driver6", name: "Francisco", time: "01:59.51", nationality: "Argentina", position: "3°")
        //Car 4
        let driver10 = Driver(photo: "driver5", name: "Scott", time: "01:48.17", nationality: "UK", position: "1°")
        let driver11 = Driver(photo: "driver7", name: "Arnold", time: "01:50.02", nationality: "Germany", position: "2°")
        let driver12 = Driver(photo: "driver8", name: "Mariana", time: "01:53.50", nationality: "Colombia", position: "3°")
        //Car 4
        let driver13 = Driver(photo: "driver4", name: "Kyoko", time: "01:59.38", nationality: "Japan", position: "1°")
        let driver14 = Driver(photo: "driver12", name: "Kate", time: "02:00.12", nationality: "USA", position: "2°")
        let driver15 = Driver(photo: "driver9", name: "Paulo", time: "02:01.04", nationality: "Brazil", position: "3°")
        
        //Car drivers
        let drivers_car1 = [driver1, driver2, driver3]
        let drivers_car2 = [driver4, driver5, driver6]
        let drivers_car3 = [driver7, driver8, driver9]
        let drivers_car4 = [driver10, driver11, driver12]
        let drivers_car5 = [driver13, driver14, driver15]
        
        //Car animations
        let secCar1 = ["car1_00", "car1_01", "car1_02", "car1_03", "car1_04", "car1_05", "car1_06", "car1_07", "car1_08", "car1_09", "car1_10", "car1_11", "car1_12", "car1_13", "car1_14", "car1_15", "car1_16", "car1_17", "car1_18", "car1_19", "car1_20", "car1_21", "car1_22", "car1_23", "car1_24", "car1_25", "car1_26", "car1_27", "car1_28", "car1_29", "car1_30", "car1_31", "car1_32", "car1_33", "car1_34", "car1_35", "car1_36", "car1_37", "car1_38", "car1_39", "car1_40", "car1_41", "car1_42", "car1_43", "car1_44", "car1_45", "car1_46", "car1_47", "car1_48", "car1_49", "car1_50", "car1_51", "car1_52"]
        let secCar2 = ["car2_00", "car2_01", "car2_02", "car2_03", "car2_04", "car2_05", "car2_06", "car2_07", "car2_08", "car2_09", "car2_10", "car2_11", "car2_12", "car2_13", "car2_14", "car2_15", "car2_16", "car2_17", "car2_18", "car2_19", "car2_20", "car2_21", "car2_22", "car2_23", "car2_24", "car2_25", "car2_26", "car2_27", "car2_28", "car2_29", "car2_30", "car2_31", "car2_32", "car2_33", "car2_34", "car2_35", "car2_36", "car2_37", "car2_38", "car2_39", "car2_40", "car2_41", "car2_42", "car2_43", "car2_44", "car2_45", "car2_46", "car2_47", "car2_48", "car2_49", "car2_50", "car2_51", "car2_52"]
        let secCar3 = ["car3_00", "car3_01", "car3_02", "car3_03", "car3_04", "car3_05", "car3_06", "car3_07", "car3_08", "car3_09", "car3_10", "car3_11", "car3_12", "car3_13", "car3_14", "car3_15", "car3_16", "car3_17", "car3_18", "car3_19", "car3_20", "car3_21", "car3_22", "car3_23", "car3_24", "car3_25", "car3_26", "car3_27", "car3_28", "car3_29", "car3_30", "car3_31", "car3_32", "car3_33", "car3_34", "car3_35", "car3_36", "car3_37", "car3_38", "car3_39", "car3_40", "car3_41", "car3_42", "car3_43", "car3_44", "car3_45", "car3_46", "car3_47", "car3_48", "car3_49", "car3_50", "car3_51", "car3_52"]
        let secCar4 = ["car4_00", "car4_01", "car4_02", "car4_03", "car4_04", "car4_05", "car4_06", "car4_07", "car4_08", "car4_09", "car4_10", "car4_11", "car4_12", "car4_13", "car4_14", "car4_15", "car4_16", "car4_17", "car4_18", "car4_19", "car4_20", "car4_21", "car4_22", "car4_23", "car4_24", "car4_25", "car4_26", "car4_27", "car4_28", "car4_29", "car4_30", "car4_31", "car4_32", "car4_33", "car4_34", "car4_35", "car4_36", "car4_37", "car4_38", "car4_39", "car4_40", "car4_41", "car4_42", "car4_43", "car4_44", "car4_45", "car4_46", "car4_47", "car4_48", "car4_49", "car4_50", "car4_51", "car4_52"]
        let secCar5 = ["car5_00", "car5_01", "car5_02", "car5_03", "car5_04", "car5_05", "car5_06", "car5_07", "car5_08", "car5_09", "car5_10", "car5_11", "car5_12", "car5_13", "car5_14", "car5_15", "car5_16", "car5_17", "car5_18", "car5_19", "car5_20", "car5_21", "car5_22", "car5_23", "car5_24", "car5_25", "car5_26", "car5_27", "car5_28", "car5_29", "car5_30", "car5_31", "car5_32", "car5_33", "car5_34", "car5_35", "car5_36", "car5_37", "car5_38", "car5_39", "car5_40", "car5_41", "car5_42", "car5_43", "car5_44", "car5_45", "car5_46", "car5_47", "car5_48", "car5_49", "car5_50", "car5_51", "car5_52"]
        
        cars.append(Car(name: "Super Car", carPrev: "car1_track", carModel: secCar1, speed: "10/10", acceleration: "9/10", handling: "3/10", weight: "5/10", drivers: drivers_car1))
        cars.append(Car(name: "Testarossa", carPrev: "car2_track", carModel: secCar2, speed: "8/10", acceleration: "7/10", handling: "9/10", weight: "6/10", drivers: drivers_car2))
        cars.append(Car(name: "Lambo", carPrev: "car3_track", carModel: secCar3, speed: "9/10", acceleration: "8/10", handling: "6/10", weight: "7/10", drivers: drivers_car3))
        cars.append(Car(name: "288 GTO", carPrev: "car4_track", carModel: secCar4, speed: "9/10", acceleration: "8/10", handling: "5/10", weight: "5/10", drivers: drivers_car4))
        cars.append(Car(name: "Delorean", carPrev: "car5_track", carModel: secCar5, speed: "6/10", acceleration: "7/10", handling: "10/10", weight: "4/10", drivers: drivers_car5))
    }
}

