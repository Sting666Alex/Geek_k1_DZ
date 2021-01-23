//
//  main.swift
//  dz3
//
//  Created by Алексей Белов on 23.01.2021.
//

import Foundation

//Структуры
enum CarState{
    case isMoving
    case isNotMoving
}

enum Open_Close{
    case Open
    case Close
}

enum CarType{
    case passanger
    case sport
    case truck
}

struct Car {
    // свойства
    
    let brand: String
    let model: String
    let year: Int
    
    let type: CarType
    
    let navigator: Bool
    var engineState: Bool
    
    var state: CarState{
        get{
            if engineState{
                return .isMoving
            }else{
                return .isNotMoving
            }
        }
    }
    
    var speed: Double{
        didSet{ //это наблюдатель за изминением
            //let speedChangedOn = speed - oldValue
            //print("The speed is \(speedChangedOn)")
        }willSet{ //до изменения
            if newValue == 0.0{
             //   print("We are going to stop")
            }
        }
    }
    
    var window: Open_Close{
        didSet{ //это наблюдатель за изминением
            if oldValue != window{
            }
        }willSet{ //до изменения
            if newValue == .Close{
            }
        }
    }
    
    var trunkVolume: Double{
        didSet{ //это наблюдатель за изминением
            //let speedChangedOn = trunkVolume - oldValue
            //print("The trunk volume is \(speedChangedOn)")
            if trunkVolume > 0.0 {
                
            }
        }willSet{ //до изменения
            if newValue == 0.0{
                print("We are going to ")
            }
        }
    }

    //создание по дефолту
    init(brand: String, model: String, navigator: Bool, typeCar: CarType, year: Int) {
        self.model = model
        self.navigator = navigator
        self.engineState = false
        self.speed = 0.0
        self.brand = brand
        self.trunkVolume = 0.0
        self.type = typeCar
        self.year = year
        self.window = .Close
    }

    
    //метод
    func printCarInfo(){
        print("-----------")
        print("brand \(brand)")
        print("model \(model)")
        print("year \(year)")
        print("type \(type)")
    }
    
    mutating func changeSpeed(_ value: Double){
        self.speed = value
    }

}




var car1 = Car(brand: "Audi",model: "A6", navigator: true,typeCar: .passanger,year: 2000)
var car2 = Car(brand: "Audi",model: "A7", navigator: true,typeCar: .passanger,year: 2001)

var car3 = Car(brand: "Volvo",model: "A7", navigator: true,typeCar: .truck,year: 2002)

car1.printCarInfo()
car2.printCarInfo()
car3.printCarInfo()
