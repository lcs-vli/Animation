import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Double
    var x1: Double
    var y : Double
    var xLine: Double
    var x1Line: Double
    var yLine: Double
    
    //colors
    var white = Color(hue: 0, saturation: 0, brightness: 100, alpha: 100)
    var black = Color(hue: 100, saturation: 100, brightness: 0, alpha: 100)
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        x1 = 100
        y = 0
        xLine = -1
        x1Line = -1
        yLine = -1
 
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        canvas.drawShapesWithFill = true
        canvas.fillColor = white
        canvas.borderColor = white
        
        if x >= 500 {
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 250), width: 253, height: 253)
        }else if x < 500{
            canvas.drawEllipse(at: Point(x: x, y: 250), width: 253, height: 253)
        }
        
        if x1 >= 500, y < 500{
            canvas.drawEllipse(at: Point(x: 1000 - x1, y: y), width: 103, height: 103)
        }else if x1 < 500, y < 500{
            canvas.drawEllipse(at: Point(x: x1, y: y), width: 103, height: 103)
        }else if x1 < 500, y >= 500{
            canvas.drawEllipse(at: Point(x: x1, y: 1000 - y), width: 103, height: 103)
        }else if x1 >= 500, y >= 500{
            canvas.drawEllipse(at: Point(x: 1000 - x1, y: 1000 - y), width: 103, height: 103)
        }
        
        x += 1
        x1 += 1
        y += 1
        
        canvas.drawShapesWithFill = false
        canvas.borderColor = black
        
        if x >= 500{
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 250), width: 250, height: 250)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: 1000 - x ,y:250), width: 3, height: 3)
        }else if x < 500{
            canvas.drawEllipse(at: Point(x: x, y: 250), width: 250, height: 250)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: x ,y:250), width: 3, height: 3)
        }
        
        canvas.drawShapesWithFill = false
        canvas.borderColor = black
        
        if x1 >= 500, y < 500{
            canvas.drawEllipse(at: Point(x: 1000 - x1, y: y), width: 100, height: 100)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: 1000 - x1 ,y: y), width: 3, height: 3)
        }else if x1 < 500, y < 500{
            canvas.drawEllipse(at: Point(x: x1, y: y), width: 100, height: 100)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: x1 ,y: y), width: 3, height: 3)
        }else if x1 < 500, y >= 500{
            canvas.drawEllipse(at: Point(x: x1, y: 1000 - y), width: 100, height: 100)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: x1 ,y: 1000 - y), width: 3, height: 3)
        }else if x1 >= 500, y >= 500{
            canvas.drawEllipse(at: Point(x: 1000 - x1, y: 1000 - y), width: 100, height: 100)
            canvas.drawShapesWithFill = true
            canvas.fillColor = black
            canvas.drawEllipse(at: Point(x: 1000 - x1 ,y: 1000 - y), width: 3, height: 3)
        }
        
        if x >= 500{
            xLine = 1000 - x
        }else if x < 500{
            xLine = x
        }
        
        if x1 >= 500, y < 500{
            x1Line = 1000 - x1
            yLine = y
        }else if x1 < 500, y < 500{
            x1Line = x1
            yLine = y
        }else if x1 < 500, y >= 500{
            x1Line = x1
            yLine = 1000 - y
        }else if x1 >= 500, y >= 500{
            x1Line = 1000 - x1
            yLine = 1000 - y
        }
        
        if sqrt( pow (x1Line - xLine, 2) + pow (yLine - 250, 2)) <= 180{
            canvas.drawLine(from: Point(x: xLine, y: 250), to: Point(x: x1Line, y: yLine))
        }
        
        if x == 1000{
            x = 0
        }
        if y == 1000{
            y = 0
        }
        if x1 == 1000{
            x1 = 0
        }
        
    }
    
}
