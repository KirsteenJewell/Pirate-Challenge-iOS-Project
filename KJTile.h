//
//  KJTile.h
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 10/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KJWeapon.h"
#import "KJArmour.h"


@interface KJTile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) KJWeapon *weapon;
@property (strong, nonatomic) KJArmour *armour;
@property (nonatomic) int healthEffect;

-(void)tileStory;

@end
