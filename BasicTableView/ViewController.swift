//
//  ViewController.swift
//  BasicTableView
//
//  Created by Yakup AD on 12.06.2017.
//  Copyright © 2017 Yakup AD. All rights reserved.
//

import UIKit

import UIKit

class ViewController: UITableViewController {
    let animals = ["Ayı", "Kuğu", "Bufalo", "Deve", "Papağan", "Köpek", "Maymun", "Devekuşu", "Zürafa", "Büyük Rhea", "Hipotamus", "At", "Koala", "Aslan", "Lama", "Manatus", "Mirket", "Panda", "Tavus Kuşu", "Domuz", "Platypus", "Kutup Ayısı", "Gergedan", "Martı", "Tazmanya Canavarı", "Balina", "Balina", "Wombat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        self.clearsSelectionOnViewWillAppear = false
        
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return animals.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = animals[indexPath.row]
        
        // Convert the animal name to lower case and
        // then replace all occurences of a space with an underscore
        let imageFileName = animals[indexPath.row].lowercased().replacingOccurrences(of: " ", with: "_")
        cell.imageView?.image = UIImage(named: imageFileName)
        
        return cell
    }
    
    
}

