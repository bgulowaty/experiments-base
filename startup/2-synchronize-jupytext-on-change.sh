
find /home/jovyan/work -type f -name "*.ipynb" -not -path "/home/jovyan/work/.ipynb_checkpoints/*" | while read fname; do
  linkedFiles="$(jupytext "$fname" -p)" || true
  if [[ $linkedFiles ]]; then
    echo "Detected linked Jupytext files for notebook ${fname}"
    filesAsString=$(echo "$linkedFiles" | paste -sd " " -)
    echo "When $fname $filesAsString will change, I will run jupytext --sync for $fname"
    when-changed -1 $fname $filesAsString -c "jupytext --sync $fname;sleep 5"&
  fi
done
