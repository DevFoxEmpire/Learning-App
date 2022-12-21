//
//  ContentModel.swift
//  LearningApp
//
//  Created by Olha Hladush on 12/20/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    func getLocalData() {
        
        // 1. Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // 2. Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // 3. Try to decode json into array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            // Assign parsed modules to module property
            self.modules = modules
            
        }
        catch {
            //Log error
            print("Couldn't parse local data")
        }
        
        // Parse the style data
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do {
            
            //Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
            
        }
        catch {
            // Log error
            print("Couldn't parse style data")
        }
        
        
        
    }
    
}
