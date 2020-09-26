namespace db.HogwartsService;

using {
    cuid,
    managed
} from '@sap/cds/common';

type Puntuacion : Integer enum {
    Mejor = 5;
    Bien  = 4;
    Media = 3;
    Pobre = 2;
    Peor  = 1;
}

type Peso : {
    cantidad : Decimal(4, 2);
    unidad   : Unidades;
}

type Unidades : String enum {
    Kilogramo  = 'KG';
    Gramo      = 'G';
    Litro      = 'L';
    Centilitro = 'CL';
    Mililitro  = 'ML';
}

entity Productos : cuid, managed {
    nombre     : String;
    puntuacion : Decimal(2, 1)
}