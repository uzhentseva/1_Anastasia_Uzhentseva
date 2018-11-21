//
//  main.swift
//  L1_Anastasia_Uzhentseva
//
//  Created by Uzh on 21/11/2018.
//  Copyright © 2018 Uzh. All rights reserved.
//

import Foundation

//задача на квадратное уравнение
let a: Double = 1
let b: Double = 8
let c: Double = 3

let D: Double = pow(b,2)-4*a*c

if D < 0 { //если дискриминант меньше нуля - решения нет
    print("no answer")
}
else {
    if D == 0 {
        let x0 = -b/(2*a) //если дискриминант равен нулю
        print("Единственный корень х = \(x0)")
    }
    else {
        let x1 = (-b + sqrt(D))/2*a //поиск 1 и 2 корня
        let x2 = (-b - sqrt(D))/2*a
        print("корень 1 = \(x1), корень 2 = \(x2)")
    }
}

//задача на катеты. Найти гипотенузу, периметр и площадь
let k1: Double = 5 // катет 1
let k2: Double = 4 //катет 2

let plosh = k1*k2/2 //площадь
let gipo = sqrt(pow(k1, 2)+pow(k2, 2)) //гипотенуза
let per = k1 + k2 + gipo //периметр

print("Площадь треугольника = \(plosh), гипотенуза = \(gipo), периметр = \(per)")

//задача на банковский вклад

let depositSumm = readLine() //ввод суммы депозита
let percent = readLine() //ввод процентной ставки
let time = readLine() //ввод срока вклада в годах

var deposit: Double = Double(depositSumm!)!
var prozent: Double = Double(percent!)!
var srok: Double = Double(time!)!

var itog = deposit * pow((1 + (prozent/100)),srok)

print("Ваша сумма составляет \(itog) рублей за \(srok) лет вклада")

