//
//  ViewController.swift
//  Kirket Buzz
//
//  Created by Mohammad Shariq on 23/06/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func goButton(_ sender: AnyObject) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "PlayerViewController") as! PlayerViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

