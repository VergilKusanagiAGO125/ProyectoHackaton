//
//  StructsList.swift
//  ProjectHackathon
//
//  Created by CEDAM33 on 25/11/24.
//

import SwiftUI

class Especialistas {
    var nombre: String
    var apellido_1: String
    var apellido_2: String
    var edad: Int
    var email: String
    var password: String
    var telefono: String
    
    init(nombre: String, apellido_1: String, apellido_2: String, edad: Int, email: String, password: String, telefono: String) {
        self.nombre = nombre
        self.apellido_1 = apellido_1
        self.apellido_2 = apellido_2
        self.edad = edad
        self.email = email
        self.password = password
        self.telefono = telefono
    }
    
    public var readNombre: String {
        get {
            return nombre
        }
        set(newNombre) {
            nombre = newNombre
        }
    }
    
    public var readApellido_1: String {
        get {
            return apellido_1
        }
        set(newApellido_1) {
            apellido_1 = newApellido_1
        }
    }
    
    public var readApellido_2: String {
        get {
            return apellido_2
        }
        set(newApellido_2) {
            apellido_2 = newApellido_2
        }
    }
    
    public var readEdad: Int {
        get {
            return edad
        }
        set(newEdad) {
            edad = newEdad
        }
    }
    
    public var readEmail: String {
        get {
            return email
        }
        set(newEmail) {
            email = newEmail
        }
    }
    
    public var readPassword: String {
        get {
            return password
        }
        set(newPassword) {
            password = newPassword
        }
    }
    
    public var readTelefono: String {
        get {
            return telefono
        }
        set(newTelefono) {
            telefono = newTelefono
        }
    }
}

class Usuario {
    var nombre: String
    var apellido_1: String
    var apellido_2: String
    var edad: Int
    var email: String
    var password: String
    var telefono: String
    
    init(nombre: String, apellido_1: String, apellido_2: String, edad: Int, email: String, password: String, telefono: String) {
        self.nombre = nombre
        self.apellido_1 = apellido_1
        self.apellido_2 = apellido_2
        self.edad = edad
        self.email = email
        self.password = password
        self.telefono = telefono
    }
    
    public var readNombre: String {
        get {
            return nombre
        }
        set(newNombre) {
            nombre = newNombre
        }
    }
    
    public var readApellido_1: String {
        get {
            return apellido_1
        }
        set(newApellido_1) {
            apellido_1 = newApellido_1
        }
    }
    
    public var readApellido_2: String {
        get {
            return apellido_2
        }
        set(newApellido_2) {
            apellido_2 = newApellido_2
        }
    }
    
    public var readEdad: Int {
        get {
            return edad
        }
        set(newEdad) {
            edad = newEdad
        }
    }
    
    public var readEmail: String {
        get {
            return email
        }
        set(newEmail) {
            email = newEmail
        }
    }
    
    public var readPassword: String {
        get {
            return password
        }
        set(newPassword) {
            password = newPassword
        }
    }
    
    public var readTelefono: String {
        get {
            return telefono
        }
        set(newTelefono) {
            telefono = newTelefono
        }
    }
}

struct StructEspecialista: Identifiable {
    var id = UUID()
    var user: Especialistas
}

struct StructUsuario: Identifiable {
    var id = UUID()
    var user: Usuario
}

struct StructPanel: Identifiable {
    var id = UUID()
    var idPanel: Int
    var titulo: String
    var icono: String
}

struct ConsejosItem: Identifiable {
    var id = UUID()
    var consejoPhto: String
    var name: String
    var description: String
    var category: String
}
