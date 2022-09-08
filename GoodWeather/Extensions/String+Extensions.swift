//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Henrique Alves Batochi on 07/09/22.
//

import Foundation

extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
