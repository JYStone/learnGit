//
//  LightAppModel.swift
//  JTMDM
//
//  Created by 南天 on 2020/8/4.
//  Copyright © 2020 南天. All rights reserved.
//

import UIKit

class LightAppModel: Codable {
    var data: Comm?
    class Comm: Codable {
        var commonApp: [CommonApp]?
        class CommonApp: Codable {
            var light_app_id: String?
            var light_app_name: String?
            var light_app_icon: String?
            var app_type: String?
            var account_id: String?
            var order_id: String?
            var alias: String?
        }
    }
}
