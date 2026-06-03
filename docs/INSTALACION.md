# Instalación de herramientas (AllergINC)

Guía de instalación paso a paso. Importante: está ordenada por fases. **Para el
trabajo de diseño (donde estamos ahora) NO necesitas instalar casi nada.** Las
instalaciones de Expo, Cloudflare y MCP solo hacen falta cuando lleguemos a
programar (paso 9 del flujo de Superpowers).

> Aviso: estos comandos eran válidos a fecha de creación del documento. Las
> versiones cambian. Verifica siempre en la documentación oficial enlazada.

---

## Fase A — Lo único necesario para diseñar (ahora)

Programa: **VS Code** + extensión **Claude Code** + **Git**.

- VS Code: ya instalado.
- Claude Code: ya instalado (plugin de Superpowers global confirmado).
- Git: ya instalado (lo usas en el repo del juego).

No hace falta nada más para el trabajo de diseño. Si los tres están, salta a la
Fase B solo cuando vayamos a programar.

Documentación de Claude Code: https://docs.claude.com/en/docs/claude-code/overview

---

## Fase B — Cuando empecemos a programar la app (paso 9)

### B.1 · Node.js (requisito base de todo lo demás)

Node.js es el motor que necesitan Expo y Cloudflare. Trae `npm` y `npx`.

- Programa: navegador + terminal.
- Descarga la versión **LTS** desde https://nodejs.org y ejecuta el instalador.
- Verifica en la terminal:

```bash
node --version
npm --version
```

Si ambos devuelven un número de versión, está listo.

### B.2 · Expo (la app React Native)

Expo permite crear y probar la app sin publicarla. No requiere instalación
global: se usa con `npx`.

- Programa: terminal (en la carpeta del proyecto) + app **Expo Go** en tu móvil.
- Instala "Expo Go" desde Play Store (Android) o App Store (iOS): es lo que
  ejecuta la app en tu teléfono mientras desarrollas.
- Crear el proyecto Expo dentro del repositorio (cuando toque):

```bash
npx create-expo-app@latest .
```

- Arrancar el entorno de pruebas:

```bash
npx expo start
```

Aparece un código QR; lo escaneas con Expo Go y ves la app en tu móvil en vivo.

Documentación: https://docs.expo.dev

> Emuladores (opcional, más adelante): para probar sin móvil físico harían falta
> Android Studio (emulador Android) o Xcode (solo en Mac, para iOS). Son pesados y
> NO son necesarios mientras uses Expo Go en tu teléfono.

### B.3 · Cloudflare (base de datos D1)

La interacción con Cloudflare se hace con `wrangler`, su herramienta de línea de
comandos. También se usa con `npx`, sin instalación global.

- Programa: terminal + navegador (para iniciar sesión) + cuenta de Cloudflare
  (gratuita, se crea en https://dash.cloudflare.com/sign-up).
- Iniciar sesión (abre el navegador para autorizar):

```bash
npx wrangler login
```

- Crear la base de datos D1 (cuando diseñemos el modelo de datos):

```bash
npx wrangler d1 create allerginc-db
```

Esto devuelve un identificador que se guarda en la configuración del proyecto.

Documentación: https://developers.cloudflare.com/d1/

### B.4 · MCP (conectar servicios a Claude Code)

Un MCP es un conector que da a Claude Code acceso a un servicio externo (por
ejemplo, Cloudflare) para que pueda operar sobre él directamente. Es opcional y
avanzado; solo tiene sentido cuando ya haya base de datos que gestionar.

- Programa: terminal (Claude Code).
- Añadir un servidor MCP se hace con el comando `claude mcp add` o declarándolo en
  un archivo `.mcp.json` en la raíz del proyecto. La configuración exacta depende
  del servicio.

Documentación (verificar el método vigente):
https://docs.claude.com/en/docs/claude-code/overview

> Decisión: dejamos los MCP para cuando exista base de datos. Antes no aportan nada
> y añaden complejidad.

### B.5 · API de IA para el escaneo (subsistema D)

Pendiente de decidir proveedor y de estimar coste por uso. Se documentará aquí
cuando se elija, junto con cómo guardar la clave de forma segura (variable de
entorno en `.env`, nunca en el código ni en git).

---

## Resumen: qué instalar y cuándo

| Herramienta | Programa | ¿Cuándo? |
|-------------|----------|----------|
| VS Code, Claude Code, Git | — | Ya instalado |
| Node.js | Instalador web | Al empezar a programar |
| Expo + Expo Go | Terminal + móvil | Al empezar la app |
| Cloudflare wrangler | Terminal + cuenta | Al diseñar la base de datos |
| MCP | Terminal (Claude Code) | Cuando haya base de datos |
| API de IA | Terminal + `.env` | Al diseñar el escaneo (D) |
