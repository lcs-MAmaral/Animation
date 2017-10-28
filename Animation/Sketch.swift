import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var xd : Int
    var y : Int
    var yd : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = random(from: 1, toButNotIncluding: 501)
        xd = 2
        y = random(from: 1, toButNotIncluding: 501)
        yd = 2
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        
     
        x += xd
        y += yd
        if x > 500 {
            xd = -2
        }
        
       
        if x < 0 {
            xd = 2
        }
        
        if y > 500 {
            yd = -2
        }
        
        
        if y < 0 {
            yd = 2
        }
     
        
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
