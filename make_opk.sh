#!/bin/sh

OPK_NAME="GhoulsAndGhostsRemix-0.56-2.opk"

echo ${OPK_NAME}

# create default.gcw0.desktop
cat > default.gcw0.desktop <<EOF
[Desktop Entry]
Name=Ghouls 'n Ghosts Remix 0.56
Comment=Ghouls 'n Ghosts Remix 0.56
Exec=gng
Terminal=false
Type=Game
StartupNotify=true
Icon=icon
Categories=games;
EOF

# create opk
FLIST="data"
FLIST="${FLIST} default.gcw0.desktop"
FLIST="${FLIST} data/icon.png"
FLIST="${FLIST} gng"

rm -f ${OPK_NAME}
mksquashfs ${FLIST} ${OPK_NAME} -all-root -no-xattrs -noappend -no-exports

cat default.gcw0.desktop
rm -f default.gcw0.desktop
