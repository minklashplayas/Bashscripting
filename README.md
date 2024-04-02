Claro, aquí tienes una guía básica del uso de Git en Termux:

1. **Instalación de Git**: Si aún no tienes Git instalado en Termux, puedes instalarlo ejecutando el siguiente comando:
   ```
   pkg install git
   ```

2. **Configuración de Git**: Antes de comenzar a usar Git, es recomendable configurar tu nombre de usuario y dirección de correo electrónico. Puedes hacerlo con los siguientes comandos, reemplazando `"Tu Nombre"` y `"tu_correo@example.com"` con tu información real:
   ```
   git config --global user.name "Tu Nombre"
   git config --global user.email "tu_correo@example.com"
   ```

3. **Clonar un repositorio**: Para clonar un repositorio Git existente, puedes usar el comando `git clone <URL_del_repositorio>`. Por ejemplo:
   ```
   git clone https://github.com/ejemplo/repo.git
   ```

4. **Iniciar un repositorio nuevo**: Si estás comenzando un nuevo proyecto y deseas versionar tu código con Git, puedes iniciar un nuevo repositorio en el directorio de tu proyecto con el comando `git init`. Por ejemplo:
   ```
   cd mi_proyecto
   git init
   ```

5. **Agregar archivos al área de preparación**: Para agregar archivos al área de preparación (staging area) antes de realizar un commit, puedes usar el comando `git add <archivo>`. Por ejemplo:
   ```
   git add archivo.txt
   ```

6. **Realizar un commit**: Después de agregar los archivos al área de preparación, puedes confirmar los cambios con un commit utilizando el comando `git commit -m "Mensaje del commit"`. Por ejemplo:
   ```
   git commit -m "Agregando archivo.txt"
   ```

7. **Ver el estado del repositorio**: Puedes ver el estado actual del repositorio, incluyendo los archivos modificados y los que están en el área de preparación, con el comando `git status`:
   ```
   git status
   ```

8. **Subir cambios a un repositorio remoto**: Para subir tus cambios a un repositorio remoto (por ejemplo, en GitHub), puedes usar el comando `git push`. Asegúrate de haber configurado correctamente el repositorio remoto con `git remote add` si aún no lo has hecho.

9. **Actualizar tu repositorio local**: Si otros colaboradores han realizado cambios en el repositorio remoto, puedes actualizar tu repositorio local con el comando `git pull`. Esto traerá los cambios del repositorio remoto a tu rama actual.

10. **Ramas (branches)**: Git te permite trabajar en diferentes ramas de desarrollo independientes. Puedes crear una nueva rama con `git branch <nombre_rama>` y cambiar a ella con `git checkout <nombre_rama>` o `git switch <nombre_rama>`. Por ejemplo:
    ```
    git branch nueva_rama
    git checkout nueva_rama
    ```

Estos son solo algunos de los comandos básicos de Git. Con estos, deberías poder comenzar a trabajar con Git en Termux. Recuerda que Git tiene muchas más funcionalidades, así que te recomiendo que consultes la documentación oficial de Git o realices tutoriales más completos para aprender más sobre su uso avanzado.

Por supuesto, aquí tienes algunos usos más avanzados de Git y cómo añadir o cambiar usuarios:

### Usos avanzados de Git:

1. **Fusionar ramas (merge)**: Cuando trabajas en diferentes ramas de desarrollo, eventualmente querrás fusionar los cambios de una rama en otra. Puedes hacerlo utilizando el comando `git merge <nombre_rama>`.

2. **Revertir cambios (revert)**: Si necesitas deshacer un commit específico y eliminar sus cambios del historial, puedes usar el comando `git revert <hash_del_commit>`.

3. **Rebase**: El rebase es una forma de modificar la historia de tu repositorio. Puedes utilizarlo para integrar cambios de una rama a otra de una forma más limpia y lineal que el merge. El comando básico es `git rebase <rama_destino>`.

4. **Etiquetar commits (tag)**: Puedes etiquetar commits importantes en tu historial con un nombre significativo utilizando el comando `git tag <nombre_etiqueta>`. Esto es útil para marcar versiones importantes de tu proyecto.

5. **Stash**: A veces necesitarás guardar temporalmente tus cambios sin realizar un commit. Puedes hacerlo utilizando `git stash`, que guarda tus cambios en una pila temporal para que puedas trabajar en otra cosa y luego recuperarlos más tarde.

6. **Submódulos**: Los submódulos de Git te permiten incluir otros repositorios Git dentro de tu propio repositorio Git. Esto es útil cuando deseas incluir dependencias externas en tu proyecto.

### Añadir o cambiar usuarios en Git:

Para añadir o cambiar usuarios en Git, simplemente necesitas modificar la configuración global de Git. Puedes hacerlo con los siguientes comandos:

1. **Cambiar el nombre de usuario**:
   ```bash
   git config --global user.name "Nuevo Nombre"
   ```

2. **Cambiar la dirección de correo electrónico**:
   ```bash
   git config --global user.email "nuevo_correo@example.com"
   ```

3. **Verificar la configuración actual**:
   ```bash
   git config --global --list
   ```

Es importante tener en cuenta que `--global` establece la configuración para todos los repositorios Git en tu sistema. Si deseas configurar un nombre de usuario o correo electrónico específico para un repositorio en particular, puedes omitir `--global` y ejecutar estos comandos dentro del directorio del repositorio localmente.

Con estos comandos, puedes cambiar fácilmente el nombre de usuario y la dirección de correo electrónico asociados con tus commits en Git.

Para eliminar el usuario global en Git, simplemente necesitas eliminar las entradas correspondientes en la configuración global de Git. Puedes hacerlo utilizando el comando `git config --global --unset` seguido del nombre de la clave que deseas eliminar. En este caso, serían las claves `user.name` y `user.email`.

Aquí tienes cómo hacerlo:

```bash
git config --global --unset user.name
git config --global --unset user.email
```

Con estos comandos, eliminarás el nombre de usuario y la dirección de correo electrónico que estaban configurados globalmente en Git. Ahora Git no utilizará estas configuraciones al realizar commits, y en su lugar, deberás configurarlas localmente en cada repositorio si así lo deseas.
