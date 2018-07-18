//
//  ViewController.swift
//  TwoTableview
//
//  Created by Shanthakumar on 18/07/18.
//  Copyright © 2018 Shanthakumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview1: UITableView!
    @IBOutlet weak var tableview2: UITableView!
    @IBOutlet weak var tableview3: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == tableview1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne") as! CellOne
            return cell
        }else if tableView == tableview2 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellTwo") as! CellTwo
            return cell

        }else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "CellThree") as! CellThree
            return cell

        }
    }
}


class CellTwo : UITableViewCell {
    override func awakeFromNib() {
        self.backgroundColor = UIColor.green
    }
}

class CellOne : UITableViewCell {
    override func awakeFromNib() {
        self.backgroundColor = UIColor.blue

    }
}

class CellThree : UITableViewCell {
    override func awakeFromNib() {
        self.backgroundColor = UIColor.yellow
    }
}
