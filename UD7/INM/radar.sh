#Variables globales
zero=0

if [ $(date +"%M") -lt 30 ]; then
  minutos=00
else
  minutos=30
fi

fechaResultado=$(date --date='-1 hour' +'%Y%m%d%H')$minutos
fechaMes=$(date +"%m")
fechaDia=$(date +"%d")
year=$(date +"%Y")

wget  
