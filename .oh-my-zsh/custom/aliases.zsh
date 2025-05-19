alias dps='sudo docker ps'
alias dcr='sudo docker compose restart'
dcu() {
    sudo docker compose up -d $1
    sudo docker compose logs -f $1
}
dcub() {
    sudo docker compose up -d --build $1
    sudo docker compose logs -f $1
}
alias dcud='sudo docker compose up -d'
alias dcd='sudo docker compose down'
alias dcs='sudo docker compose stop'
alias dcl='sudo docker compose logs'
alias dcps='sudo docker compose ps'
