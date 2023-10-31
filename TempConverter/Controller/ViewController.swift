//
//  ViewController.swift
//  TempConverter
//
//  Created by Arkadijs Makarenko on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var convertedTempLabel: UILabel!
    @IBOutlet weak var tempSegementControl: UISegmentedControl!
    
    @IBOutlet weak var tempSlider: UISlider!{
        didSet {
            tempSlider.value = 0
            tempSlider.minimumValue = 0
            tempSlider.maximumValue = 100
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedTempLabel.text = "32 ºF"
    }
    
    @IBAction func slderValueChanged(_ sender: Any) {
        
        updateTempLabelFromSlider(value: tempSlider.value)
    }
    
    func updateTempLabelFromSlider(value: Float) {
        print("tempSlider:::", Int(value))
        #warning("check which segment controler is on, and make a temp calculation based F,K")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: "InfoViewController") as? InfoViewController else { return }
        vc.titleString = "text"
    
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func convertTempFrom(celsius: Int) -> (fahrenheit: Double, kelvin: Double){
        
        return (0, 0)
    }
    
    #warning("pass result to InfoVC without segue")
    

}

