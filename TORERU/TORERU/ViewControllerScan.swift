//
//  ViewControllerScan.swift
//  TORERU
//
//  Created by Matsumoto Kazuki on 2017/12/12.
//  Copyright © 2017年 Matsumoto Kazuki. All rights reserved.
//

import UIKit

class ViewControllerScan: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func moveSeque(_ sender: Any) {
        let story = UIStoryboard(name: "SubjectList", bundle: nil )
        let vc = story.instantiateInitialViewController() as! ViewControllerList
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
