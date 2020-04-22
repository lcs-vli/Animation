import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = -100
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        
        //translate the axes 70 to the right and 50 up
        canvas.translate(to: Point(x:70, y:500))
        
        //draw the axes
        canvas.drawAxes()
        
        for _ in 1...6{
            
            // Draw an ellipse in the middle of the canvas
            canvas.drawEllipse(at: Point(x: x, y: -x * x * 0.04), width: 10, height: 10)
            
            canvas.translate(to: Point(x:0, y:-100))
            
        }
        
        
    }
    
}
