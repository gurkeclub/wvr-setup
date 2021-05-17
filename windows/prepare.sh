MINGW_PREFIX="/c/msys64/mingw64"
WVR_BIN_PATH="../../wvr/target/release/wvr.exe"
LAUNCHER_BIN_PATH="../../wvr-launcher/target/release/wvr-launcher.exe"

mkdir -p bin/
mkdir -p share/
mkdir -p lib/
mkdir -p libexec/

cp "icon.ico" ./bin/
cp "$WVR_BIN_PATH" ./bin/
cp "$LAUNCHER_BIN_PATH" ./bin/


cp "$MINGW_PREFIX/bin/libatk-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libbrotlicommon.dll" bin/
cp "$MINGW_PREFIX/bin/libbrotlidec.dll" bin/
cp "$MINGW_PREFIX/bin/libbz2-1.dll" bin/
cp "$MINGW_PREFIX/bin/libcairo-2.dll" bin/
cp "$MINGW_PREFIX/bin/libcairo-gobject-2.dll" bin/
cp "$MINGW_PREFIX/bin/libcrypto-1_1-x64.dll" bin/
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
cp "$MINGW_PREFIX/bin/libgit2.dll" bin/
cp "$MINGW_PREFIX/bin/libglib-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgmodule-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgobject-2.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgraphite2.dll" bin/
cp "$MINGW_PREFIX/bin/libgstapp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstbase-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstreamer-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstvideo-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgtk-3-0.dll" bin/
cp "$MINGW_PREFIX/bin/libharfbuzz-0.dll" bin/
cp "$MINGW_PREFIX/bin/libiconv-2.dll" bin/
cp "$MINGW_PREFIX/bin/libintl-8.dll" bin/
cp "$MINGW_PREFIX/bin/liblzma-5.dll" bin/
cp "$MINGW_PREFIX/bin/liborc-0.4-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpango-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangocairo-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangoft2-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpangowin32-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpcre-1.dll" bin/
cp "$MINGW_PREFIX/bin/libpixman-1-0.dll" bin/
cp "$MINGW_PREFIX/bin/libpng16-16.dll" bin/
cp "$MINGW_PREFIX/bin/librsvg-2-2.dll" bin/
cp "$MINGW_PREFIX/bin/libssh2-1.dll" bin/
cp "$MINGW_PREFIX/bin/libssl-1_1-x64.dll" bin/
cp "$MINGW_PREFIX/bin/libstdc++-6.dll" bin/
cp "$MINGW_PREFIX/bin/libthai-0.dll" bin/
cp "$MINGW_PREFIX/bin/libwinpthread-1.dll" bin/
cp "$MINGW_PREFIX/bin/zlib1.dll" bin/

# Dll's required by gstreamer plugins
cp "$MINGW_PREFIX/bin/avcodec-58.dll" bin/
cp "$MINGW_PREFIX/bin/avfilter-7.dll" bin/
cp "$MINGW_PREFIX/bin/avformat-58.dll" bin/
cp "$MINGW_PREFIX/bin/avutil-56.dll" bin/
cp "$MINGW_PREFIX/bin/libaom.dll" bin/
cp "$MINGW_PREFIX/bin/libass-9.dll" bin/
cp "$MINGW_PREFIX/bin/libbluray-2.dll" bin/
cp "$MINGW_PREFIX/bin/libcelt0-2.dll" bin/
cp "$MINGW_PREFIX/bin/libdav1d.dll" bin/
cp "$MINGW_PREFIX/bin/libgmp-10.dll" bin/
cp "$MINGW_PREFIX/bin/libgnutls-30.dll" bin/
cp "$MINGW_PREFIX/bin/libgomp-1.dll" bin/
cp "$MINGW_PREFIX/bin/libgsm.dll" bin/
cp "$MINGW_PREFIX/bin/libgstaudio-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstcodecparsers-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstpbutils-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstriff-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstrtp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgsttag-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libhogweed-6.dll" bin/
cp "$MINGW_PREFIX/bin/libidn2-0.dll" bin/
cp "$MINGW_PREFIX/bin/libmfx-1.dll" bin/
cp "$MINGW_PREFIX/bin/libmodplug-1.dll" bin/
cp "$MINGW_PREFIX/bin/libmp3lame-0.dll" bin/
cp "$MINGW_PREFIX/bin/libnettle-8.dll" bin/
cp "$MINGW_PREFIX/bin/libogg-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopencore-amrnb-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopencore-amrwb-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopenjp2-7.dll" bin/
cp "$MINGW_PREFIX/bin/libopus-0.dll" bin/
cp "$MINGW_PREFIX/bin/libp11-kit-0.dll" bin/
cp "$MINGW_PREFIX/bin/librtmp-1.dll" bin/
cp "$MINGW_PREFIX/bin/libsoxr.dll" bin/
cp "$MINGW_PREFIX/bin/libspeex-1.dll" bin/
cp "$MINGW_PREFIX/bin/libsrt.dll" bin/
cp "$MINGW_PREFIX/bin/libssp-0.dll" bin/
cp "$MINGW_PREFIX/bin/libtasn1-6.dll" bin/
cp "$MINGW_PREFIX/bin/libtheoradec-1.dll" bin/
cp "$MINGW_PREFIX/bin/libtheoraenc-1.dll" bin/
cp "$MINGW_PREFIX/bin/libunistring-2.dll" bin/
cp "$MINGW_PREFIX/bin/libvorbis-0.dll" bin/
cp "$MINGW_PREFIX/bin/libvorbisenc-2.dll" bin/
cp "$MINGW_PREFIX/bin/libvpx-1.dll" bin/
cp "$MINGW_PREFIX/bin/libvulkan-1.dll" bin/
cp "$MINGW_PREFIX/bin/libwavpack-1.dll" bin/
cp "$MINGW_PREFIX/bin/libwebp-7.dll" bin/
cp "$MINGW_PREFIX/bin/libwebpmux-3.dll" bin/
cp "$MINGW_PREFIX/bin/libx264-159.dll" bin/
cp "$MINGW_PREFIX/bin/libx265.dll" bin/
cp "$MINGW_PREFIX/bin/libxml2-2.dll" bin/
cp "$MINGW_PREFIX/bin/postproc-55.dll" bin/
cp "$MINGW_PREFIX/bin/swresample-3.dll" bin/
cp "$MINGW_PREFIX/bin/swscale-5.dll" bin/
cp "$MINGW_PREFIX/bin/xvidcore.dll" bin/



cp -r "$MINGW_PREFIX/lib/gdk-pixbuf-2.0" lib/
cp -r "$MINGW_PREFIX/lib/gstreamer-1.0" lib/

cp -r "$MINGW_PREFIX/libexec/gstreamer-1.0" libexec/


cp -r "$MINGW_PREFIX/share/icons" share/
cp -r "$MINGW_PREFIX/share/gstreamer-1.0" share/
cp -r "$MINGW_PREFIX/share/gst-plugins-base" share/
mkdir -p share/glib-2.0/schemas
cp "$MINGW_PREFIX/share/glib-2.0/schemas/gschemas.compiled" share/glib-2.0/schemas/
