//
//  ViewController.swift
//  SimpleTable
//
//  Created by joseph on 2020/8/30.
//  Copyright © 2020 joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate {
    var restaurantNames = ["Cafe Deadend","Homei","Teakha","Cafe Loisl","Petite Oyster","For Kee Restaurant","Po's Atelier","Bourke Street Bakery","Haigh's Chocolate","Palomino Espresso","Upstate","Traif","Graham Avenue Meats And Deli","Waffle & Wolf","Five Leaves","Cafe Lore","Confessional","Barrafina","Donostia","Royal Oak","CASK Pub and Kitchen"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 回傳區塊中的列數
        return restaurantNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        //設定CELL...
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override var  prefersStatusBarHidden: Bool {
      return true
     //用來隱藏頂端的狀態列(時間日期)
        
  }
}

