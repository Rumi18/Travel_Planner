import { Component } from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';

//Servicios
import { GLOBAL } from '../services/global';
import { AlmacenamientoService } from '../services/almacenamiento.service';

@Component({
  selector: 'cabecera',
  templateUrl: '../views/cabecera.component.html'
})
export class CabeceraComponent {
  public title: string
  public componentURL: string;

  constructor(
    private _router: Router,
    private _route: ActivatedRoute,
    private _almacenamientoService: AlmacenamientoService
  ) {
    this.title = 'Travel Planner';
    this.componentURL = '';
  }

  ngOnInit() {
    this.componentURL = this._router.url;
  }

  //Se comprueba cual es la página a la que se tiene que redirigir en función de la página en la que está
  verComponente() {

    switch (GLOBAL.vistaSeleccionada) {

      case 'InicioComponent':
        break;

      case 'MenuComponent':
        break;

      case 'LoginComponent':
        this._router.navigate(['/inicio']);
        break;

      case 'RegistroComponent':
        this._router.navigate(['/inicio']);
        break;

      case 'RecuperacionComponent':
        this._router.navigate(['/login']);
        break;

      case 'PerfilComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'HistorialComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'RutasPendientesComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'ConfiguracionComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'TiendaComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'MapaComponent':
        this._router.navigate(['/menuOpciones']);
        break;

      case 'RutaComponent':
        this._router.navigate(['/rutasPendientes']);
        break;

      default:
        this._router.navigate(['/inicio']);
        break;
    }

  }

}