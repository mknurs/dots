# Arch (sway) dotfiles

This repo contains the tracked dotfiles and keeps a list of packages and
configuration steps to reproduce my current setup on a Thinkpad x230.

The first part of this readme – numbered commands, from **(1)** to
**(19.1)** – somewhat follows the structure of the ArchWiki
(Installation
guide)[https://wiki.archlinux.org/title/installation_guide]. The second
part, or the rest, documents the post-installation steps that we've
taken and want to retake.

Booting from a live USB copy of Arch Linux with a connection to the
internet, a local copy of this readme can be downloaded with `wget`:
```
# wget https://raw.githubusercontent.com/mknurs/dots/master/README.md
```

Instructions and commands are in no way hardware or distribution
agnostic. Do not copy without adapting the commands to your system and
preferences.

## Pre-installation

### Set the keyboard layout.

**(1) modify the keyboard layout:**
```
# loadkeys slovene
```

### Connect to the internet

**(2) scan for networks:**
```
# iwctl station wlan0 scan
```

**(2.1) list all available networks:**
```
# iwctl station wlan0 get-networks
```

**(2.2) connect to a network:**
```
# iwctl station wlan0 connect <SSID>
```

### Set time zone and update the system clock

**(3) set timezone:**
```
# timedatectl set-timezone Europe/Ljubljana
```

**(3.1) synchronize clock with NTP:**
```
# timedatectl set-ntp true
```

### Partition the disks

**(4) list block devices:**
```
# lsblk
```

**(4.1) partition the drive (usually `/dev/sda`) with `fdisk`:**
```
# fdisk /dev/sda
```

- [Partitioning#Example layouts](https://wiki.archlinux.org/title/Partitioning#Example_layouts)
- [Fdisk#Create_a_partition_table_and_partitions](https://wiki.archlinux.org/title/Fdisk#Create_a_partition_table_and_partitions)

Personal (usual) setup (UEFI with GPT and a separate `/home` partition):

mount point | partition   | partition type    | size
------------|-------------|-------------------|-------------------
`/mnt/boot` | `/dev/sda1` | EFI `1`           | `+300M`
`[SWAP]`    | `/dev/sda2` | Linux swap `19`   | `+16G`
`/mnt`      | `/dev/sda3` | Linux x86-64 `23` | `+30G`
`/mnt/home` | `/dev/sda4` | Linux x86-64 `23` | remainder of disk

### Format the partitions

**(5) format the `boot` partition to `fat32`:**
```
# mkfs.vfat -n boot /dev/sda1
```

**(5.1) initialize the `swap` partition:**
```
# mkswap -L swap /dev/sda2
```

**(5.2) format the `home` and `root` partitions to `ext4`:**
```
# mkfs.ext4 -L arch /dev/sda3
# mkfs.ext4 -L home /dev/sda4
```

### Mount the file systems

**(6) mount the `root` volume to `/mnt`:**
```
# mount /dev/disk/by-label/arch /mnt
```

**(6.1) create remaining mount points:**
```
# mkdir /mnt/boot /mnt/home
```

**(6.2) mount the `boot` and `home` volumes:**
```
# mount /dev/disk/by-label/boot /mnt/boot
# mount /dev/disk/by-label/home /mnt/home
```

**(6.3) enable swap:**
```
# swapon /dev/disk/by-label/swap
```

## Installation

**(7) install essential packages:**
```
# pacstrap /mnt base linux linux-firmware
```

## Configure the system

### Fstab

**(8) generate an `fstab` file:**
```
# genfstab -U /mnt >> /mnt/etc/fstab
```

### Chroot

**(9) change root into the new system:**
```
# arch-chroot /mnt
```

### Time zone

**(9) set the time zone:**
```
# ln -sf /usr/share/zoneinfo/Europe/Ljubljana /etc/localtime
```

**(9.1) run hwclock to generate `/etc/adjtime`:**
```
# hwclock -w
```

### Localization

**(11) edit `/etc/locale.gen` and uncomment needed locales:**
```
# sed -i 's/^#en_US.UTF-8/en_US.UTF-8/g' /etc/locale.gen
# sed -i 's/^#sl_SI.UTF-8/sl_SI.UTF-8/g' /etc/locale.gen
```

**(11.1) generate the locales:**
```
# locale-gen
```

**(11.2) create the `locale.conf` file and set the variables
accordingly:**
```
# echo "LANG=sl_SI-UTF-8 >> /etc/locale.conf
# echo "LC_MESSAGES=en_US-UTF-8 >> /etc/locale.conf
```

**(11.3) create the `vconsole.conf` file to make the
keyboard layout changes persistent:**
```
# echo "KEYMAP=slovene" >> /etc/vconsole.conf
```

### Network configuration

**(12) create the `hostname` file:**
```
# echo "x230" >> /etc/hostname
```

**(12.1) add entries to `hosts`:**
```
# echo -e "127.0.0.1\tlocalhost >> /etc/hosts
# echo -e "::1\tlocalhost >> /etc/hosts
```

### Root password

**(13) set the root password:**
```
# passwd
```

### Regular user

**(14) create a regular user and add them to the wheel
group:**
```
# useradd -mG wheel <USERNAME>
```

**(14.1) set the regular user password:**
```
# passwd <USERNAME>
```

### Microcode

**(15) install the microcode package.**
```
# pacman -S intel-ucode
```

### Editor

**(16) install a text editor.**
```
# pacman -S vim
```

### Boot loader

**(17) install boot loader packages:**
```
# pacman -S efibootmgr
```

**(17.1) install `systemd-boot`:**
```
# bootctl --path=/boot install
```

**(17.2) set-up `loader.conf`:**

Example of `/boot/loader/loader.conf`:
```
timeout 3
console-mode auto
```

**(17.3) set-up `<ENTRY>.conf`:**

Example of `/boot/loader/entries/<ENTRY>.conf`:
```
title	Arch Linux
linux /vmlinuz-linux
initrd /intel-ucode.img
initrd /initramfs-linux.img
options root=UUID=<UUID> rw resume=UUID=<UUID>
```

### Networking software

**(18) install the necessary networking packages:**
```
# pacman -S iwd dhcpcd
```

### Reboot

**(19) exit chroot:**
```
# exit
```

**(19.1) unmount /mnt:**
```
# umount -R /mnt
```

**(19.2) reboot:**
```
# reboot
```

## Post-installation configuration

At this point the base Arch install is done. The rest of this document
contains some post-installation guides and documents the necessary
configuration steps to reproduce my work environment and workflow
configuration.

### Base-devel

**install the base-devel group packages:**
```
# pacman -S --needed base-devel
```

### Sudo and doas

**edit sudo privileges:**
```
# visudo
```

Uncomment `%wheel ALL=(ALL) ALL` to allow members of the
wheel group to execute any command.

**install opendoas package:**
```
# pacman -S opendoas
```

**configure `doas.conf`:**
```
# echo "permit :wheel" >> /etc/doas.conf
```

### Networking

**enable and start iwd:**
```
$ doas systemctl enable iwd.service
$ doas systemctl start iwd.service
```

**enable and start dhcpcd:**
```
$ doas systemctl enable dhcpcd.service
$ doas systemctl start dhcpcd.service
```

**connect to wifi using `iwctl`:**
```
$ iwctl station wlan0 connect <SSID>
```

### Dotfiles version control

- [The best way to store your dotfiles](https://www.atlassian.com/git/tutorials/dotfiles)
- [How do I clone only a subdirectory of a Git repository?](https://stackoverflow.com/a/13738951)

**install `git`:**
```
$ doas pacman -S git
```

**clone the dotfiles repo into a bare repository:**
```
$ git clone --bare https://github.com/mknurs/dots $HOME/.cfg
```

**add repository directory to `.gitignore`:**
```
$ echo ".cfg" >> $HOME/.gitignore
```

**define the alias in the current shell scope:**
```
$ alias cfg='git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

**checkout the content from the bare repository:**
```
$ cfg checkout
```

Note that this might fail because of existing files. Backup and remove
the conflicting files and run the command again.

**set the `showUntrackedFiles` flag to `no`:**
```
$ cfg config --local status.showUntrackedFiles no
```


### Pacman

**edit `pacman.conf`:**

Example (partial) of `/etc/pacman.conf`:
```
# Misc options
#UseSyslog
Color
#NoProgressBar
CheckSpace
VerbosePkgLists
ParallelDownloads = 5
```

### AUR helper
 
**clone the `paru` aur helper.**
```
$ git clone https://aur.archlinux.org/paru.git
```

**move to the cloned directory.**
```
$ cd paru
```

**make package:**
```
$ makepkg -si
```

### Laptop configuration

#### Charge thresholds

**install `acpi_call`:**
```
$ doas pacman -S acpi_call
```

**install `tlp`:**
```
$ doas pacman -S tlp
```

**edit `tlp.conf`:**

Example (partial) of `/etc/tlp.conf`:
```
START_CHARGE_THRESH_BAT0=67
STOP_CHARGE_THRESH_BAT0=100
```

**enable and start `tlp.service`:**
```
$ doas systemctl enable tlp.service
$ doas systemctl start tlp.service
```

#### Fan control

**install `thinkfan`:**
```
$ paru -S thinkfan
```

**edit `thinkfan.conf`:** 

Example of `/etc/thinkfan.conf`:
```
sensors:
  - hwmon: /sys/devices/virtual/thermal/thermal_zone0/temp
fans:
  - tpacpi: /proc/acpi/ibm/fan
levels:
  - [0, 0, 60]
  - [1, 53, 65]
  - [2, 55, 66]
  - [3, 57, 68]
  - [4, 61, 70]
  - [5, 64, 71]
  - [7, 68, 32767]
  - ["level full-speed", 68, 32767]
```

#### Hibernation

**edit boot entry:**

*See (17.3) and `resume=UUID=<UUID>`.*

**edit `mkinitcpio.conf`:**

Example (partial) of `/etc/mkinitcpio.conf`:
```
HOOKS=(base udev resume autodetect modconf block filesystems keyboard fsck)
```

**remake the initial ramdisk environment:**
```
$ doas mkinitcpio -p linux
```

#### Auto-hibernate

This repo includes a script and a systemd timer for checking
battery levels and auto-hibernating.

- [systemd user services directory](.config/systemd/user)
- [mlow_bat script](.local/bin/mlow_bat)
this is now better

**enable and start `low_bat.timer`:**
```
$ systemctl --user enable low_bat.timer
$ systemctl --user start low_bat.timer
```

### Kernel

**add the `i915` module to kernel:**

Example (partial) of `/etc/mkinitcpio.conf`:
```
MODULES=(i915)
```

**enable `lz4` kernel compression:**

Example (partial) of `/etc/mkinitcpio.conf`:
```
COMPRESSION=lz4
```

**remake the initial ramdisk environment:**
```
$ doas mkinitcpio -p linux
```

A copy of `mkinitcpio.conf` is manually tracked
(here)[.config/etcs/mkinitcpio.conf], in this repo.

### Packages

#### Base and base-devel

```
base
linux
linux-firmware
efibootmgr
intel-ucode
```

#### Base-devel

```
autoconf
automake
binutils
bison
fakeroot
file
findutils
flex
gawk
gcc
gettext
grep
groff
gzip
libtool
m4
make
pacman
patch
pkgconf
sed
sudo
texinfo
which
```

#### Laptop

```
acpi_call
tlp

thinkfan (aur)
```

#### Terminal

```
alacritty
```

#### Editor

```
vim
```

#### File manager

```
nnn
```

#### Terminal utilities

```
fzy
jq
```

#### Archive

```
zip
unzip
```

#### Mounting and file systems

```
udevil
sshfs
curlftpfs
ntfs-3g
```

#### Sway

```
sway
```

#### Wayland utilities

```
wl-clipboard
```

#### Audio

```
pipewire
pipewire-alsa
pipewire-pulse
pamixer
```

#### Web

```
firefox
thunderbird
```

#### Media

```
imv
inkscape
```

#### Web development

```
nginx-mainline
php7
php7-fpm
php7-gd
php7-intl
nodejs
npm
deno
```

Setting up a webdev environment is documented in a private repo
((wwws)[https://github.com/mknurs/wwws]).

#### Firewall

```
ufw
```

#### Writing and editing

```
pandoc
texlive-core
```

#### Printing and scanning

```
cups
gutenprint
foomatic-db-gutenprint-ppds
foomatic-db-nonfree-ppds
foomatic-db-ppds
sane-airscan
ghostscript

cups-xerox-b2xx (aur)
```
