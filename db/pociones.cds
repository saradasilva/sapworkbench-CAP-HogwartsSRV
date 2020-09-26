namespace db.HogwartsService;

using {
    db.HogwartsService
} from '../db/productos';
using {
    cuid,
    managed
} from '@sap/cds/common';


entity Pociones :  HogwartsService.Productos {
    peso       : HogwartsService.Peso;
    referencia : String;
    proveedor  : Association to Proveedores
}

entity Proveedores : cuid {
    nombre     : String;
    puntuacion : HogwartsService.Puntuacion
}

entity Reviews : cuid, managed {
    puntuacion: HogwartsService.Puntuacion;
    objeto: UUID;
}
