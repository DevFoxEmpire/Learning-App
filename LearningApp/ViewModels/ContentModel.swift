//
//  ContentModel.swift
//  LearningApp
//
//  Created by Olha Hladush on 12/20/22.
//

import Foundation

class ContentModel: ObservableObject {
    
    //List of modules
    @Published var modules = [Module]()
    
    //Current module
    @Published var currentModule:Module?
    var currentModuleIndex = 0
    
    
    var styleData: Data?
    
    init() {
        getLocalData()
    }
    
    //MARK: - Data methods
    
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
    
    //MARK: - Module navigation methods
    
    func beginModule(_ moduleid:Int) {
        
        //Find the index for this module ID
        
        
        // Set the current mudule
        
        
        
    }
    
    
    
    
}
