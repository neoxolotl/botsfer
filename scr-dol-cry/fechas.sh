#!/bin/bash

fecha_inicio=20131225
fecha_final=20140106

HOY=$(date)
echo "La fecha de hoy es $HOY"

HOY_FORMATO_1=$(date +%Y-%m-%d)
echo "Fecha hoy en formato ano-mes-dia : $HOY_FORMATO_1"

HOY_FORMATO_2=$(date +%d-%m-%Y)
echo "Fecha hoy en formato dia-mes-ano : $HOY_FORMATO_2"

DIFERENCIA=$(( ($(date --date "$fecha_final" +%s) - $(date --date "$fecha_inicio" +%s) )/(60*60*24) ))
echo "Diferencia $fecha_inicio y $fecha_final : $DIFERENCIA dias"

PRIMER_DIA_DEL_MES=$(date --date "-$(($(date +%d) -1)) days" +%Y%m%d)
echo "Fecha 1er. dia del mes : $PRIMER_DIA_DEL_MES"

ULTIMO_DIA_DEL_MES=$(date --date "-$(($(date +%d) -1)) days + 1 month -1 days" +%Y%m%d)
echo "Fecha ultimo dia del mes : $ULTIMO_DIA_DEL_MES"

DOMINGO=$(date --date "-$(date +%u) days" +%Y%m%d)
echo "Fecha dia Domingo Anterior : $DOMINGO"

LUNES=$(date --date "-$(( $(date +%u) + 6 )) days" +%Y%m%d)
echo "Fecha dia Lunes Anterior : $LUNES"

HACE_TRES_DIAS=$(date --date "-3 days" +%Y%m%d)
echo "Hace tres dias : $HACE_TRES_DIAS"

MAS_TRES_DIAS=$(date --date "+3 days" +%Y%m%d)
echo "En tres dias mas : $MAS_TRES_DIAS"

HACE_UN_MES=$(date --date "-1 month" +%Y%m%d)
echo "Hace un mes : $HACE_UN_MES"
exit
