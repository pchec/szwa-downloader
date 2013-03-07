"c:\Program Files\GnuWin32\bin\wget.exe" -nc http://szukajwarchiwach.pl/%1%/str/1/1/500
"c:\Program Files\GnuWin32\bin\grep.exe" -i --only-matching /%1%/skan/thb/...................... 500 > szwa_image_list.txt
@del 500
"c:\Program Files\GnuWin32\bin\sed.exe" "s/thb/save/g" szwa_image_list.txt > szwa_image_list.tmp
"c:\Program Files\GnuWin32\bin\sed.exe" "s/^/http:\/\/www.szukajwarchiwach.pl/g" szwa_image_list.tmp > szwa_image_list.txt
@del szwa_image_list.tmp
