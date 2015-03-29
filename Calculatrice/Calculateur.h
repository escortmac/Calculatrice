/*****************************************************************/
/***********************  Calculateur.h  *************************/
/***********************  Calculatrice  **************************/  
/*                                                               */
/*  Créée par PHILIPPE PESCATORE et Corynne RIPOLL le 22/04/13   */
/*  Copyright (c) 2013 i@telier. All rights reserved.            */
/*                                                               */
/*****************************************************************/
/**************    SECTION : DECLARATION PREALABLE    ************/
/*****************************************************************/

#import <Foundation/Foundation.h>

/*****************************************************************/
/*******************    SECTION : INTERFACE    *******************/
/*****************************************************************/

@interface Calculateur : NSObject

/*****************   SOUS-SECTION : VARIABLES    *****************/
{
    // On a une première variable : l'opérande qui est un nombre saisi sur la calculatrice
    // Avec deux opérandes, on peut faire une opération : 2 + 2 par exemple
    // Ici les deux opérandes sont 2 et 2 et l'opération est l'addition
@private
    double operande;
    double operandeEnAttente;
    NSString*operationEnAttente;
}

/******************   SOUS-SECTION : METHODES    *****************/
// Une première méthode pour initialiser l'opérande (lui donner une valeur)
@property double operande;

//-(void) setOperande:(double)unOperande;

// Une deuxième méthode pour exécuter une opération
// Ici, la méthode retourne un résultat double après avoir exécuter
// une opération : + - * / entre deux opérandes
// L'opération est de type NSString
// Car le contrôleur de vues va envoyer au modèle
// une chaîne pour lui dire "+" ou "-" ou "*" ou "/" a été choisi
-(double)executerUneOperation:(NSString*)operation;


// Une troisième méthode pour éxécuter une opération en attente d'une autre saisie
-(void)attendreAvantDExecuterOperation;

@end
