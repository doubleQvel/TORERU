//
//  RealmModel.swift
//  TORERU
//
//  Created by Matsumoto Kazuki on 2018/01/18.
//  Copyright © 2018年 Matsumoto Kazuki. All rights reserved.
//

import Foundation
import RealmSwift

class Subject: Object {
    @objc dynamic var name = ""
    @objc dynamic var gensu = 0
    @objc dynamic var week = ""
}
