import { Component, OnInit } from '@angular/core';
import { DatosService } from 'src/app/servicios/datos.service';

@Component({
  selector: 'app-sobre-mi',
  templateUrl: './sobre-mi.component.html',
  styleUrls: ['./sobre-mi.component.css']
})
export class SobreMiComponent implements OnInit {
  // creacion de variable para usar
 personas : any;

//inyeccion de dependencias
  constructor(private datos: DatosService) { }

  //metodo al iniciar
  ngOnInit(): void {
    this.datos.getDatos().subscribe(data => {
      this.personas = data.personas;
    })
  }

  

}
