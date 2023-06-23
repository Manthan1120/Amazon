//
//  userDataSaveFile.swift
//  Amazon
//
//  Created by r86 on 17/06/23.
//

import Foundation
import SQLite3

struct Data {
    var password: String
    var name: String
    var email: String
}

class Sqlite {
    static var file : OpaquePointer?

   static func createFile() {
       var x = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
       x.appendPathComponent("My Sqlite filedata.db")
       sqlite3_open(x.path, &file)
       print(x.path)
       print("Create file")
       createTable()

    }
   static func createTable() {
       let q = "Create Table if not exists Students (name text,password text,email text)"
       var table: OpaquePointer?
       sqlite3_prepare(file, q, -1, &table, nil)
       print("Create table")
       sqlite3_step(table)
        
    }
    static func addData(name:String,password:String,email:String) {
       let q = "insert into Students values ('\(name)','\(password)','\(email)')"
       var data: OpaquePointer?
       sqlite3_prepare(file, q, -1, &data, nil)
       print("Create data")
       sqlite3_step(data)
        
    }
    static func getData()->[Data] {
        var arr = [Data]()
        let q = "select name,email,password from Students"
        var get: OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        while sqlite3_step(get) == SQLITE_ROW {
            if let cString0 = sqlite3_column_text(get,0) , let cString1 = sqlite3_column_text(get,1) , let cString2 = sqlite3_column_text(get,2){
                let name = String(cString: cString0)
                let password = String(cString:cString2)
                let email = String(cString: cString1)
                arr.append(Data(password: password, name: name, email: email))
            }
        }
        print("Get data")
        return arr
        
    }
    
    static func checkData(email: String,password: String) -> Bool {
        var arr = [Data]()
        let q = "select name,email,password from Students WHERE email = '\(email)' and password = '\(password)'"
        var get: OpaquePointer?
        sqlite3_prepare(file, q, -1, &get, nil)
        
        while sqlite3_step(get) == SQLITE_ROW {
            if let cString0 = sqlite3_column_text(get,0) , let cString1 = sqlite3_column_text(get,1) , let cString2 = sqlite3_column_text(get,2){
                let name = String(cString: cString0)
                let password = String(cString:cString2)
                let email = String(cString: cString1)
                arr.append(Data(password: password, name: name, email: email))
                print("ok")
            }
            else {
                print("Error")
            }
        }
        print("Get data")
        return arr.count != 0
        
    }
}

