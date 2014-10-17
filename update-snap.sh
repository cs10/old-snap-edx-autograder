# This script updates snap to the current github version, and adds snap to each edX lab page

# echo "What is the name of the course directory?"
# read dir
rm -rf edx-snap
cd content
git clone https://github.com/jmoenig/Snap--Build-Your-Own-Blocks.git
mv Snap--Build-Your-Own-Blocks edx-snap
cp index.html edx-snap/snap.html
cp lab-add-ons.js edx-snap/lab-add-ons.js
cd edx-snap
echo "" >> snap.js

for f in morphic.js widgets.js locale.js blocks.js threads.js objects.js gui.js paint.js lists.js byob.js xml.js store.js cloud.js ypr.js
do
    cat snap.js "$f" >> tmp.js && mv tmp.js snap.js
    rm "$f"
done
cd ..
cd ..
cp -r content/edx-snap .
rm -rf content/edx-snap

# for f in *.*
# do
#     mv "$f" ../"$dir"/static/
# done
# cd ..
# rm -r edx-snap -f

# for f in `find "$dir"/html/ -name '*.html'`
# do
#     # do some stuff here with "$f"
#     # remember to quote it or spaces may misbehave
#     cat snap-frame-1.html "$f" >> tmp.html && mv tmp.html "$f"
# done

# ONLY NEED THIS IF HAVENT ALREADY ADDED ALONSO
# cp alonso.png "$dir"/static/

# ONLY NEED THIS CODE IF HAVENT ALREADY ADDED SNAP WINDOW TO EDX HTML PAGES FOR LABS
# for f in `find "$dir"/html/ -name '*.html'`
# do
#     # do some stuff here with "$f"
#     # remember to quote it or spaces may misbehave
#     cat "$file" "$f" >> tmp.html && mv tmp.html "$f"
# done