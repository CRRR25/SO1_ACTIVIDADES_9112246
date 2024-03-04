mkfifo mi_pipe

usuario1() {
  while true; do
    read mensaje 
    echo "Usuario 2: $mensaje"
    read respuesta
    echo $respuesta > mi_pipe
  done
}


usuario2() {
  while true; do 
    read mensaje
    echo $mensaje > mi_pipe
    read respuesta < mi_pipe
    echo "Usuario 1: $respuesta"
  done
}

usuario1 &
usuario2


rm mi_pipe