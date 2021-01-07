#! /usr/bin/bash

while true
do

echo "Tugas Final Project Sistem Operasi"
echo " "
echo "1. Buat Folder Baru"
echo "2. Hapus Folder"
echo "2. Manipulasi Hak Akses File"
echo "3. Buka Firefox"
echo "4. Menghitung luas persegi"
echo "5. Menghitung keliling persegi"
echo "6. Menghitung luas persegi panjang"
echo "7. Menghitung keliling persegi panjang"
echo "8. Menampilkan angka ganjil dengan inputan user sebagai acuan"
echo "9. Exit Program"
read pilih
clear

if [ $pilih == 1 ]
then
   echo "Masukkan Nama Foldernya"
   read nama_folder
   mkdir $nama_folder

   echo "Folder $nama_folder Telah Dibuat"
   echo "Cek Folder?(y/t)"
   read cek_letak
   if [ $cek_letak == y ]
   then
      ls
   fi

   if [ $cek_letak == t ]
   then
      echo "Pembuatan Folder Telah Selesai"
   fi

fi

if [ $pilih == 2 ]
then
   echo "Masukkan Nama Folder Yang ingin anda hapus"
   read hapus
   rmdir $hapus

   echo "Folder $hapus telah dihapus"
   echo "Apakah anda ingin mengecheck?(y/t)"
   read cek
   if [ $cek == y ]
   then
      ls -l
   fi

   if [ $cek == t ]
   then
      echo "Folder telah dihapus"
   fi
fi

if [ $pilih == 3 ]
then
   ls -l
   echo "File Mana Yang Ingin Diubah Hak Aksesnya?"
   read ubah_akses

   echo "Yakin Anda Ingin Mengubah Hak Akses $ubah_akses (y/t)"
   read yakin
   if [ $yakin == y ]
   then
      echo "1. Ubah Akses Jadi Read Only Untuk Semua User"
      echo "2. ubah akses jadi RW Untuk user Utama dan R untuk user lain"
      echo "3. ubah akses jadi RW untuk semua user"
      read akses
      clear

      if [ $akses == 1 ]
      then
         sudo chmod 444 $ubah_akses
         ls -l
      fi

      if [ $akses == 2 ]
      then
         sudo chmod 664 $ubah_akses
         ls -l
      fi

      if [ $akses == 3 ]
      then
         sudo chmod 666 $ubah_akses
         ls -l
      fi

   fi

   if [ $yakin == t ]
   then
      echo "Anda Tidak Jadi Mengubah Hak Akses $ubah_akses"
   fi

fi

if [ $pilih == 3 ]
then
   echo "Silahkan Tunggu Browser Firefox Muncul"
   firefox
fi

if [ $pilih == 4 ]
then
   echo "masukkan panjang sisi"
   read sisi

   let luas=$sisi*$sisi
   echo "Luas Persegi adalah $luas"
fi

if [ $pilih == 5 ]
then
   echo "masukkan panjang sisi"
   read sisi

   let keliling=$sisi*4
   echo " Keliling persegi adalah $keliling"
fi

if [ $pilih == 6 ]
then
   echo "masukkan panjang"
   read panjang
   echo "masukkan lebar"
   read lebar

   let luas=$panjang*$lebar
   echo "Luas persegi panjang adalah $luas"
fi

if [ $pilih == 7 ]
then
   echo "masukkan panjang"
   read panjang
   echo "masukkan lebar"
   read lebar

   let keliling=$panjang+$panjang+$lebar+$lebar
   echo "Keliling persegi panjang adalah $keliling"
fi

if [ $pilih == 8 ]
then
   echo "masukkan angka"
   read a

   b=1
   while [ $b -le $a ]
   do
   echo $b
   b=$(( $b + 2 ))
   done
fi

if [ $pilih == 9 ]
then
   exit
fi

done
