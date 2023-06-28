# SSH

Una clave SSH, también conocida como clave de autenticación SSH, es un mecanismo de seguridad utilizado en el protocolo SSH (Secure Shell) para establecer una conexión segura y autenticada entre dos sistemas, como un cliente y un servidor.

En lugar de utilizar contraseñas tradicionales, que pueden ser más vulnerables a ataques de fuerza bruta o phishing, las claves SSH ofrecen una capa adicional de seguridad. Estas claves consisten en un par de archivos: una clave privada y una clave pública.

La clave privada se almacena de forma segura en el sistema del usuario y no se comparte con nadie. La clave pública se copia en el sistema remoto al que se desea acceder. Cuando el usuario intenta conectarse al sistema remoto, el cliente SSH utiliza la clave privada para generar una firma digital que se envía al servidor remoto. El servidor utiliza la clave pública almacenada para verificar la firma y autenticar al usuario. Si la firma se verifica correctamente, se permite el acceso.

# Generar una nueva clave SSH y agregarla al ssh-agent

- Abra la terminal, a continuación siga paso a paso cada comando copiando o escribendo cada línea tal y cual como aparece descrita.
- En lugar de `tu_correo@example.com` escriba su correo asociado a su cuenta de GitHub.

```shell
$ ls -al ~/.ssh
$ ssh-keygen -t rsa -b 4096 -C "tu_correo@example.com"
```

- Se le pedirá ingresar una **clave**, puede continuar presionando la tecla **ENTER**  
- Reinicie el servicio `SSH-agent`. 

```
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
```


# Agregar una nueva clave SSH a su cuenta de GitHub

1. Copie la clave pública SSH en su portapapeles

- Abra la terminal, a continuación siga paso a paso cada comando.

```shell
$ ls -al ~/.ssh
$ sudo apt-get install xclip
$ cat ~/.ssh/id_rsa.pub | xclip -selection clipboard
```

2. Vaya a la página de GitHub e inicie sesión con su cuenta.
3. En la esquina superior derecha de cualquier página, haga clic en su foto de perfil y luego en **Configuración**.
![](./images/userbar-account-settings.webp)
4. En la sección "Acceso" de la barra lateral, haga clic en Claves SSH y GPG.
5. Haga clic en Nueva clave SSH o Agregar clave SSH.
6. En el campo **"Título"**, agregue una etiqueta descriptiva para la nueva clave. Por ejemplo, si está utilizando una computadora portátil personal, puede llamar a esta clave *"Laptop personal"*.
7. Seleccione el tipo de clave, **"authentication"**.
8. En el campo **"Clave"**, pegue su clave pública.
9. Haga clic en **Agregar clave SSH**.
10. Si se le solicita, confirme el acceso a su cuenta en GitHub.

# Probando tu conexión SSH
Cuando pruebe su conexión, deberá autenticar esta acción con su contraseña, que es la frase de contraseña de la clave SSH que creó anteriormente. 

- Abra la terminal 

```shell
$ ssh -T git@github.com
```

- Con su editor de texto favorito, abra el archivo en ~/.ssh/config
- Se hará con el editor de texto `nano`.

```shell
$ nano ~/.ssh/config
```

Copiar y pegar lo siguiente:

```
Host *
  IgnoreUnknown AddKeysToAgent,UseKeychain
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

Presione la siguiente combinación de teclas: 

- `ctrl + o` 
- `Enter` 
- `ctrl + x`

Reinicie el `ssh-agent`
```shell
$ eval "$(ssh-agent -s)"
```
