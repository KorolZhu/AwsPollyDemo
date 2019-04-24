//
//  JSONDecoder+HT.swift
//  HelloTalk_Binary
//
//  Created by brant on 8/1/2019.
//  Copyright © 2019 HT. All rights reserved.
//

import Foundation

extension JSONDecoder {
    
    // 字典转模型
    class func decodeJSON<T>(_ type: T.Type, from dictionary: [AnyHashable: Any]?) -> T? where T : Decodable {
        guard let dictionary = dictionary else {
            return nil
        }
        
        do {
            let data = try JSONSerialization.data(withJSONObject: dictionary, options: [])
            let decoder = JSONDecoder()
            let model = try decoder.decode(type, from: data)
        
            return model
            
        } catch {
            print("JSON convert to model error: \(error.localizedDescription)")
        }
        
        return nil
    }
    
    // data转模型
    class func decodeJSON<T>(_ type: T.Type, from data: Data?) -> T? where T : Decodable {
        guard let data = data else {
            return nil
        }
        
        do {
            let decoder = JSONDecoder()
            let model = try decoder.decode(type, from: data)
            
            return model
            
        } catch {
            print("JSON convert to model error: \(error.localizedDescription)")
        }
        
        return nil
    }
}
