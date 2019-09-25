#!/bin/sh
(
    cd proj/targets &&
    for t in *
    do
        if ! [ "$t" = 'unittest' ]
        then
            filename="../../answers/$t.json"
            echo "Generating $filename"
            newt target dump "$t" > "$filename"
        fi
    done
)
