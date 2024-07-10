//
//  Measurement+Extension.swift
//  UnitConverter
//
//  Created by Nicholas Johnson on 7/9/24.
//

import Foundation

extension Measurement where UnitType == UnitVolume {
    static func from(unit: String, value: Double) -> Measurement<UnitVolume>? {
        switch unit {
            case "tsp":
                return Measurement(value: value, unit: UnitVolume.teaspoons)
            case "tbsp":
                return Measurement(value: value, unit: UnitVolume.tablespoons)
            case "fl oz":
                return Measurement(value: value, unit: UnitVolume.fluidOunces)
            case "cup":
                return Measurement(value: value, unit: UnitVolume.cups)
            case "pint":
                return Measurement(value: value, unit: UnitVolume.pints)
            case "quart":
                return Measurement(value: value, unit: UnitVolume.quarts)
            case "gallon":
                return Measurement(value: value, unit: UnitVolume.gallons)
            case "ml":
                return Measurement(value: value, unit: UnitVolume.milliliters)
            case "l":
                return Measurement(value: value, unit: UnitVolume.liters)
            default:
                return nil
        }
    }
    
    func converted(to unit: String) -> Measurement<UnitVolume>? {
        switch unit {
                case "tsp":
                    return self.converted(to: UnitVolume.teaspoons)
                case "tbsp":
                    return self.converted(to: UnitVolume.tablespoons)
                case "fl oz":
                    return self.converted(to: UnitVolume.fluidOunces)
                case "cup":
                    return self.converted(to: UnitVolume.cups)
                case "pint":
                    return self.converted(to: UnitVolume.pints)
                case "quart":
                    return self.converted(to: UnitVolume.quarts)
                case "gallon":
                    return self.converted(to: UnitVolume.gallons)
                case "ml":
                    return self.converted(to: UnitVolume.milliliters)
                case "l":
                    return self.converted(to: UnitVolume.liters)
                default:
                    return nil
                }
    }
}
