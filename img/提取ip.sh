wget -O ./iplist.txt --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36 Edg/87.0.664.57" https://site.ip138.com/dst.metrics.klei.com
#下载网页

ip=`grep -Pzo "$(date +%Y-%m-%d)</span>\n<a href=\"/((2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2})(\.((2(5[0-5]|[0-4]\d))|[0-1]?\d{1,2})){3}/" ./iplist.txt | grep -ao "\([0-9]\{1,3\}\)\(\.\([0-9]\{1,3\}\)\)\{1,3\}"`
#提取ip

echo "$ip"

