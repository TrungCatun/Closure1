//
//  ViewController.swift
//  Closure1
//
//  Created by Trung on 10/8/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textVC: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    var dataVC: String?
    @IBAction func buttonVC(_ sender: UIButton) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier:"idDVC") as! DetailViewController
        detailViewController.data = textVC.text
        
        detailViewController.callBack = { [weak self] data in
            self?.textVC.text = data
        }
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    

}

