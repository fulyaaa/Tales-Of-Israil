//
//  SecondVC.swift
//  TalesOfIsrail
//
//  Created by fulya akan on 28.05.2023.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var imageViewText: UIImageView!
    
    var selectedPlaceName = ""
    var selectedPlaceImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelText.text = selectedPlaceName
        imageViewText.image = selectedPlaceImage

    }
    

}
