//
//  DataManager.swift
//  SB_HW3.5
//
//  Created by Vladislav Kulak on 03.02.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init(){}
    
    var nameList = [
        "Полихроний",
        "Феопент",
        "Ексакустодиан",
        "Тивуртий",
        "Савва"
    ]
    
    let  surnameList = [
        "Кукуцаполь",
        "Пофистал",
        "Тролебузин",
        "Персострат",
        "Вилорик"
    ]
    
    let  emailList = [
        "qwe@mail.com",
        "asd@mail.com",
        "zxc@mail.com",
        "rty@mail.com",
        "ghj@mail.com"
    ]
    
    let phoneList = [
        "88005553535",
        "88002002316",
        "88002507978",
        "84955758770",
        "83472257526"
    ]
}

