MINGW_PREFIX="/c/msys64/mingw64"
WVR_BIN_PATH="../../wvr/target/release/wvr.exe"
LAUNCHER_BIN_PATH="../../wvr-launcher/target/release/wvr-launcher.exe"

mkdir -p bin/
mkdir -p share/
mkdir -p lib/

cp "icon.ico" ./bin/
cp "$WVR_BIN_PATH" ./bin/
cp "$LAUNCHER_BIN_PATH" ./bin/

cp "$MINGW_PREFIX/bin/libssh2-1.dll" bin/
cp "$MINGW_PREFIX/bin/libgit2.dll" bin/
cp "$MINGW_PREFIX/bin/libatk-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libbrotlicommon.dll" bin/
cp "$MINGW_PREFIX/bin/libbrotlidec.dll" bin/
cp "$MINGW_PREFIX/bin/libbz2-1.dll" bin/
cp "$MINGW_PREFIX/bin/libcairo-2.dll" bin/
cp "$MINGW_PREFIX/bin/libcairo-gobject-2.dll" bin/
cp "$MINGW_PREFIX/bin/libdatrie-1.dll" bin/
cp "$MINGW_PREFIX/bin/libepoxy-0.dll" bin/
cp "$MINGW_PREFIX/bin/libexpat-1.dll" bin/
cp "$MINGW_PREFIX/bin/libffi-7.dll" bin/
cp "$MINGW_PREFIX/bin/libfontconfig-1.dll" bin/
cp "$MINGW_PREFIX/bin/libfreetype-6.dll" bin/
cp "$MINGW_PREFIX/bin/libfribidi-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgcc_s_seh-1.dll" bin/
cp "$MINGW_PREFIX/bin/libgdk_pixbuf-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgdk-3-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgio-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libglib-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgmodule-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgobject-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgraphite2.dll" bin/
cp "$MINGW_PREFIX/bin/libgtk-3-0.dll" bin/
cp "$MINGW_PREFIX/bin/libharfbuzz-0.dll" bin/
cp "$MINGW_PREFIX/bin/libiconv-2.dll" bin/
cp "$MINGW_PREFIX/bin/libintl-8.dll" bin/
cp "$MINGW_PREFIX/bin/libpango-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangocairo-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangoft2-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangowin32-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpcre-1.dll" bin/
cp "$MINGW_PREFIX/bin/libpixman-1-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpng16-16.dll" bin/
cp "$MINGW_PREFIX/bin/libstdc++-6.dll" bin/
cp "$MINGW_PREFIX/bin/libthai-0.dll" bin/
cp "$MINGW_PREFIX/bin/libwinpthread-1.dll" bin/
cp "$MINGW_PREFIX/bin/zlib1.dll" bin/

cp -r "$MINGW_PREFIX/share/icons" share/icons

mkdir -p share/glib-2.0/schemas
cp "$MINGW_PREFIX/share/glib-2.0/schemas/gschemas.compiled" share/glib-2.0/schemas/gschemas.compiled

cp -r "$MINGW_PREFIX/lib/gdk-pixbuf-2.0" lib/
