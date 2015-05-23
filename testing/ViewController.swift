//
//  ViewController.swift
//  testing
//
//  Created by Anil on 23/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let swipeRight = UISwipeGestureRecognizer(target: self, action: Selector("rightSwiped:"))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: Selector("leftSwiped:"))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: Selector("downSwiped:"))
        swipeDown.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipeDown)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: Selector("upSwiped:"))
        swipeUp.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipeUp)
    }
    
    func rightSwiped(recognizer: UISwipeGestureRecognizer)
    {
        println("right swiped ")
        manageGesture(recognizer)
        
    }
    
    func manageGesture(recognizer: UISwipeGestureRecognizer) {
        
        //First detect which gesture is used
        
        if recognizer.direction == UISwipeGestureRecognizerDirection.Right {
            println("Right")
            
            if let recognizers = view.gestureRecognizers {
                for recognizer in recognizers {
                    if recognizer.direction == UISwipeGestureRecognizerDirection.Right {
                        println("Called")
                    }else {
                        view.removeGestureRecognizer(recognizer as! UIGestureRecognizer)
                    }
                }
            }
            
        }else if recognizer.direction == UISwipeGestureRecognizerDirection.Left {
            println("Left")
            
            if let recognizers = view.gestureRecognizers {
                for recognizer in recognizers {
                    if recognizer.direction == UISwipeGestureRecognizerDirection.Left {
                        println("Called")
                    }else {
                        view.removeGestureRecognizer(recognizer as! UIGestureRecognizer)
                    }
                }
            }
        }else if recognizer.direction == UISwipeGestureRecognizerDirection.Up {
            println("Up")
            
            if let recognizers = view.gestureRecognizers {
                for recognizer in recognizers {
                    if recognizer.direction == UISwipeGestureRecognizerDirection.Up {
                        println("Called")
                    }else {
                        view.removeGestureRecognizer(recognizer as! UIGestureRecognizer)
                    }
                }
            }
        }else if recognizer.direction == UISwipeGestureRecognizerDirection.Down {
            println("Down")
            
            if let recognizers = view.gestureRecognizers {
                for recognizer in recognizers {
                    if recognizer.direction == UISwipeGestureRecognizerDirection.Down {
                        println("Called")
                    }else {
                        view.removeGestureRecognizer(recognizer as! UIGestureRecognizer)
                    }
                }
            }
        }

    }
    
    func leftSwiped(recognizer: UISwipeGestureRecognizer)
    {
        println("left swiped ")
        manageGesture(recognizer)
    }
    
    func downSwiped(recognizer: UISwipeGestureRecognizer)
    {
        println("down swiped ")
        manageGesture(recognizer)
    }
    
    func upSwiped(recognizer: UISwipeGestureRecognizer)
    {
        println("Up swiped ")
        manageGesture(recognizer)
    }


}

