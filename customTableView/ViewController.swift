//
//  ViewController.swift
//  customTableView
//
//  Created by 大室拓也 on 2018/04/05.
//  Copyright © 2018年 taku9321. All rights reserved.
//

import UIKit


struct CellData {
    let image: UIImage?
    let message:String?
    
}

class TableViewController:UITableViewController {

    
    var data = [CellData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        data = [CellData.init(image:#imageLiteral(resourceName: "Portal") , message: "How to make a Portal How to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a PortalHow to make a Portal"),CellData.init(image:#imageLiteral(resourceName: "Portal") , message: "How to make a Portal"),CellData.init(image:#imageLiteral(resourceName: "Portal") , message: "How to make a Portal"),CellData.init(image:#imageLiteral(resourceName: "Portal") , message: "How to make a Portal"),CellData.init(image:#imageLiteral(resourceName: "Portal") , message: "How to make a Portal")]
        
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 200
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        cell.mainimage = data[indexPath.row].image
        cell.messege = data[indexPath.row].message
        cell.layoutSubviews()
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}

