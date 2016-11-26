MSG=r
TERM=el15ie
HOME=/
SHELL=/bin/sh
USER=root
PATH=/bin:/etc:.
export MSG TERM HOME SHELL USER PATH
stty 9600 dec crt cel15i
echo '---------------'
echo 'Начинается загрузка базовых файлов системы.'
echo '---------------'
echo 'Установите в любой дисковод 1-й флопи-диск.'
echo -n 'Наберите номер выбранного дисковода (0/1) и нажмите ВК: '
read i
echo '+' tar x/fviB /dev/fd$i 800
tar x/fviB /dev/fd$i 800
echo '---------------'
echo '+' "cd bin ; chmod u-t * ; cd .."
cd bin ; chmod u-t * ; cd ..
echo '+' "cd etc ; chmod u-t * ; cd .."
cd etc ; chmod u-t * ; cd ..
echo '+' "cd lib ; chmod u-t * */* ; cd .."
cd lib ; chmod u-t * */* ; cd ..
echo '+' "cd bin ; chmod 6555 chgrp chmod chown mkdir ; cd .."
cd bin ; chmod 6555 chgrp chmod chown mkdir ; cd ..
echo '+' "cd etc ; chmod 6555 fsck mkfs mount umount ; cd .."
cd etc ; chmod 6555 fsck mkfs mount umount ; cd ..
echo '+' "cp etc/passwd.std etc/passwd"
cp etc/passwd.std etc/passwd
echo '+' "rm /confa"
rm /confa
echo '+' "mv /confnosu /confa"
mv /confnosu /confa
echo " Обновление каталогов всех библиотек. Ждите... "
echo '+' "/usr/bin/ranlib /usr/lib/*.a"
/usr/bin/ranlib /usr/lib/*.a
echo " Обновление каталогов всех библиотек. Ждите... "
echo '+' "/usr/bin/ranlib /usr/f77lib/*.a"
/usr/bin/ranlib /usr/f77lib/*.a
echo '+' "После перевызова системы в нее можно будет войти под именем :
user ( или root - для выполнения административных функций в системе"
echo '+' "/etc/reboot -q"
/etc/reboot -q

