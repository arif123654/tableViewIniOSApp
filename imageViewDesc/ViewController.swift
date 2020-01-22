//
//  ViewController.swift
//  imageViewDesc
//
//  Created by apple on 1/22/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{
 
    @IBOutlet weak var tableView: UITableView!

    var imgName = ["1","2","3","4","5"]

    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imageView?.image = UIImage(named: imgName[indexPath.row])
        cell.accessoryType = .disclosureIndicator
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc1 = storyboard?.instantiateViewController(identifier: "DescViewController") as! DescViewController
       
     
        vc1.OImages = UIImage(named: imgName[indexPath.row])
       
        
        self.navigationController?.pushViewController(vc1, animated: true)
    
    }
    
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    

}

