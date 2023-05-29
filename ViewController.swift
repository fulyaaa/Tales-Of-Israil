//
//  ViewController.swift
//  TalesOfIsrail
//
//  Created by fulya akan on 28.05.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    var placeNames = [String]()
    var placeImages = [UIImage]()
    
    var chosenPlaceName = ""
    var chosenPlaceImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //protokoller; tableview a bu özellikleri veriyoruz
        tableView.delegate = self
        tableView.dataSource = self
        
        placeNames.append("Old Town")
        placeNames.append("Lut Lake")
        placeNames.append("Dead Sea")
        placeNames.append("Haifa")
        placeNames.append("TelAviv Yafa")
        placeNames.append("Nachalat Binyamin Street Market")
        placeNames.append("Carmel Market")
        placeNames.append("Jerusalem")
        placeNames.append("Mescid-i Aksa")
        
        placeImages.append(UIImage(named: "OldTown.jpeg")!)
        placeImages.append(UIImage(named: "LutLake.jpeg")!)
        placeImages.append(UIImage(named: "DeadSea.jpeg")!)
        placeImages.append(UIImage(named: "Haifa.jpeg")!)
        placeImages.append(UIImage(named: "TelAvivYafa.jpeg")!)
        placeImages.append(UIImage(named: "NachalatBinyaminStreetMarket.jpeg")!)
        placeImages.append(UIImage(named: "CarmelMarket.jpeg")!)
        placeImages.append(UIImage(named: "Jerusalem.jpeg")!)
        placeImages.append(UIImage(named: "MescidiAksa.jpeg")!)
        
        
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.placeNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration() //içerik ayarlayıcısı
        content.text = placeNames[indexPath.row]
        //content.secondaryText = "test"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenPlaceName = placeNames[indexPath.row]
        chosenPlaceImage = placeImages[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVS", sender: nil)
            
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! SecondVC
            destinationVC.selectedPlaceName = chosenPlaceName
            destinationVC.selectedPlaceImage = chosenPlaceImage
            
            
        }
    }

}

