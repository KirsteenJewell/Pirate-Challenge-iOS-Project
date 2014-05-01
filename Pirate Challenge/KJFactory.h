//
//  KJFactory.h
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 11/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KJCharacter.h"
#import "KJBoss.h"

@interface KJFactory : NSObject

-(NSArray *)tiles;
-(KJCharacter *) character;
-(KJBoss *) boss;

@property (strong, nonatomic) NSArray *myColumn1Tiles;
@property (strong, nonatomic) NSArray *myColumn2Tiles;
@property (strong, nonatomic) NSArray *myColumn3Tiles;
@property (strong, nonatomic) NSArray *myColumn4Tiles;
@property (strong, nonatomic) NSArray *allMyTiles;

//-(void)navigate;

@end
