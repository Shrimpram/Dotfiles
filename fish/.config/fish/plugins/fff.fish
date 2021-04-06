# set bookmarks
export FFF_FAV1='/mnt/c/Users/Shreeram Modi/dropbox/personal'
export FFF_FAV2='/mnt/c/Users/Shreeram Modi/dropbox/personal/Lynbrook'
export FFF_FAV3='/mnt/c/Users/Shreeram Modi/dropbox/personal/Formulas'
export FFF_FAV4='/mnt/c/Users/Shreeram Modi/Real-Documents'
export FFF_FAV5='/mnt/c/Users/Shreeram Modi/Real-Documents/Websites'
export FFF_FAV8='/mnt/c/Users/Shreeram Modi/Desktop'

# Show/Hide hidden files on open.
# (Off by default)
export FFF_HIDDEN=1

# Trash Directory
# Default: '${XDG_DATA_HOME}/fff/trash'
#          If not using XDG, '${HOME}/.local/share/fff/trash' is used.
export FFF_TRASH='/mnt/c/Users/Shreeram Modi/Dropbox/Personal/Trash'

# Mark format.
# Customize the marked item string.
# Format ('%f' is the current file): "str%fstr"
# Example (Add a ' >' before files): FFF_MARK_FORMAT="> %f"
export FFF_MARK_FORMAT="+%f*"

# Use LS_COLORS to color fff.
# (On by default if available)
# (Ignores FFF_COL1)
export FFF_LS_COLORS=1

# Directory color [0-9]
export FFF_COL1=5

# Status background color [0-9]
export FFF_COL2=1

# Selection color [0-9] (copied/moved files)
export FFF_COL3=1

# Cursor color [0-9]
export FFF_COL4=6

# Status foreground color [0-9]
export FFF_COL5=0

# FFF 'cd' on exit & trigger with 'f'
function f
    fff $argv
    set -q XDG_CACHE_HOME; or set XDG_CACHE_HOME $HOME/.cache
    cd (cat $XDG_CACHE_HOME/fff/.fff_d)
end
