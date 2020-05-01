import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    //colors
    var white = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
    var black = Color(hue: 0, saturation: 0, brightness: 0, alpha: 100)
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        
        canvas.drawShapesWithFill = false
        
        
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.borderColor = white
        if x >= 500{
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 250), width: 250, height: 250)
        }else if x < 500{
            canvas.drawEllipse(at: Point(x: x, y: 250), width: 250, height: 250)
        }
        
        x += 1
        
        canvas.borderColor = black
        
        if x >= 500{
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 250), width: 250, height: 250)
        }else if x < 500{
            canvas.drawEllipse(at: Point(x: x, y: 250), width: 250, height: 250)
        }
        
        
        if x == 1000{
            x = 0
        }
        
    }
    
}
