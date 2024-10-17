# Terraform AWS VPC Setup

Este proyecto despliega una infraestructura básica en AWS utilizando Terraform. La configuración incluye un VPC, subredes públicas y privadas, un gateway de internet y tablas de enrutamiento.

## Contenido del Proyecto

- **main.tf**: Contiene la configuración del VPC.
- **subnets.tf**: Define las subredes públicas y privadas.
- **internet_gateway.tf**: Configura el gateway de internet.
- **route_tables.tf**: Define las tablas de rutas y sus asociaciones.

## Requisitos Previos

Antes de comenzar, asegúrate de tener lo siguiente instalado:

- [Terraform](https://www.terraform.io/downloads)
- [AWS CLI](https://aws.amazon.com/cli/) (opcional pero recomendado para configurar credenciales)
