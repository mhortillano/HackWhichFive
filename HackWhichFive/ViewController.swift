//
//  ViewController.swift
//  HackWhichFive
//
//  Created by Mariah Hortillano on 2/26/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
//Define an array variable using an array literal with5 items of type string
        
    @IBOutlet var TableView: UITableView!
    var nameArray = ["Manolo", "Mokuba", "Gale", "Mimz", "Cy"]
      
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
          // self.tableView = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        {
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      //set up cell to display items in nameArray
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = nameArray[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
}

