/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.2.2                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

#include        "include/initialConditions"

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform $turbulentKE;

boundaryField
{
    inlet
    {
        type            inletOutlet;
        inletValue      $internalField;
        value           $internalField;
    }
    lowerWall
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    frontWall
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    backWall
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    obstacleLeft
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    obstacleRight
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    obstacleFront
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    obstacleBack
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    obstacleTop
    {
        type            kqRWallFunction;
        value           $internalField;
    }
    outlet
    {
        type            inletOutlet;
        inletValue      $internalField;
        value           $internalField;
    }
    atmosphere
    {
        type            zeroGradient;
    }
}




// ************************************************************************* //
