




find /home/jovyan/work -type f -name "*.ipynb" -not -path "/home/jovyan/work/.ipynb_checkpoints/*" | while read fname; do
  echo "$fname"
#  linkedFiles="$(jupytext "$fname" -p)"
  linkedFiles=""
  echo "$linkedFiles"
  if [[ $linkedFiles ]]; then
    echo "Detected linked Jupytext files for notebook ${fname}"
    echo "$linkedFiles"
  fi
done
