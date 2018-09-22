//
//  SecondViewController.swift
//  CustomeTableViewDemo
//
//  Created by Akash Technolabs on 04/11/17.
//  Copyright © 2017 Akash Technolabs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{

    
    @IBOutlet weak var lblTitleText: UILabel!
    
    @IBOutlet weak var imagView: UIImageView!
    var strTitle = String()
    var strImag = String()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        lblTitleText.text = strTitle
        imagView.image = UIImage(named: strImag)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnBackAction(_ sender: UIButton)
    {
        let backAction = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController")
        self.present(backAction, animated: true, completion: nil)
        
    }
    
}
