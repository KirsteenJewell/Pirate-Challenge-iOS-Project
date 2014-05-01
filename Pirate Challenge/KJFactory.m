//
//  KJFactory.m
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 11/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//

#import "KJFactory.h"
#import "KJTile.h"

@implementation KJFactory

-(NSArray *)tiles
{
    //Tile Objects
    KJTile *tile1 = [[KJTile alloc] init];
    tile1.story = @"Captain we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate boss. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    KJWeapon *bluntedSword = [[KJWeapon alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.actionButtonName = @"Take the Sword";
    
    KJTile *tile2 = [[KJTile alloc] init];
    tile2.story = @"You have come across an armoury. Would you like to upgrade your armour to steel armour?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    KJArmour *steelArmour = [[KJArmour alloc] init];
    steelArmour.name = @"Steel Armour";
    steelArmour.health = 8;
    tile2.armour = steelArmour;
    tile2.actionButtonName = @"Take the Armour";
    
    KJTile *tile3 = [[KJTile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Shoud we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    tile3.actionButtonName = @"Stop at the Dock";
    
    KJTile *tile4 = [[KJTile alloc] init];
    tile4.story = @"You have found a parrot. this can be used in your armour slot. Parrots are a great defender and are fiercely loyal to their captain!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    KJArmour *parrotArmour = [[KJArmour alloc] init];
    parrotArmour.name = @"Parrot";
    parrotArmour.health = 8;
    tile4.armour = parrotArmour;
    tile4.actionButtonName = @"Adopt a Parrot";

    KJTile *tile5 = [[KJTile alloc] init];
    tile5.story = @"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    KJWeapon *pistol = [[KJWeapon alloc] init];
    pistol.name = @"Pistol";
    pistol.damage = 17;
    tile5.weapon = pistol;
    tile5.actionButtonName = @"Take the Pistol";
    
    KJTile *tile6 = [[KJTile alloc] init];
    tile6.story = @"You have been captured by pirates and are ordered to walk the plank.";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    tile6.actionButtonName = @"Show No Fear";
    
    KJTile *tile7 = [[KJTile alloc] init];
    tile7.story = @"You have sighted a pirate battle off the coast. Should we intervene?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    tile7.actionButtonName = @"Fight those Scum";
    
    KJTile *tile8 = [[KJTile alloc] init];
    tile8.story = @"The legend of the deep. The mighty Kraken appears.";
    tile8.backgroundImage = [UIImage imageNamed:@"PirateOctopusAttack.jpg"];
    tile8.healthEffect = -46;
    tile8.actionButtonName = @"Abandon Ship";
    
    KJTile *tile9 = [[KJTile alloc] init];
    tile9.story = @"You have stumbled upon a hidden cave of pirate treasure";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    tile9.actionButtonName = @"Take Treasure";
    
    KJTile *tile10 = [[KJTile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship.";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    tile10.actionButtonName = @"Repel the Invaders";
    
    KJTile *tile11 = [[KJTile alloc] init];
    tile11.story = @"In the deep of the sea many things live and many things can be found. Will the fortune bring help?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    tile11.actionButtonName = @"Swim Deeper";
    
    KJTile *tile12 = [[KJTile alloc] init];
    tile12.story = @"Your final faceoff with the fearsome pirate boss!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    tile12.actionButtonName = @"Fight the Boss";
    
    //Column Arrays
    self.myColumn1Tiles = [[NSArray alloc] initWithObjects:tile1, tile2, tile3, nil];
    self.myColumn2Tiles = [[NSArray alloc] initWithObjects:tile4, tile5, tile6, nil];
    self.myColumn3Tiles = [[NSArray alloc] initWithObjects:tile7, tile8, tile9, nil];
    self.myColumn4Tiles = [[NSArray alloc] initWithObjects:tile10, tile11, tile12, nil];
    
    //Array of columns
    self.allMyTiles = [[NSArray alloc] initWithObjects:self.myColumn1Tiles, self.myColumn2Tiles, self.myColumn3Tiles, self.myColumn4Tiles, nil];
    
    //NSLog(@"My array of columns of tiles: %@", self.allMyTiles);
    
    return self.allMyTiles;
}

-(KJCharacter *) character
{
    //Character Object
    KJCharacter *character = [[KJCharacter alloc] init];
    character.health = 100;
    
    //Armour Object
    KJArmour *armour = [[KJArmour alloc] init];
    armour.name = @"Cloak";
    armour.health = 5;
    
    character.armour = armour;
    
    //Weapon Object
    KJWeapon *weapon = [[KJWeapon alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    
    character.weapon = weapon;
    
    return character;
}

-(KJBoss *) boss
{
    KJBoss *boss = [[KJBoss alloc] init];
    boss.health = 65;
    return boss;
}

@end
