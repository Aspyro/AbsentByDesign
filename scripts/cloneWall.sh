#!/bin/bash

echo "Useage: ./_.sh <dest> <texture>"
# for example, to make stairs_andesite block, use _.sh andesite stone_andesite

# I just happened to make granite first
dest=$1
texture=$2
newblock="wall_${dest}"
original="stone"
seed="wall_${original}"
modid="absentbydesign"
folder="src/main/resources/assets/${modid}"

folderdata="src/main/resources/data/${modid}"

# create the files


cp "${folderdata}"/loot_tables/blocks/${seed}.json "${folderdata}"/loot_tables/blocks/"${newblock}".json
cp "${folderdata}"/recipes/${seed}.json "${folderdata}"/recipes/"${newblock}".json
sed -i -e "s/${seed}/${newblock}/g" "${folderdata}"/recipes/"${newblock}".json
sed -i -e "s/${seed}/${newblock}/g" "${folderdata}"/loot_tables/blocks/"${newblock}".json

cp "${folder}"/blockstates/"${seed}".json "${folder}"/blockstates/"${newblock}".json

cp "${folder}"/models/block/"${seed}"_inventory.json "${folder}"/models/block/"${newblock}"_inventory.json
cp "${folder}"/models/block/"${seed}"_post.json "${folder}"/models/block/"${newblock}"_post.json
cp "${folder}"/models/block/"${seed}"_side.json "${folder}"/models/block/"${newblock}"_side.json


cp "${folder}"/models/item/"${seed}".json "${folder}"/models/item/"${newblock}".json


# replace blockids
sed -i -e "s/${original}/${texture}/g" "${folderdata}"/recipes/"${newblock}".json

sed -i -e "s/${seed}/${newblock}/g" "${folder}"/models/item/"${newblock}".json

sed -i -e "s/${original}/${texture}/g" "${folder}"/models/block/"${newblock}"_inventory.json
sed -i -e "s/${original}/${texture}/g" "${folder}"/models/block/"${newblock}"_post.json
sed -i -e "s/${original}/${texture}/g" "${folder}"/models/block/"${newblock}"_side.json

sed -i -e "s/${original}/${dest}/g" "${folder}"/blockstates/"${newblock}".json
    
echo "\"block.absentbydesign.${newblock}\":\"lang\" "

echo "Files written"