# App de alérgenos (nombre provisional)

App móvil (Android + iOS) que avisa a personas con alergias e intolerancias
alimentarias de la presencia de sus alérgenos en menús de restaurantes.

## Estado

Fase de diseño. Sin código de aplicación todavía. Ver `docs/ESTADO-PROYECTO.md`.

## Cómo retomar el trabajo con Claude sin gastar tokens de más

El archivo **`CLAUDE.md`** (raíz del repositorio) resume todo el estado y las
decisiones. En Claude Code se lee de forma automática. En la app web de Claude,
añádelo al "Conocimiento del proyecto" para que Claude lo lea sin releer el
historial completo.

## Estructura

```
.
├── CLAUDE.md                  Contexto central (leer primero)
├── README.md
├── docs/
│   ├── ESTADO-PROYECTO.md     Estado y decisiones
│   └── superpowers/specs/     Especificaciones de diseño
├── disenos/                   Maquetas HTML
└── .claude/skills/            Skills del proyecto (a futuro)
```

## Pila tecnológica (tentativa)

React Native + Expo · Cloudflare D1 · API de IA para escaneo (por decidir).
