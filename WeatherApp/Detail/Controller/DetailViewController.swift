//
//  DetailViewController.swift
//  WeatherApp
//
//  Created by Ganesh on 12/25/17.
//  Copyright © 2017 Ganesh Kafle. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var temperatureTextField: UITextField!
    @IBOutlet weak var itemDescription: UITextField!
    @IBOutlet weak var statusTextField: UITextField!
    
    var selectedItem = ItemModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "DETAIL"
        self.nameTextField.text = selectedItem.itemName
        temperatureTextField.text = "\(selectedItem.temperature!) celsius"
        itemDescription.text = selectedItem.detailName
        statusTextField.text = selectedItem.status
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
