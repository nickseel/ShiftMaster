//
//  NonsolidBlock.swift
//  coolGame
//
//  Created by Nick Seel on 5/19/17.
//  Copyright © 2017 Nick Seel. All rights reserved.
//

import Foundation
import SpriteKit

class NonsolidBlock: Entity {
    init(x: Int, y: Int) {
        super.init()
        
        self.x = Double(x)
        self.y = Double(y)
        
        isDynamic = false
        collisionType = -1
        collisionPriority = 99
        name = "nonsolid block"
        hitboxType = HitboxType.block
        zPos = 1
        
        defaultSpriteColor = ColorTheme.getGrayscaleColor(black: true, colorVariation: true)
        shader = BlockShaders.defaultBlockShader
        
        load()
    }
    
    init(x: Int, y: Int, invertVisible: Bool) {
        super.init()
        
        self.x = Double(x)
        self.y = Double(y)
        self.invertExclusive = true
        self.invertVisible = invertVisible
        
        isDynamic = false
        collisionType = -1
        collisionPriority = 99
        name = "nonsolid block"
        hitboxType = HitboxType.block
        zPos = 1
        
        defaultSpriteColor = ColorTheme.getGrayscaleColor(black: true, colorVariation: true)
        shader = BlockShaders.defaultBlockShader
        
        load()
    }
    
    override func update(delta: TimeInterval) {
        super.update(delta: delta)
    }
    
    override func updateAttributes() {
        
    }
    
    override func gameActionFirstFrame(_ action: GameAction) {
        super.gameActionFirstFrame(action)
    }
    
    override func load() {
        sprite = SKSpriteNode.init(color: defaultSpriteColor, size: CGSize.init(width: Board.blockSize, height: Board.blockSize))
        (sprite as! SKSpriteNode).shader = shader
        
        sprite.zPosition = zPos
        sprite.position = CGPoint(x: x * Board.blockSize, y: -y * Board.blockSize)
    }
}
