# Software Testing Mentor 🤖

Gema Ruby interactiva para enseñanza de **Pruebas de Software** con integración de **Google Gemini AI**. Diseñada para guiar a estudiantes a través de los diferentes tipos de pruebas con retos interactivos y análisis en tiempo real.

## 📚 Características Principales

### Tipos de Pruebas Incluidas

- **Pruebas Unitarias** - Pruebas de funciones individuales
- **Caja Blanca** - Pruebas considerando el código interno
- **Caja Negra** - Pruebas sin conocer la implementación
- **Caja Gris** - Híbrido entre blanca y negra
- **Humo (Smoke)** - Pruebas rápidas de funcionalidad básica
- **Estrés** - Pruebas bajo carga extrema
- **Estabilidad** - Pruebas de comportamiento a largo plazo
- **Integración** - Pruebas entre módulos
- **Aceptación** - Pruebas desde perspectiva del usuario

### Características IA

✨ **Integración Gemini**
- Explicaciones automáticas adaptadas al nivel del estudiante
- Generación de retos prácticos personalizados
- Análisis y feedback de código en tiempo real
- Generación automática de notebooks Google Colab

🎮 **Gamificación Educativa**
- Sistema de retos progresivos por dificultad
- Niveles: Principiante → Intermedio → Avanzado
- Feedback inmediato de la IA
- Menú interactivo intuitivo

## 🚀 Instalación

```bash
gem install software_testing_mentor
```

### Requisitos

- Ruby 2.7 o superior
- Gema `google-generativeai`
- Gema `colorize` para interfaz de colores
- Gema `thor` para CLI

### Dependencias

```ruby
gem 'google-generativeai', '~> 1.0'
gem 'colorize', '~> 1.1'
gem 'thor', '~> 1.3'
```

## ⚙️ Configuración

### Variable de Entorno Requerida

Debes configurar tu clave API de Gemini:

```bash
export GEMINI_API_KEY="tu-clave-api-aqui"
```

## 💡 Uso Básico

### Iniciar la Gema

```ruby
require 'software_testing_mentor'

SoftwareTestingMentor.start
```

Esto abre un menú interactivo donde puedes:

1. Seleccionar tipo de prueba
2. Elegir nivel de dificultad
3. Recibir explicación de Gemini
4. Aceptar reto práctico
5. Ir a Google Colab para resolver
6. Obtener feedback automático

### Uso Avanzado

#### Obtener Explicación de una Prueba

```ruby
unit_testing = SoftwareTestingMentor::TestingTypes::Unit.new
unit_testing.explain(:beginner)  # :beginner, :intermediate, :advanced
```

#### Iniciar un Reto

```ruby
unit_testing.start_challenge(:easy)  # :easy, :medium, :hard
```

#### Obtener Feedback

```ruby
code = File.read('mi_prueba.py')
unit_testing.get_feedback(code)
```

## 📖 Estructura de Directorios

```
software_testing_mentor/
├── lib/
│   ├── software_testing_mentor.rb      # Módulo principal
│   ├── version.rb                      # Versión de la gema
│   ├── gemini_integration/
│   │   ├── client.rb                   # Cliente Gemini
│   │   └── prompts.rb                  # Plantillas de prompts
│   ├── testing_types/
│   │   ├── base.rb                     # Clase base
│   │   ├── unit.rb                     # Pruebas unitarias
│   │   ├── white_box.rb                # Caja blanca
│   │   ├── black_box.rb                # Caja negra
│   │   ├── gray_box.rb                 # Caja gris
│   │   ├── smoke.rb                    # Pruebas de humo
│   │   ├── stress.rb                   # Pruebas de estrés
│   │   └── stability.rb                # Pruebas de estabilidad
│   ├── learning_path/
│   │   ├── course.rb                   # Gestión de cursos
│   │   ├── module.rb                   # Módulos de aprendizaje
│   │   ├── challenge.rb                # Gestión de retos
│   │   └── colab_generator.rb          # Generador de Colab
│   └── ui/
│       ├── interactive_menu.rb         # Menú interactivo
│       └── progress_tracker.rb         # Seguimiento de progreso
├── spec/                               # Tests
├── software_testing_mentor.gemspec     # Especificación de gema
├── Gemfile                             # Dependencias
├── LICENSE                             # Licencia MIT
└── README.md                           # Este archivo
```

## 🎯 Rutas de Aprendizaje

