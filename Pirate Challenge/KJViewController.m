//
//  KJViewController.m
//  Pirate Challenge
//
//  Created by Kirsteen Jewell on 10/04/2014.
//  Copyright (c) 2014 limitless. All rights reserved.
//

#import "KJViewController.h"
#import "KJFactory.h"
#import "KJTile.h"

@interface KJViewController ()

@end

@implementation KJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Tile/Factory Object Init
    KJFactory *myFactory = [[KJFactory alloc] init];
    
    self.myTiles = [myFactory tiles];
    self.myCharacter = [myFactory character];
    self.myBoss = [myFactory boss];
    
    //Create a starting point for the tiles
    self.currentTilePoint = CGPointMake(0,0);
    [self updateCharacterStatsForArmour:nil withWeapons:nil withHealthEffect:0];
    [self updateButtons];
    [self updateTile];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBAction

- (IBAction)actionButtonPressed:(id)sender
{
    KJTile *tile = [[self.myTiles objectAtIndex:self.currentTilePoint.x] objectAtIndex:self.currentTilePoint.y];
    if (tile.healthEffect == -15) //BOSS
    {
        self.myBoss.health = self.myBoss.health - self.myCharacter.damage; //Weapon effect on boss
    }
    
    [self updateCharacterStatsForArmour:tile.armour withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.myCharacter.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died please start again" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    else if (self.myBoss.health <= 0)
    {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated the evil pirate boss" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }
    [self updateTile];
}

- (IBAction)northButtonPressed:(id)sender
{
    self.currentTilePoint = CGPointMake(self.currentTilePoint.x, self.currentTilePoint.y + 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(id)sender
{
    self.currentTilePoint = CGPointMake(self.currentTilePoint.x - 1, self.currentTilePoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(id)sender
{
    self.currentTilePoint = CGPointMake(self.currentTilePoint.x, self.currentTilePoint.y - 1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(id)sender
{
    self.currentTilePoint = CGPointMake(self.currentTilePoint.x + 1, self.currentTilePoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)resetButtonPressed:(id)sender {
    self.myCharacter = nil;
    self.myBoss = nil;
    [self viewDidLoad];
}

#pragma mark - Helper Methods

-(void)updateTile
{
    KJTile *tileModel = [[self.myTiles objectAtIndex:self.currentTilePoint.x] objectAtIndex:self.currentTilePoint.y];
    self.StoryLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroundImage;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.myCharacter.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.myCharacter.damage];
    self.armourLabel.text = self.myCharacter.armour.name;
    self.weaponLabel.text = self.myCharacter.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
    
}

-(void)updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTilePoint.x - 1, self.currentTilePoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTilePoint.x + 1, self.currentTilePoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTilePoint.x, self.currentTilePoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentTilePoint.x, self.currentTilePoint.y - 1)];
}

-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    //Positive
    if(point.y >= 0 && point.x >= 0 && point.x < [self.myTiles count] && point.y < [[self.myTiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void)updateCharacterStatsForArmour:(KJArmour *)armour withWeapons:(KJWeapon *) weapon withHealthEffect:(int)healthEffect
{

    if(armour != nil)
    {
        self.myCharacter.health = self.myCharacter.health - self.myCharacter.armour.health + armour.health;
        self.myCharacter.armour = armour;
    }
    else if(weapon != nil)
    {
        self.myCharacter.damage = self.myCharacter.damage - self.myCharacter.weapon.damage + weapon.damage;
        self.myCharacter.weapon = weapon;
    }
    else if(healthEffect != 0)
    {
        self.myCharacter.health = self.myCharacter.health + healthEffect;
    }
    else
    {
        self.myCharacter.health = self.myCharacter.health + self.myCharacter.armour.health;
        self.myCharacter.damage = self.myCharacter.damage + self.myCharacter.weapon.damage;
    }
}
    

@end
