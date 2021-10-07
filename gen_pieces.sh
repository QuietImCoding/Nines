rm rows/*
rm bigpieces/*
rm boards/*

index=0
for shape in `ls bigshapes`; do
    for bg in `seq 0 40 359`; do
	for fg in `seq 0 40 359`; do
	    shapename="$(echo $shape | cut -d'.' -f1)"
	    fname="$index.$shapename.$fg.$bg.png"
	    convert bigshapes/$shape -fill "hsl($fg, 100%, 70%)" -draw 'rectangle 0,0,360,360' - |
		composite - bigshapes/$shape -compose darken bigpieces/$fname
	    convert bigshapes/$shape -fill "hsl($bg, 100%, 30%)" -draw 'rectangle 0,0,360,360' - |
		composite - bigpieces/$fname -compose lighten bigpieces/$fname
	    echo "Wrote $fname -- index $index"
	    index=$((index+1))
	done
    done
done

