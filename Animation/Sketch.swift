import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var y : Int
    var dx : Int
    var dy : Int
    var a : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        dy = 1
        dx = 1
        a = 500/(250 * -250)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
       
        x += dx
        y = Int(a * Double(x) * (Double(x)-500))

        
        // Draw an ellipse in the middle of the canvas
         canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
         canvas.drawEllipse(centreX: x + 50, centreY: y, width: 50, height: 50)
         canvas.drawEllipse(centreX: x + 100, centreY: y, width: 50, height: 50)
         canvas.drawEllipse(centreX: x + 150, centreY: y, width: 50, height: 50)
    }
    
}
