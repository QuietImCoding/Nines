for col in `seq 1 100`; do
    pieces=$(fd . pieces | shuf | head -n 100)
    convert $pieces +append rows/row$col.png
done
convert rows/row*.png -append board.png

