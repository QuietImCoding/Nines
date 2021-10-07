rm 27shapes/*

for f in $(ls 9shapes);do
    convert 9shapes/$f -interpolate Nearest -filter point -resize 360x360 -define png:color-type=2 bigshapes/$f;
done
