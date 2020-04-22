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
        x = -250
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        //translate the canvas to the mid top-most point
        canvas.translate(to: Point(x:250, y:500))
        
        canvas.drawAxes()
        
        // Change position
        x += 1
        
        // Draw an ellipse in the middle of the canvas
        // canvas.drawEllipse(at: Point(x: x, y: -1 / 120 * x ^ 2), width: 50, height: 50)
        canvas.drawEllipse(at: Point(x: x, y: -x * x * 0.008), width: 50, height: 50)
    }
    
}
