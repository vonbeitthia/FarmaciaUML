# Analisis de *sistema de Farmacia*
## Herramientas
- [Editor Plantuml](https://sujoyu.github.io/plantuml-previewer/)
- [Extension firefox](https://addons.mozilla.org/en-US/firefox/addon/plantuml-visualizer/)
- [Ayuda en linea](https://plantuml.com/sitemap-language-specification)
___
## Diagramas
### Casos de uso
- [global](/diagramas/USCglobal.plantuml)

```
@startuml casos de uso1
title 
    caso de uso general (UCgeneral)
    **sistema de Farmacia**
end title
header
    vision global de sistema
end header
!include https://github.com/vonbeitthia/FarmaciaUML/tree/main/skin
'///////////////////////
'left to right direction
actor A10UsuarioAnonimo
actor A12UsuarioRegistrado #red
rectangle "sistema" {
    'CRUD
    usecase USC12AgregarMedicamento
    usecase USC10BuscarMedicamento
    usecase USC14ModificarMedicamento
    usecase USC16EliminarMedicamento
}
A10UsuarioAnonimo -- USC10BuscarMedicamento 
A12UsuarioRegistrado -u- USC10BuscarMedicamento <<token>>
A12UsuarioRegistrado -u- USC12AgregarMedicamento <<token>>
A12UsuarioRegistrado -u- USC14ModificarMedicamento <<token>>
A12UsuarioRegistrado -u- USC16EliminarMedicamento <<token>>
note right of A12UsuarioRegistrado
    el usuario registrado requiere
    autenticacion en el sistema
end note

@enduml
```
