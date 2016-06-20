//
//  DragonViewController.swift
//  DragonFashion
//
//  Created by Kristin Kamenar on 6/20/16.
//  Copyright © 2016 Kristin Kamenar. All rights reserved.
//

import UIKit

class DragonViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dragons = ["Mark", "Paula", "Kristin"]
    let accessories = ["sunglasses", "boa", "tiarra"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dragons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dragonCell")
        
        let dragon = dragons[indexPath.row]
        let accessory = accessories[indexPath.row]
        
        //set information in label
        cell!.textLabel!.text = dragon
        cell!.detailTextLabel!.text = accessory
        
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
