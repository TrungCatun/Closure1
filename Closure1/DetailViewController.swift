//
//  DetailViewController.swift
//  Closure1
//
//  Created by Trung on 10/8/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textDVC: UITextField!
    
    var data: String?
    var callBack: ((String) -> () )?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            textDVC.text = data
        }
    }
    @IBAction func buttonDVC(_ sender: UIButton) {
        
        guard let backData = textDVC.text
            else {return}
        callBack?(backData)
        navigationController?.popViewController(animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
