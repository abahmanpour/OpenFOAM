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
    location    "0";
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 0;

boundaryField
{
    inlet
    {
        type            calculated;
        value           uniform 0;
    }
    lowerWall
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    frontWall
    {
        type            calculated;
        value           uniform 0;
    }
    backWall
    {
        type            calculated;
        value           uniform 0;
    }
    obstacleLeft
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    obstacleRight
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    obstacleFront
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    obstacleBack
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    obstacleTop
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    outlet
    {
        type            calculated;
        value           uniform 0;
    }
    atmosphere
    {
        type            calculated;
        value           uniform 0;
    }
}


// ************************************************************************* //
