# Chat Básico con Named Pipes

Este es un sencillo chat de dos participantes implementado en Bash para Linux utilizando named pipes.

## Requisitos

- Sistema Linux (probado en Ubuntu)
- Bash
- mkfifo (incluido en la mayoría de distribuciones Linux)

## Uso

1. Clonar este repositorio
2. Dar permisos de ejecución al script: `chmod +x chat.sh`
3. Ejecutar el script: `./chat.sh`
4. Se abrirán dos terminales representando a cada usuario
5. Escribir un mensaje en una terminal y presionar Enter para enviar
6. En la otra terminal se verá el mensaje y se podrá responder

## Cómo funciona

El script crea un named pipe llamado `mi_pipe`. Luego se ejecutan dos funciones en paralelo, cada una en su propia terminal.

Cada función tiene un ciclo que lee del pipe los mensajes del otro usuario, los imprime en pantalla, y luego espera a que se escriba un mensaje para enviarlo por el pipe.

Esto permite una conversación básica donde los mensajes se enrutan por el named pipe `mi_pipe`.