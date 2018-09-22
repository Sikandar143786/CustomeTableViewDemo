//
//  ViewController.swift
//  CustomeTableViewDemo
//
//  Created by Akash Technolabs on 03/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate
{

    var arrayClothsName = [String]()
    var arraImage = [String]()
    
    @IBOutlet weak var myTabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayClothsName = ["jeans","shirt","t-shirt"]
        arraImage = ["jeans","shirt","t-shirt"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayClothsName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as! CustomeTableViewCell
        cell.lblTitleText?.text = arrayClothsName[indexPath.row]
        cell.imageView?.image = UIImage(named: arraImage[indexPath.row])
        
        return cell
    }

   
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == .delete
        {
            arrayClothsName.remove(at: indexPath.row)
            self.myTabelView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let secondView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondView.strTitle = arrayClothsName[indexPath.row]
        secondView.strImag = arraImage[indexPath.row]
        self.present(secondView, animated: true, completion: nil)
    }
    
    
    
}

