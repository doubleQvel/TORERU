//
//  ViewControllerScan.swift
//  TORERU
//
//  Created by Matsumoto Kazuki on 2017/12/12.
//  Copyright © 2017年 Matsumoto Kazuki. All rights reserved.
//

import UIKit

class ViewControllerScan: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    

    @IBOutlet weak var DayScrollbar: UITextField!
    
    @IBOutlet weak var TimeScrollbar: UITextField!
    
    var pickerView1: UIPickerView = UIPickerView()
    var pickerView2: UIPickerView = UIPickerView()
    let DayList = ["月", "火", "水", "木", "金"]
    let TimeList = ["1", "2", "3", "4", "5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView1.delegate = self
        pickerView2.delegate = self
        pickerView1.dataSource = self
        pickerView2.dataSource = self
        pickerView1.showsSelectionIndicator = true
        pickerView2.showsSelectionIndicator = true
        
        let Scrollbar = UIToolbar(frame: CGRectMake(0, 0, 0, 35))
        
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(ViewControllerScan.done))
        
        Scrollbar.setItems([doneItem], animated: true)
        
        self.DayScrollbar.inputView = pickerView1
        self.TimeScrollbar.inputView = pickerView2
        self.DayScrollbar.inputAccessoryView = Scrollbar
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == pickerView1 {
            return DayList.count
        }
        else {
            return TimeList.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == pickerView1 {
            return DayList[row]
        }
        else {
            return TimeList[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == pickerView1 {
            self.DayScrollbar.text = DayList[row]
        }
        else {
            self.TimeScrollbar.text = TimeList[row]
        }
    }
    
    func cancel() {
        self.DayScrollbar.text = ""
        self.DayScrollbar.endEditing(true)
        self.TimeScrollbar.text = ""
        self.TimeScrollbar.endEditing(true)
    }
    
    @objc func done() {
        self.DayScrollbar.endEditing(true)
        self.TimeScrollbar.endEditing(true)
    }
    
    func CGRectMake(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) -> CGRect {
        return CGRect(x: x, y: y, width: width, height: height)
    }
    
        // Do any additional setup after loading the view.
    

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
