# Environment Parameters
# * please put all the param in here.
ROOT_DIR="$(pwd)"
Source_Code="$ROOT_DIR/source"
Build_Path="$ROOT_DIR/build"
Xcode_Dir="$Build_Path/iOS"

# TODO: create the folder if not exist
Build_Dir_list=("$Xcode_Dir")
for tmp_dir in ${Build_Dir_list[@]}
do
    echo "Check temp directory: $tmp_dir"
    if [ ! -d "$tmp_dir" ] 
    then
        mkdir "$tmp_dir"
    fi
done

# Create Xcode Project
cmake -G "Xcode" \
    -B "$Xcode_Dir" \
    -S "$Source_Code"

echo "
# -------------------------------------------- #
# Generate iOS build system with Xcode done
# -------------------------------------------- #
"
