/*****************************************************************/
/****************  CalculatriceViewController.m  *****************/
/***********************  Calculatrice  **************************/
/*                                                               */
/*  Créée par PHILIPPE PESCATORE et Corynne RIPOLL le 22/04/13   */
/*  Copyright (c) 2013 i@telier. All rights reserved.            */
/*                                                               */
/*****************************************************************/
/*********************    SECTION : IMPORT    ********************/
/*****************************************************************/

#import "CalculatriceViewController.h"

/*****************************************************************/
/*******************    SECTION : EXTENSION    *******************/
/*****************************************************************/
// On verra ce qu'est une section d'Extension
// Avec la Théorie
// L'idée générale d'une extension est la suivante :
// En .m on déclare des méthodes et elles deviennent publiques
// Tout le monde les connaît
// Par EXCEPTION, on peut déclarer ICI en .m des METHODES
// Qu'on veut garder SECRETES ou PRIVEES
// On reviendra là-dessus

@interface CalculatriceViewController ()

@end

/*****************************************************************/
/*****************    SECTION : IMPLEMENTATION    ****************/
/*****************************************************************/

@implementation CalculatriceViewController



//nous créons une première méthode IBAction qui va nous permettre de connaître le bouton du chiffre tapé

-(IBAction)chiffrePresse:(UIButton*)sender
{
    
     // NSString*chiffre=[[sender titleLabel]text];
    NSString*chiffre = sender.titleLabel.text;
    if (utilisateurAuMilieuDUneFrappe)
    {
       // [resultat setText:[[resultat text]stringByAppendingString:chiffre]];
        resultat.text =[resultat.text stringByAppendingString:chiffre];
    }
    else
    {
        //[resultat setText:chiffre];
        resultat.text=chiffre;
        utilisateurAuMilieuDUneFrappe=YES;
    }
    
}
//nous créons une deuxième méthode IBAction qui va nous permettre de connaître le bouton de l'opération tapée
-(IBAction)operationPressee:(UIButton*)sender
{
    // On fait de même pour l'opération
    
    if (utilisateurAuMilieuDUneFrappe)
    {
       // [[self calculateur] setOperande:[[resultat text]doubleValue]];
        self.calculateur.operande=[resultat.text doubleValue];
        utilisateurAuMilieuDUneFrappe=NO;
    }
   
    NSString*operation=sender.titleLabel.text;
 
    //double unResultat = [[self calculateur] executerUneOperation:operation];
[self.calculateur executerUneOperation:operation];
    resultat.text=[NSString stringWithFormat:@"%g", self.calculateur.operande];
    
}

// Il nous demande d'initialiser notre variable d'instance brain
-(Calculateur*)calculateur
{
    // Donc, si nous n'avons pas déjà créé une variable d'instance de Calculateur
    if(!calculateur)
    {
        // On la crée !
        calculateur=[[Calculateur alloc]init];
    }
    // On retourne la variable d'instance du calculateur
    return calculateur;
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
