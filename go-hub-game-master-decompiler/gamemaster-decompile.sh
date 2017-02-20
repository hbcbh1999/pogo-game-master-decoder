#!/bin/bash

pogo_protos_path="./dependencies/POGOProtos-master/src/"
pogo_protos_target="POGOProtos.Networking.Responses.DownloadItemTemplatesResponse"
pogo_protos_template="./dependencies/POGOProtos-master/src/POGOProtos/Networking/Responses/DownloadItemTemplatesResponse.proto"
pogo_gamemaster_dir="./game-master-files/"
pogo_gamemaster_name=$(ls -t "$pogo_gamemaster_dir" | head -n1)
pogo_gamemaster=$pogo_gamemaster_dir$(ls -t "$pogo_gamemaster_dir" | head -n1)

##./dependencies/protoc-3.2.0-osx-x86_64/bin/protoc --proto_path="$pogo_protos_path" --decode="$pogo_protos_target"  "$pogo_protos_template"  < "$pogo_gamemaster" | pbcopy
./dependencies/protoc-3.2.0-osx-x86_64/bin/protoc --proto_path="$pogo_protos_path" --decode="$pogo_protos_target"  "$pogo_protos_template"  < "$pogo_gamemaster" >> "$pogo_gamemaster_name"_output.txt

echo "****************************************************" 
echo "*                                                  *"
echo "*               ;-.         ___,                   *"
echo "*                 \'\_...._/ /''                   *"
echo "*                  \        /      ,               *"
echo "*                  /()   () \    .' '-._           *"
echo "*                 /)  .    ()\  /   _.'            *"
echo "*                 \  -'-     ,; '. <               *"
echo "*                  ;.__     ,;�   > \              *"
echo "*                 / ,    / ,  �.-'.-'              *"
echo "*                (_/    (_/ ,;�.<''                *"
echo "*                  \    ,     ;-''                 *"
echo "*                   >   \    /                     *"
echo "*                  (_,-''> .'                      *"
echo "*                       (_,'                       *"	 
echo "*                                                  *"
echo "*          POGO GAME MASTER DECODER                *"
echo "*                                                  *"
echo "****************************************************"
echo "*                                                  *"
echo "* Using GAME_MASTER: "$pogo_gamemaster_name"  *"
echo "*                                                  *"
echo "****************************************************"
echo "* PoGO Game Master decoding is done. Paste it to a *"
echo "* text editor of your choice. We suggest Sublime.  *"
echo "*                                                  *"
echo "*                                                  *"
echo "* Yours truly,                                     *"
echo "*                                                  *"
echo "* Pokemon GO Hub                                   *"
echo "* https://pokemongohub.net/                        *"
echo "****************************************************"