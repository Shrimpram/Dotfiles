# Small shell script to search and open my debate theory files in nvim via fzf
# Using this because keeping all my theory args in one theory masterfile was getting extremely bloated
# I did not write this (just configured it to my use case), but I don't remember where exactly I got the script from, apologies to whoever originally wrote it =(

ftf() {
  cd '/mnt/c/Users/Shreeram Modi/Dropbox/LD - Shreeram/_Prep/Theory'
  previous_file="$1"
  file_to_edit=`select_file $previous_file`

  if [ -n "$file_to_edit" ] ; then
    "nvim" "$file_to_edit"
    ftf "$file_to_edit"
  fi
  cd -
}

select_file() {
  given_file="$1"
  fzf --preview="cat {}" --preview-window=right:70%:wrap --query="$given_file"
}
