# AGENTS.md

## What this is
This directory **is** the deployed web app (a Tomcat "exploded" webapp), not a source project.
Absolute path: `C:\xampp\tomcat\webapps\Ejercicios Java\ejerciciosjstl2`.
No source tree, no build output, no git.

Landing page is `index.jsp` at the app root. Exercises live **inside** `ejercicios/<n>/`, one numbered
folder per exercise (this layout is required — do not place exercise JSPs at the app root). Exercises
1–9 are all implemented. Exercise file names come
from the guide, not from the `index.jsp` convention of `../ejerciciosjstl1` (e.g. `ejercicios/1/Eje1.jsp`,
`ejercicios/2/Datos.jsp` + `ProcesarC.jsp`, `ejercicios/3/set1.jsp`, `ejercicios/4/Datosif.jsp` +
`Procesarif.jsp`, `ejercicios/5/Lenguaje.jsp` + `ProcesarC2.jsp`, `ejercicios/6/catch.jsp`,
`ejercicios/7/foreach.jsp`, `ejercicios/8/ForTokens.jsp` + `ResultTokens.jsp`, `ejercicios/9/Informacion.jsp`
+ `Procesarinfo.jsp`). `../ejerciciosjstl1` is the reference
implementation for the same course — mirror its patterns. There is no `web.xml`.

Runtime: XAMPP Tomcat **8.5.96** (Servlet 3.1 / `javax.servlet.*`, JSP 2.3), JDK 17.

## URL / context-root gotcha
`Ejercicios Java` is the Tomcat context root because this folder sits one level below `webapps/`.
The app is served at `http://localhost:8080/Ejercicios%20Java/ejerciciosjstl2/` — there is **no**
`/ejerciciosjstl2` context. A context descriptor cannot fix this: Tomcat rejects a `docBase` inside
`appBase`. Inside pages use `${pageContext.request.contextPath}/ejerciciosjstl2/...`.

## Build / run / test
- No Maven, Gradle, npm, tests, or linters exist. Do not add build tooling unless asked.
- JSPs compile on first request. Edit a `.jsp` and reload — no build/deploy step.
- Restart Tomcat with `C:\xampp\tomcat\catalina_stop.bat` then `catalina_start.bat` (or XAMPP control
  panel). Required after changing `WEB-INF/lib` or adding a `web.xml`.
- Path contains spaces: quote paths in shell commands.

## Dependencies
Only two jars in `WEB-INF/lib/` (adding a jar requires a Tomcat restart):
- `jstl-1.2.jar` → use the **legacy** URIs, e.g. `<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>` (NOT `jakarta.tags.*`/JSTL 3.x). Same for the `sql`/`fmt` taglibs.
- `mysql-connector-j-8.4.0.jar` → driver class `com.mysql.cj.jdbc.Driver`; Connector/J 8 URLs need a timezone, e.g. `jdbc:mysql://localhost:3306/<db>?serverTimezone=UTC`. The course's `ejercicios/9/WEB-INF/jspf/conexion.jspf` intentionally uses the legacy alias `com.mysql.jdbc.Driver` (still present in this jar) and a URL without a timezone — leave it as the guide specifies.

## Conventions (course-wide)
- No Servlets, ever: form handling uses only JSP + JSTL Core/EL (`${param.*}`).
- Result/output pages must be minimal: show only the typed values or computed result — no extra
  explanatory sections and no source-code demo columns, unless the user explicitly asks.
- Preserve `<%-- ... --%>` JSP comments; the user wants them kept.
- Bootstrap 5 + icons via CDN; consistent navbar, centered `shadow-sm` card, footer.
- Spanish content, UTF-8 (`<%@ page ... pageEncoding="UTF-8" %>`).
- DB exercises: JSTL SQL tags driven by a shared `WEB-INF/jspf/conexion.jspf` include (default XAMPP
  MySQL `root` / empty password); see `../ejerciciosjstl1/ejercicios/8`.

## Response convention
- After finishing any assigned task, always end with a brief summary of what was done and the exact
  URL to open it (e.g. `http://localhost:8080/Ejercicios%20Java/ejerciciosjstl2/`).
