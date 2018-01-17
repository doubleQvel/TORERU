//
//  ViewControllerList.swift
//  TORERU
//
//  Created by kinakodai on 2017/12/19.
//  Copyright © 2017年 Matsumoto Kazuki. All rights reserved.
//

import UIKit

class ViewControllerList: UIViewController, UICollectionViewDataSource,
UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var listview: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listview.delegate = self
        listview.dataSource = self
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        // "Cell" はストーリーボードで設定したセルのID
        let testCell:UICollectionViewCell =
            collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
                                               for: indexPath) as UICollectionViewCell
        
        // Tag番号を使ってImageViewのインスタンス生成
        
        // 画像配列の番号で指定された要素の名前の画像をUIImageとする
        
        // UIImageをUIImageViewのimageとして設定
     
        testCell.backgroundColor = UIColor.lightGray
        // Tag番号を使ってLabelのインスタンス生成
        let label = testCell.contentView.viewWithTag(1) as! UILabel
        //let name = ["時限","月","火","水","木","金","1","","","","","","2","","","","","","3","","os","","","","4","","","","","","5"]
        let week = ["時限","月","火","水","木","金"]
        let subject = ["1","","","","","","2","","","","","","3","","os","","","","4","","","","","","5","","","","",""]
        //label.text = name[indexPath.row]
        if indexPath.section == 0{
            label.text = week[indexPath.row]
        }else{
            label.text = subject[indexPath.row]
        }
        return testCell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // section数は１つ
        //return 1
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        // 要素数を入れる、要素以上の数字を入れると表示でエラーとなる
        //曜日6
        if section == 0{
            return 6
        }else{
            return 30
        }
        //授業数
        //return 31;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //セルのサイズを設定
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let numberOfMargin: CGFloat = 7.0
        let width: CGFloat = (collectionView.frame.size.width - 2.0 * numberOfMargin) / CGFloat(7)
        let height: CGFloat = width * 1.5
        return CGSize(width: width, height: height)
        
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
