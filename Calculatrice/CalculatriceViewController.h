/*****************************************************************/
/****************  CalculatriceViewController.h  *****************/
/***********************  Calculatrice  **************************/
/*                                                               */
/*  Créée par PHILIPPE PESCATORE et Corynne RIPOLL le 22/04/13   */
/*  Copyright (c) 2013 i@telier. All rights reserved.            */
/*                                                               */
/*****************************************************************/
/**************    SECTION : DECLARATION PREALABLE    ************/
/*****************************************************************/

#import <UIKit/UIKit.h>
//On importe la classe qu'on a créée : Calculateur.h
#import "Calculateur.h"

/*****************************************************************/
/********************    SECTION : INTERFACE    ******************/
/*****************************************************************/

@interface CalculatriceViewController : UIViewController

/*****************    SOUS-SECTION : VARIABLES    ****************/
{
    // Nous allons créer une première variable d'instance de notre calculateur
    
    Calculateur*calculateur;
    
    // Nous allons créer ensuite une sortie, un Outlet, resultat
    IBOutlet UILabel *resultat;
    BOOL utilisateurAuMilieuDUneFrappe;
    
}

/*****************    SOUS-SECTION : METHODES    *****************/

//nous créons une première méthode IBAction qui va nous permettre de connaître le bouton du chiffre tapé
//l'argument sender veut dire émetteur : le chiffre qui est tapé sur la Vue est envoyé au Contrôleur
-(IBAction)chiffrePresse:(UIButton*)sender;

//nous créons une deuxième méthode IBAction qui va nous permettre de connaître le bouton de l'opération tapée
-(IBAction)operationPressee:(UIButton*)sender;

// Maintenant on copie nos 2 méthodes
@end
