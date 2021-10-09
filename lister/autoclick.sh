i=678
while [[ $i -lt 729 ]]; do 
# Click Add item
    cliclick -e 5 -m verbose dc:840,245 w:2000 c:245,530 w:1000 c:530,340 t:"$i" w:1000 kp:return dc:950,805 c:950,805 w:1000 kp:arrow-up w:100 kp:return w:8000
    xbtn=$(cliclick cp:690,250)
    echo $xbtn
    cliclick -e 5 -m verbose dc:690,250 w:1000 c:210,240 w:2000
i=$((i+1))
done
