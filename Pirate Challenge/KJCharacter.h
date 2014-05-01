//
//  KJCharacter.h
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 29/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KJArmour.h"
#import "KJWeapon.h"

@interface KJCharacter : NSObject

@property (strong, nonatomic) KJArmour *armour;
@property (strong, nonatomic) KJWeapon *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
