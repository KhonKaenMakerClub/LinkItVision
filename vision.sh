## clear file ##
rm data.json
## capture ##
fswebcam -d /dev/video0 -r 1600x1200 output.jpeg
## convert file ##
cat pre.json > data.json
base64 output.jpeg >> data.json
cat post.json >> data.json
curl -v -k -s -H "Content-Type: application/json" https://vision.googleapis.com/v1/images:annotate?key=###your-keyy### --data-binary @data.json
