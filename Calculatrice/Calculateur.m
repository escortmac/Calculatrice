/*****************************************************************/
/***********************  Calculateur.m  *************************/
/***********************  Calculatrice  **************************/
/*                                                               */
/*  Créée par PHILIPPE PESCATORE et Corynne RIPOLL le 22/04/13   */
/*  Copyright (c) 2013 i@telier. All rights reserved.            */
/*                                                               */
/*****************************************************************/
/**********************    SECTION : IMPORT    *******************/
/*****************************************************************/

#import "Calculateur.h"

/*****************************************************************/
/******************    SECTION : IMPLEMENTATION    ***************/
/*****************************************************************/

@implementation Calculateur

/******************   SOUS-SECTION : METHODES    *****************/
@synthesize operande;
// Une première méthode pour initialiser l'opérande (lui donner une valeur)
//-(void) setOperande:(double)unOperande
//{
    // L'opérande est égal à la valeur unOperande envoyée par le contrôleur au Modèle
  //  operande=unOperande;
//}

// Une deuxième méthode pour exécuter une opération

-(double)executerUneOperation:(NSString*)operation
{
    // Si operation choisie par l'utilisateur est une racine carrée par exemple, alors le résultat est la racine carrée de l'opérande
    if ([operation isEqual:@"Rac"])
    {
        operande=sqrt(operande);
    }
    
// Sinon on attend avant d'exécuter
    
    else
    {
        [self attendreAvantDExecuterOperation];
        // On stocke le dernier signe d'opération tapé
        operationEnAttente=operation;
        // On stocke le dernier opérande tapé
        operandeEnAttente=operande;
    }
        // On retourne l'opérande (le résultat)
    return operande;
}

// Une troisième méthode pour éxécuter une opération en attente d'une autre saisie
-(void)attendreAvantDExecuterOperation
{
    // Là, on va stocker les résultats en attente d'une saisie de '='
    // Si je tape l'addition je cumule l'opérande avec l'opérande en attente
    // On va créer operandeEnAttente qui est aussi du type double
    
    if ([@"+" isEqual:operationEnAttente])
    {
        operande=operandeEnAttente+operande;
    }
    else if ([@"-" isEqual:operationEnAttente])
    {
        operande=operandeEnAttente-operande;
    }
    else if ([@"*" isEqual:operationEnAttente])
    {
        operande=operandeEnAttente*operande;
    }
    else if ([@"/" isEqual:operationEnAttente])
    {
        // Bien entendu on effectue une division seulement si le dénominateur est différent de 0 !
        if (operande!=0)
        {
            operande=operandeEnAttente/operande;
        }
                
    }
}


@end
