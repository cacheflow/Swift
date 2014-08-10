//
//  GameScene.swift
//  FlappyBird
//
//  Created by Lex Alexander on 8/10/14.
//  Copyright (c) 2014 Lex Alexander. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var mario = SKSpriteNode()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        //Physics for environment
        self.physicsWorld.gravity = CGVectorMake(0.0, -5.0);
        
        
        //Mario
        var MarioTexture = SKTexture(imageNamed: "mario")
        MarioTexture.filteringMode = SKTextureFilteringMode.Nearest
        
        mario = SKSpriteNode(texture: MarioTexture)
        mario.setScale(0.5)
        mario.position = CGPoint(x: self.frame.size.width * 0.35, y: self.frame.size.height * 0.6)
        
        mario.physicsBody = SKPhysicsBody(circleOfRadius:mario.size.height/2.0)
        mario.physicsBody.dynamic = true
        mario.physicsBody.allowsRotation = false
        
        self.addChild(mario)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
           
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
