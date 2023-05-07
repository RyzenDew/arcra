# Prepare neccesary configuration files and directory structure for GNOME Iso

sudo rm -rf /home/temp/Downloads/arcra-build-files/GNOME/iso-dir
sudo rm -rf /home/temp/Downloads/arcra-build-files/GNOME/out
sudo rm -rf /home/temp/Downloads/arcra-build-files/GNOME/post

mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/iso
mkdir /home/temp/Downloads/arcra-build-files/GNOME/out
mkdir /home/temp/Downloads/arcra-build-files/GNOME/post
mkdir /home/temp/Downloads/arcra-build-files/GNOME/post/checksums
mkdir /home/temp/Downloads/arcra-build-files/GNOME/post/iso/
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/etc/
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/etc/default

mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/backgrounds
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/applications
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/archiso
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/archiso/configs

mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/archiso/configs/releng
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/archiso/configs/releng/grub
mkdir /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/usr/share/backgrounds/gnome

cp /home/temp/Downloads/arcra-build-files/GNOME/airootfs/etc/default/grub /home/temp/Downloads/arcra-build-files/GNOME/iso-dir/x86_64/airootfs/etc/default/

# Generate GNOME Iso
sudo mkarchiso -v -w iso-dir /home/temp/Downloads/arcra-build-files/GNOME/

sudo chown -R temp:temp /home/temp/Downloads/arcra-build-files/GNOME/out

sudo cp /home/temp/Downloads/arcra-build-files/GNOME/out/* /home/temp/Downloads/arcra-build-files/GNOME/post/iso/

# Create checksums
sha512sum /home/temp/Downloads/arcra-build-files/GNOME/post/iso/* | cut -f 1 -d " " > /home/temp/Downloads/arcra-build-files/GNOME/post/checksums/sha512sums.txt

md5sum /home/temp/Downloads/arcra-build-files/GNOME/post/iso/* | cut -f 1 -d " " > /home/temp/Downloads/arcra-build-files/GNOME/post/checksums/md5sums.txt

sudo chown -R temp:temp /home/temp/Downloads/arcra-build-files/GNOME/post

# Remove previous Iso files from Ventoy and copy over newly created
sudo rm /run/media/temp/Ventoy/*

sudo cp /home/temp/Downloads/arcra-build-files/GNOME/post/iso/* /run/media/temp/Ventoy/

# If Iso creation fails, copy and paste this command in a terminal, execute then run this script again
# It has been commented out to make sure it doesn't break things on its own.
# sudo umount -l proc sys shm pts dev tmp run

