for f in $(ls bigpieces); do
    newf=$(echo $f | sed 's/\.0\./\.red\./g' | sed 's/\.40\./\.orange\./g' | sed 's/\.80\./\.yellow\./g' | sed 's/\.120\./\.green\./g' | sed 's/\.160\./\.teal\./g' | sed 's/\.200\./\.blue\./g' | sed 's/\.240\./\.indigo\./g' | sed 's/\.280\./\.violet\./g' | sed 's/\.320\./\.magenta\./g' | sed 's/\.0\./\.red\./g' | sed 's/\.40\./\.orange\./g' | sed 's/\.80\./\.yellow\./g' | sed 's/\.120\./\.green\./g' | sed 's/\.160\./\.teal\./g' | sed 's/\.200\./\.blue\./g' | sed 's/\.240\./\.indigo\./g' | sed 's/\.280\./\.violet\./g' | sed 's/\.320\./\.magenta\./g')
    echo "Moving $f to $newf"
    mv bigpieces/$f bigpieces/$newf
done
