# Arch (sway) dotfiles

This repo contains the tracked dotfiles and keeps a list of packages and
configuration steps to reproduce my current setup on a Thinkpad x230.

When booting from a live USB copy of Arch Linux with a connection to the
internet, a local copy of this readme can be downloaded with `wget`:

```
# wget https://raw.githubusercontent.com/mknurs/dots/master/README.md
```

## Installation guide

This section covers installing Arch Linux. The instructions somewhat
follow the structure of the ArchWiki [Installation
guide](https://wiki.archlinux.org/title/installation_guide) which should
be the main reference when installing Arch. Instructions and commands in
this guide are in no way hardware of software agnostic. Do not follow
them without adapting the commands to your system and preferences.

This guide assumes a successfull boot to a live usb. It assumes a UEFI
system. Each and every command is numbered and listed, this guide
assumes each was typed executed and doesn't assume any others were.

### Setting up the keyboard layout

Modify the keyboard layout:
```
(1.1) # loadkeys slovene
```

### Connecting to the internet and synchronizing clocks

List available stations:
```
(2.1) # iwctl station list
```
Scan for networks:
```
(2.2) # iwctl station <STATION> scan
```
List available networks:
```
(2.3) # iwctl station <STATION> get-networks
```
Connect to a network:
```
(2.4) # iwctl station <STATION> connect <SSID>
```
Set time zone and update the system clock:
```
(3.1) # timedatectl set-timezone Europe/Ljubljana
(3.2) # timedatectl set-ntp true
```

### Partitioning the disks

List block devices:
```
(4.1) # lsblk
```
Use `fdisk` to partition the drive (usually `/dev/sda`):
```
(4.2) # fdisk /dev/sda
```

Personal usual setup (UEFI with GPT and a separate `/home` partition):

mount point | partition   | partition type    | size
------------|-------------|-------------------|-------------------
`/mnt/boot` | `/dev/sda1` | EFI `1`           | `+300M`
`[SWAP]`    | `/dev/sda2` | Linux swap `19`   | `+16G`
`/mnt`      | `/dev/sda3` | Linux x86-64 `23` | `+30G`
`/mnt/home` | `/dev/sda4` | Linux x86-64 `23` | remainder of disk

### Formatting the partitions and initializing swap

Format the `boot` partition to `fat32`:
```
(5.1) # mkfs.vfat -n boot /dev/sda1
```
Format the `home` and `root` partitions to `ext4`:
```
(5.2) # mkfs.ext4 -L arch /dev/sda3
(5.3) # mkfs.ext4 -L home /dev/sda4
```
Initialize the `swap` partition:
```
(5.4) # mkswap -L swap /dev/sda2
```

### Mounting the file systems and enabling swap

Mount the `root` volume to `/mnt`:
```
(6.1) # mount /dev/disk/by-label/arch /mnt
```
Create remaining mount points (directories):
```
(6.2) # mkdir /mnt/boot /mnt/home
```
Mount the `boot` and `home` volumes:
```
(6.3) # mount /dev/disk/by-label/boot /mnt/boot
(6.4) # mount /dev/disk/by-label/home /mnt/home
```
Enable swap:
```
(6.5) # swapon /dev/disk/by-label/swap
```

### Installing base packages

Install essential packages:
```
(7.1) # pacstrap /mnt base linux linux-firmware base-devel intel-ucode iwd git neovim
```

Note that we've also installed the microcode, networking, git and text editor
packages, which are not "essential" in the general sense.

### Generating fstab

Generate an `fstab` file:
```
(8.1) # genfstab -U /mnt >> /mnt/etc/fstab
```

### Chrooting

Change root into the new system:**
```
(9.1) # arch-chroot /mnt
```

### Configuring time and locales

Set the time zone:
```
(10.1) # ln -sf /usr/share/zoneinfo/Europe/Ljubljana /etc/localtime
```
Sync the hardware clock:
```
(11.1) # hwclock -w
```
Edit `locale.gen`:
```
(12.1) # nvim /etc/locale.gen
```
> ```
> sl_SI.UTF-8 UTF-8
> en_US.UTF-8 UTF-8
> ```
Generate the locales:
```
(12.2) # locale-gen
```
Edit `locale.conf`:
```
(13.1) # nvim /etc/locale.conf
```
> ```
> LANG=sl_SI.UTF-8
> LC_MESSAGES=en_US.UTF-8
> ```
Edit `vconsole.conf`:
```
(14.1) # nvim /etc/vconsole.conf
```
> ```
> KEYMAP=slovene
> FONT=lat2-16
> ```

### Configuring networking

Edit `hostname`:
```
(15.1) # nvim /etc/hostname
```
> ```
> arch
> ```

Edit `hosts`:
```
(16.1) # nvim /etc/hosts
```
> ```
> 127.0.0.1        localhost
> ::1              localhost
> 127.0.1.1        arch
> ```

### Configuring users

Set the root password:
```
(17.1) # passwd
```

Create a regular user and add them to the wheel and video group:
```
(18.1) # useradd -mG wheel,video <USERNAME>
```

Set the regular user password:
```
(18.2) # passwd <USERNAME>
```

Edit `visudo`:
```
(18.3) # EDITOR=nvim visudo
```
> ```
> root ALL=(ALL) ALL
> %wheel ALL=(ALL) ALL
> @includedir /etc/sudoers.d
> ```

### Configuring the boot loader

Set-up `systemd-boot`:
```
(19.1) # bootctl --path=/boot install
```
Edit `loader.conf`:
```
(19.2) # nvim /boot/loader/loader.conf
```
> ```
> default arch.conf
> ```
Edit `arch.conf`:
```
(19.3) # nvim /boot/loader/entries/arch.conf
```
> ```
> title Arch Linux
> linux /vmlinuz-linux
> initrd /intel-ucode.img
> initrd /initramfs-linux.img
> options root=/dev/sda3 rw resume=/dev/sda2
> options nowatchdog mitigations=off
> options quiet loglevel=2 i915.fastboot=1
> options vt.default_red=0x33,0xff,0x61,0xff,0x33,0xd4,0xb3,0xa7,0x77,0xff,0x95,0xff,0x6a,0xe6,0xd1,0xe5
> options vt.default_grn=0x33,0x55,0xff,0xf2,0x5c,0x8c,0xd7,0xa7,0x77,0x8b,0xff,0x8d,0x91,0xb7,0xe8,0xe5
> options vt.default_blu=0x33,0x33,0xb0,0xb1,0xff,0xb7,0xff,0xa7,0x77,0x6a,0xcf,0xd0,0xff,0xd4,0xff,0xe5
> ```
Edit `fall.conf`:
```
(19.4) # nvim /boot/loader/entries/fall.conf
```
> ```
> title Arch Linux (fallback)
> linux /vmlinuz-linux
> initrd /initramfs-linux-fallback.img
> options root=/dev/sda3 rw
> ```

Note that since these files should be set-up and working at install and
before the first boot, they're not tracked anywhere but here, inline.
The main bootloader entry (`arch.conf`) has some kernel options to speed
up the boot time and change the console colors. Note also that the
option `resume=/dev/sda2` is neccessary for hibernation, see also:
*(20.2)*.

### Configuring the kernel

Since this should also only be done once and for all the configuration
file is included here and not as a standalone tracked file in the repo.

Edit `mkinitcpio.conf`:
```
(20.1) # nvim /etc/mkinitcpio.conf
```
> ```
> MODULES=(i915)
> BINARIES=()
> FILES=()
> HOOKS=(base systemd autodetect block fsck filesystems)
> COMPRESSION="lz4"
> ```
Generate the kernel:
```
(20.2) # mkinitcpio -p linux
```
Note the `systemd` hook; it is needed for, among other things,
hibernation and resuming from disk. See also *(19.3)*.

### Configuring auto-hibernate

A udev rule is used for hibernate-on-low-battery trigger. The kernel
hooks and boot options also need to be set up correctly, see *(19.3)*
and *(20.2)*.

Edit `99-lowbat.rules`:
```
(21.1) # nvim /etc/udev/rules.d/99-lowbat.rules
```

### Configuring an AUR helper

This step is optional for general set-ups. The `base-devel` package
group is needed for this, see *(7.1)*.

Clone the `paru` package from the AUR:
```
(22.1) # git clone https://aur.archlinux.org/paru.git
```
Move to the cloned directory:
```
(22.2) # cd paru
```
Make package:
```
(22.3) # makepkg -si
```

### Rebooting

Exit chroot:
```
(23.1) # exit
```
Unmount `/mnt`:
```
(23.2) # umount -R /mnt
```
Reboot:
```
(23.3) # reboot
```

### Booting for the first time

Enable and start `iwd`:
```
$ doas systemctl enable iwd.service
$ doas systemctl start iwd.service
```

## Dotfiles

This section coveres the initialization and maintainence of version
controled [dotfiles](https://wiki.archlinux.org/title/Dotfiles) with
`git`.

### Starting from scratch

This section should theoretically never have to be refered to again.
Taking these steps would be relevant if this repo would yet not exist –
which it does.

```
$ cd
$ git init --bare $HOME/.dots
$ git --git-dir=$HOME/.dots/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

### Migrating on a fresh install

These steps pull the whole repo.

```
$ cd
$ git clone --bare https://github.com/mknurs/dots $HOME/.dots
$ git --git-dir=$HOME/.dots --work-tree=$HOME config --local status.showUntrackedFiles no
$ git --git-dir=$HOME/.dots --work-tree=$HOME checkout
```

Note that `git checkout` might fail because of existing files. Backup
and remove the conflicting files and run that command again.

There is a list of explicitly installed packages in
[.config/pkgs_list](.config/pkgs_list). Go through the list manually.
Automatically installing the whole list is not recommended, but this
would be the command:

```
$ sudo pacman -Syu --needed - < $HOME/.config/pkgs_list
```

A speciall git hook can be set-up to automatically update and commit
changes to the package list. Link
[.local/bin/dots_update_package_list.sh](.local/bin/dots_update_package_list.sh) to the `pre-push`
hook to run it at pushes.

```
ln $HOME/.local/bin/dots_update_package_list.sh $HOME/.dots/hooks/pre-push
```

With the dotfiles, the aliases and variables in [.bashrc](.bashrc) and
[.bash_profile](.bash_profile), with installing all the packages from
[.config/pkgs_list](.config/pkgs_list) and updating the files listed in
[.config/file_list](.config/file_list) the system should be identical to
the one where the last push to this repo was made.

### Sparse checkout

A basic or essential list of dotfiles is kept in
[.config/sparse_list](.config/sparse_list). These are to be used on
remote servers or computers that we access only through the console. The
following commands will download (with `wget`) a script (also stored in
this repo, see:
[.local/bin/dots_setup_sparse_checkout.sh](.local/bin/dots_setup_sparse_checkout.sh)),
run it to set up a sparse checkout.

```
$ wget https://raw.githubusercontent.com/mknurs/dots/master/bin/dots_setup_sparse_checkout.sh
$ chmod +x dots_setup_sparse_checkout.sh
$ ./dots_setup_sparse_checkout
```

## Packages

### Base and base-devel

```
base
linux
linux-firmware
intel-ucode
```

### Base-devel

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

### Networking

```
iwd
wget
openssh
```

### Utilities

```
neovim
tmux
htop
paru
man-db
jq
fzy
```

### Archiving

```
zip
unzip
```

### Mounting and file systems

```
udevil
sshfs
curlftpfs
ntfs-3g
```

### Desktop environment

```
sway
alacritty
```

### Desktop utilities

```
wl-clipboard
light
```

### Audio

```
pipewire
pipewire-alsa
pipewire-pulse
pamixer
```

### Web

```
firefox
thunderbird
```

### Media

```
inkscape
pqiv
```

### Web development

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

Setting up a webdev environment is documented in a private repo:
[wwws](https://github.com/mknurs/wwws).

### Writing and editing

```
pandoc
texlive-core
libreoffice-fresh-sl
```

### Printing and scanning

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

### Fonts

```
ttf-dejavu
noto-fonts
noto-fonts-cjk
noto-fonts-emoji
noto-fonts-extra
```

## Scripts
