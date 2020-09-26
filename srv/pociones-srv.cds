namespace srv.HogwartsService;

using {db.HogwartsService} from '../db/pociones';

service ArmarioSnapeSrv {
    entity Pociones    as projection on HogwartsService.Pociones;
    entity Proveedores as projection on HogwartsService.Proveedores;
    entity Reviews     as projection on HogwartsService.Reviews
}
