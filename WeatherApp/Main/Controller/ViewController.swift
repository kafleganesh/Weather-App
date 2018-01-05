//
//  ViewController.swift
//  WeatherApp
//
//  Created by Ganesh on 12/25/17.
//  Copyright © 2017 Ganesh Kafle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let items = [
        ItemModel(name: "Boulogne-Billancourt",temperature:10.2, detail: "Boulogne-Billancourt is 33 m above sea level and located at 48.83° N 2.23° E. Boulogne-Billancourt has a population of 108782. Local time in Boulogne-Billancourt is 2:22:24 PM CET.",status:"Cold"),
        ItemModel(name: "Nancy", temperature:13.9, detail: "Nancy is 201 m above sea level and located at 48.69° N 6.18° E. Nancy has a population of 105334. Local time in Nancy is 2:22:41 PM CET",status:"Hold" ),
        ItemModel(name: "Paris–Orly Airport", temperature:14, detail: "Paris–Orly Airport is 87 m above sea level and located at 48.72° N 2.38° E. Paris–Orly Airport has a population of 103182. Local time in Paris–Orly Airport is 2:23:16 PM CET.",status:"Warm" ),
        ItemModel(name: "Argenteuil", temperature:11, detail: "Argenteuil is 34 m above sea level and located at 48.95° N 2.25° E. Argenteuil has a population of 101475. Local time in Argenteuil is 2:23:53 PM CET.",status:"Sunny" ),
        ItemModel(name: "Angers-Avrillé", temperature:9.5, detail: "Angers-Avrillé is 50 m above sea level and located at 47.50° N 0.58° W. Angers-Avrillé has a population of 97389. Local time in Angers-Avrillé is 2:24:04 PM CET." ,status:"Hot"),
        ItemModel(name: "Saint-Denis", temperature:12.5,detail: "Saint-Denis (Île-de-France) is 35 m above sea level and located at 48.93° N 2.37° E. Saint-Denis (Île-de-France) has a population of 96128. Local time in Saint-Denis (Île-de-France) is 2:24:15 PM CET.",status:"Warm" ),
        ItemModel(name: "Roubaix", temperature:11.2, detail: "Roubaix is 32 m above sea level and located at 50.70° N 3.17° E. Roubaix has a population of 95721. Local time in Roubaix is 2:24:27 PM CET.",status:"Hot" ),
        ItemModel(name: "Tourcoing", temperature:14.2, detail: "Tourcoing is 37 m above sea level and located at 50.72° N 3.15° E. Tourcoing has a population of 91574. Local time in Tourcoing is 2:24:55 PM CET.",status:"Warm" ),
        ItemModel(name: "Nanterre", temperature:13.7, detail: "Nanterre is 40 m above sea level and located at 48.90° N 2.20° E. Nanterre has a population of 86719. Local time in Nanterre is 2:25:07 PM CET.",status:"Cold" ),
        ItemModel(name: "Poitiers", temperature:10.9, detail: "Poitiers is 89 m above sea level and located at 46.58° N 0.34° E. Poitiers has a population of 85960. Local time in Poitiers is 2:25:26 PM CET.",status:"Cold" ),
        ItemModel(name: "Versailles", temperature:15.5, detail: "Versailles is 135 m above sea level and located at 48.80° N 2.13° E. Versailles has a population of 85416. Local time in Versailles is 2:25:38 PM CET.",status:"Warm" )]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "MAIN"
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ItemTableViewCell
        let item = items[indexPath.row]
        cell.nameLbl.text = item.itemName
        cell.detailLbl.text = "\(item.temperature!) celsius"
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = items[indexPath.row]
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = mainStoryBoard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.selectedItem = selectedItem
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}
