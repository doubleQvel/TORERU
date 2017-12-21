//
//  ViewController.swift
//  TORERU
//
//  Created by Matsumoto Kazuki on 2017/11/09.
//  Copyright © 2017年 Matsumoto Kazuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func moveSeque(_ sender: Any) {
        let story = UIStoryboard(name: "Scan", bundle: nil )
        let vc = story.instantiateInitialViewController() as! ViewControllerScan
        self.present(vc, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

