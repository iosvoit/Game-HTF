//
//  GameScene.swift
//  HappyTodayFuture
//
//  Created by Christina on 03.09.15.
//  Copyright (c) 2015 Christina. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        
        
        
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch =  touches.first as? UITouch {
            
        let introLabel = childNodeWithName("introLabel")
        
        if (introLabel != nil) {
           
            let fadeOut = SKAction.fadeOutWithDuration(1.5)
            
            introLabel?.runAction(fadeOut, completion: {
                
                let doors = SKTransition.doorwayWithDuration(1.5)
                let shooterScene = ShooterScene(fileNamed: "ShooterScene")
                self.view?.presentScene(shooterScene, transition: doors)
                
                })
            
            
            }
        }
        
        
        
        
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
