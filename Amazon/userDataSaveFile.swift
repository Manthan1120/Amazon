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
}

