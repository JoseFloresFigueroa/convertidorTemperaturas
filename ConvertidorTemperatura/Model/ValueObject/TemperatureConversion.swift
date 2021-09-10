//
//  TemperatureConversion.swift
//  ConvertidorTemperatura
//
//  Created by user194083 on 9/6/21.
//

import Foundation

public class TemperatureConversion: Codable{
    public let created: Date
    public let original: Temperature
    public let converted: Temperature
    
    public init(created: Date, original: Temperature, converted: Temperature){
        self.created = created
        self.original = original
        self.converted = converted
    }
}
