find -name "*.cocci" -type f | while read f; do
    if cat ${f} | grep "Unable to infer" >/dev/null; then
        echo ${f}
        rm ${f}
    fi
done