### Principiante (Beginner)
- Concepto: Explicación simple
- Ejemplo: Código comentado
- Reto: Escribir 5 pruebas básicas
- Tiempo: 15-20 minutos

### Intermedio (Intermediate)
- Concepto: Explicación detallada
- Implementación: Cómo hacerlo
- Reto: Casos de uso reales
- Tiempo: 30-45 minutos

### Avanzado (Advanced)
- Concepto: Análisis profundo
- Teoría: Fundamentos
- Reto: Código empresarial complejo
- Tiempo: 60-90 minutos

## 🔧 Ejemplos

### Ejemplo 1: Aprender Pruebas Unitarias

```ruby
require 'software_testing_mentor'

# Crear instancia
unit_test = SoftwareTestingMentor::TestingTypes::Unit.new

# Obtener explicación
unit_test.explain(:beginner)

# Ver el reto
unit_test.start_challenge(:easy)

# El usuario resuelve en Colab, luego:
code = "...código del usuario..."
unit_test.get_feedback(code)
```

### Ejemplo 2: Explorar Caja Blanca

```ruby
white_box = SoftwareTestingMentor::TestingTypes::WhiteBox.new
white_box.explain(:intermediate)
white_box.start_challenge(:medium)
```

## 📊 Características de Gemini AI

### Explicaciones Personalizadas

La IA adapta las explicaciones según el nivel:
- **Principiante**: Lenguaje simple, ejemplos básicos
- **Intermedio**: Detalles técnicos, casos reales
- **Avanzado**: Análisis profundo, optimizaciones

### Generación de Retos

Cada reto incluye:
- Descripción del problema
- Código a probar (pre-escrito)
- Instrucciones paso a paso
- Validaciones automáticas

### Feedback Inteligente

```
📋 Análisis de Código:
✅ Cobertura: 85%
⚠️ Mejoras sugeridas:
  - Agregar pruebas de error
  - Validar casos límite
📈 Puntuación: 78/100
```

## 🐍 Ejemplo de Reto en Python (Colab)

```python
# Tu tarea: Escribir pruebas unitarias para esta función

def calculate_discount(price, discount_percent):
    if price < 0:
        raise ValueError("El precio no puede ser negativo")
    if not 0 <= discount_percent <= 100:
        raise ValueError("Descuento debe estar entre 0 y 100")
    return price * (1 - discount_percent / 100)

# Escribe las pruebas aquí
import unittest

class TestCalculateDiscount(unittest.TestCase):
    # TODO: Implementar pruebas
    pass
```

## 📱 Interfaz Interactiva

El menú principal presenta:

```
███████╗ ████████╗ ███╗   ███║ ██╗ ███╗   ███╗
██╔════╝ ╚══██╔══╝ ████╗ ████║ ██║ ████╗ ████║
█████╗   ███║   █║ ██╔███╔██║ ██║ ██╔████╔██║
██╔══╝   ██║   █║ ██║╚██╔╝██║ ██║ ██║╚██╔╝██║
██║      ██║   █║ ██║ ╚═╝ ██║ ██║ ██║ ╚═╝ ██║
╚═╝      ╚═╝   ╚═╝ ╚═╝     ╚═╝ ╚═╝ ╚═╝     ╚═╝

🤖 Software Testing Mentor con IA Gemini

1. Pruebas Unitarias
2. Caja Blanca
3. Caja Negra
4. Caja Gris
5. Pruebas de Humo
6. Pruebas de Estrés
7. Pruebas de Estabilidad
8. Ver Progreso
9. Salir
```

## 🤝 Contribuir

Las contribuciones son bienvenidas. Por favor:

1. Fork el proyecto
2. Crea una rama para tu característica (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📝 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 🙏 Agradecimientos

- Google por la API Gemini
- Comunidad Ruby por las gemas auxiliares
- Educadores por los insights sobre enseñanza de testing

## 📞 Soporte

Para problemas, sugerencias o preguntas:
- Abre un Issue en GitHub
- Envía un email a feibert@example.com

## 🚀 Roadmap

- [ ] Interfaz web con Sinatra
- [ ] Sistema de progresión y badges
- [ ] Más tipos de pruebas
- [ ] Integración con GitHub para retos
- [ ] Plugin para VS Code
- [ ] Traducción a múltiples idiomas

---

**¡Aprende Testing de forma interactiva con IA!** 🎓
