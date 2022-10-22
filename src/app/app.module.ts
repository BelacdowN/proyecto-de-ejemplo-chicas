import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './componentes/navbar/navbar.component';
import { SobreMiComponent } from './componentes/sobre-mi/sobre-mi.component';
import { Pagina404Component } from './componentes/pagina404/pagina404.component';
import { IndexComponent } from './componentes/index/index.component';
import { ExperienciaComponent } from './componentes/experiencia/experiencia.component';
import { HabilidadesComponent } from './componentes/habilidades/habilidades.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    SobreMiComponent,
    Pagina404Component,
    IndexComponent,
    ExperienciaComponent,
    HabilidadesComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
