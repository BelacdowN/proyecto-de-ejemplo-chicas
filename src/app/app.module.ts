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
import { FooterComponent } from './componentes/footer/footer.component';

import { FormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { EducacionComponent } from './componentes/educacion/educacion.component';
import { ProyectosComponent } from './componentes/proyectos/proyectos.component';
import { LoginComponent } from './componentes/login/login.component';
import { ModalLoginComponent } from './modales/modal-login/modal-login.component';
import { LogoutComponent } from './componentes/logout/logout.component';
import { ModalBannerComponent } from './modales/modal-banner/modal-banner.component';
import { ModalPerfilComponent } from './modales/modal-perfil/modal-perfil.component';
import { ModalSobremiComponent } from './modales/modal-sobremi/modal-sobremi.component';
import { ModalExperienciaComponent } from './modales/modal-experiencia/modal-experiencia.component';
import { ModalEducacionComponent } from './modales/modal-educacion/modal-educacion.component';
import { ModalHabilidadesComponent } from './modales/modal-habilidades/modal-habilidades.component';
import { ModalProyectosComponent } from './modales/modal-proyectos/modal-proyectos.component';

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    SobreMiComponent,
    Pagina404Component,
    IndexComponent,
    ExperienciaComponent,
    HabilidadesComponent,
    FooterComponent,
    EducacionComponent,
    ProyectosComponent,
    LoginComponent,
    ModalLoginComponent,
    LogoutComponent,
    ModalBannerComponent,
    ModalPerfilComponent,
    ModalSobremiComponent,
    ModalExperienciaComponent,
    ModalEducacionComponent,
    ModalHabilidadesComponent,
    ModalProyectosComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
