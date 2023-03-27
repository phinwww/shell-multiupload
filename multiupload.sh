while getopts f: flag
do
    case "${flag}" in
        f) file=${OPTARG};;
    esac
done

af=$(curl -X POST https://api.anonfiles.com/upload -F "file=@$file" &) 
afurl=$(echo $af | jq -r '.data.file.url.short')
bf=$(curl -X POST https://api.bayfiles.com/upload -F "file=@$file" &) 
bfurl=$(echo $bf | jq -r '.data.file.url.short')
fc=$(curl -X POST https://api.filechan.org/upload -F "file=@$file" &) 
fcurl=$(echo $fc | jq -r '.data.file.url.short')
lu=$(curl -X POST https://api.letsupload.cc/upload -F "file=@$file" &) 
luurl=$(echo $lu | jq -r '.data.file.url.short')
mu=$(curl -X POST https://api.megaupload.nz/upload -F "file=@$file" &) 
muurl=$(echo $mu | jq -r '.data.file.url.short')
mf=$(curl -X POST https://api.myfile.is/upload -F "file=@$file" &) 
mfurl=$(echo $mf | jq -r '.data.file.url.short')
so=$(curl -X POST https://api.share-online.is/upload -F "file=@$file" &) 
sourl=$(echo $so | jq -r '.data.file.url.short')
vs=$(curl -X POST https://api.vshare.is/upload -F "file=@$file" &) 
vsurl=$(echo $vs | jq -r '.data.file.url.short')
hf=$(curl -X POST https://api.hotfile.io/upload -F "file=@$file" &) 
hfurl=$(echo $hf | jq -r '.data.file.url.short')
rs=$(curl -X POST https://api.rapidshare.nu/upload -F "file=@$file" &) 
rsurl=$(echo $rs | jq -r '.data.file.url.short')
uv=$(curl -X POST https://api.upvid.cc/upload -F "file=@$file" &) 
uvurl=$(echo $uv | jq -r '.data.file.url.short')
ol=$(curl -X POST https://api.openload.cc/upload -F "file=@$file" &) 
olurl=$(echo $ol | jq -r '.data.file.url.short')
lb=$(curl -X POST https://api.lolabits.se/upload -F "file=@$file" &) 
lburl=$(echo $lb | jq -r '.data.file.url.short')




echo "uploaded to anonfiles on $afurl" &
echo "uploaded to bayfiles on $bfurl" &
echo "uploaded to filechan on $fcurl" &
echo "uploaded to letsupload on $luurl" &
echo "uploaded to megaupload on $muurl" &
echo "uploaded to myfile on $mfurl" &
echo "uploaded to share-online on $sourl" &
echo "uploaded to hotfile on $hfurl" &
echo "uploaded to rapidshare on $rsurl" &
echo "uploaded to upvid on $uvurl" &
echo "uploaded to openload on $olurl" &
echo "uploaded to lolabits on $lburl" &
