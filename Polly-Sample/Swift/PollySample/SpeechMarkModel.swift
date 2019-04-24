//
//  SpeechMarkModel.swift
//  PollySample
//
//  Created by Zz on 2019/4/23.
//  Copyright © 2019 Amazon.com. All rights reserved.
//

import Foundation

/// 贺卡model
class SpeechMarkModel: Codable {
    var time: Int
    var type: String
    var start: Int
    var end: Int
    var value: String
    
    var byteLength: Int {
        if let data = value.data(using: .utf8) {
            return data.count
        }
        
        return 0
    }
    
    var length: Int {
        return (value as NSString).length
    }
    
    enum CodingKeys: String, CodingKey {
        case time
        case type
        case start
        case end
        case value
    }
    
    
}
