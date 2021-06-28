MINGW_PREFIX="/c/msys64/mingw64"
WVR_BIN_PATH="../../wvr/target/release/wvr.exe"
LAUNCHER_BIN_PATH="../../wvr-launcher/target/release/wvr-launcher.exe"
WVR_STD_LIBS_PATH="../../wvr-glsl-lib-std"
WVR_FILTERS_PATH="../../wvr-filters"
WVR_EXAMPLES_PATH="../../wvr-examples"

rm -r bin/
rm -r share/
rm -r lib/
rm -r libexec/
rm -r data/

mkdir -p bin/
mkdir -p share/
mkdir -p lib/
mkdir -p libexec/
mkdir -p data/

cp "icon.ico" ./bin/
cp "$WVR_BIN_PATH" ./bin/
cp "$LAUNCHER_BIN_PATH" ./bin/

strip bin/wvr.exe
# upx --best --lzma --force bin/wvr.exe

strip bin/wvr-launcher.exe
# upx --best --lzma --force bin/wvr-launcher.exe


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
cp "$MINGW_PREFIX/bin/libgdk-3-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgdk_pixbuf-2.0-0.dll" bin/
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
cp "$MINGW_PREFIX/bin/liba52-0.dll" bin/
cp "$MINGW_PREFIX/bin/libaom.dll" bin/
cp "$MINGW_PREFIX/bin/libass-9.dll" bin/
cp "$MINGW_PREFIX/bin/libbluray-2.dll" bin/
cp "$MINGW_PREFIX/bin/libcaca-0.dll" bin/
cp "$MINGW_PREFIX/bin/libcdio-19.dll" bin/
cp "$MINGW_PREFIX/bin/libcelt0-2.dll" bin/
cp "$MINGW_PREFIX/bin/libchromaprint.dll" bin/
cp "$MINGW_PREFIX/bin/libcurl-4.dll" bin/
cp "$MINGW_PREFIX/bin/libdav1d.dll" bin/
cp "$MINGW_PREFIX/bin/libdca-0.dll" bin/
cp "$MINGW_PREFIX/bin/libdeflate.dll" bin/
cp "$MINGW_PREFIX/bin/libdvdcss-2.dll" bin/
cp "$MINGW_PREFIX/bin/libdvdnav-4.dll" bin/
cp "$MINGW_PREFIX/bin/libdvdread-8.dll" bin/
cp "$MINGW_PREFIX/bin/libfaac-0.dll" bin/
cp "$MINGW_PREFIX/bin/libfaad-2.dll" bin/
cp "$MINGW_PREFIX/bin/libfdk-aac-2.dll" bin/
cp "$MINGW_PREFIX/bin/libFLAC-8.dll" bin/
cp "$MINGW_PREFIX/bin/libfluidsynth-2.dll" bin/
cp "$MINGW_PREFIX/bin/libgfortran-5.dll" bin/
cp "$MINGW_PREFIX/bin/libgme.dll" bin/
cp "$MINGW_PREFIX/bin/libgmp-10.dll" bin/
cp "$MINGW_PREFIX/bin/libgnutls-30.dll" bin/
cp "$MINGW_PREFIX/bin/libgomp-1.dll" bin/
cp "$MINGW_PREFIX/bin/libgraphene-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgsm.dll" bin/
cp "$MINGW_PREFIX/bin/libgstadaptivedemux-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstaudio-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstbadaudio-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstbasecamerabinsrc-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstcodecparsers-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstcodecs-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstcontroller-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstfft-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstgl-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstisoff-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstmpegts-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstnet-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstopencv-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstpbutils-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstphotography-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstriff-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstrtp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstrtsp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstrtspserver-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstsctp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstsdp-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgsttag-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgsturidownloader-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstvulkan-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libgstwebrtc-1.0-0.dll" bin/
cp "$MINGW_PREFIX/bin/libHalf-2_5.dll" bin/
cp "$MINGW_PREFIX/bin/libhogweed-6.dll" bin/
cp "$MINGW_PREFIX/bin/libidn2-0.dll" bin/
cp "$MINGW_PREFIX/bin/libIex-2_5.dll" bin/
cp "$MINGW_PREFIX/bin/libIlmImf-2_5.dll" bin/
cp "$MINGW_PREFIX/bin/libIlmThread-2_5.dll" bin/
cp "$MINGW_PREFIX/bin/libImath-2_5.dll" bin/
cp "$MINGW_PREFIX/bin/libjpeg-8.dll" bin/
cp "$MINGW_PREFIX/bin/liblcms2-2.dll" bin/
cp "$MINGW_PREFIX/bin/libmfx-1.dll" bin/
cp "$MINGW_PREFIX/bin/libmicrodns.dll" bin/
cp "$MINGW_PREFIX/bin/libmodplug-1.dll" bin/
cp "$MINGW_PREFIX/bin/libmp3lame-0.dll" bin/
cp "$MINGW_PREFIX/bin/libmpcdec-6.dll" bin/
cp "$MINGW_PREFIX/bin/libmpeg2-0.dll" bin/
cp "$MINGW_PREFIX/bin/libmpg123-0.dll" bin/
cp "$MINGW_PREFIX/bin/libnettle-8.dll" bin/
cp "$MINGW_PREFIX/bin/libnghttp2-14.dll" bin/
cp "$MINGW_PREFIX/bin/libnice-10.dll" bin/
cp "$MINGW_PREFIX/bin/libogg-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopenal-1.dll" bin/
cp "$MINGW_PREFIX/bin/libopenblas.dll" bin/
cp "$MINGW_PREFIX/bin/libopencore-amrnb-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopencore-amrwb-0.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_bgsegm451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_calib3d451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_core451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_dnn451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_features2d451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_flann451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_imgcodecs451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_imgproc451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_objdetect451.dll" bin/
cp "$MINGW_PREFIX/bin/libopencv_video451.dll" bin/
cp "$MINGW_PREFIX/bin/libopenh264.dll" bin/
cp "$MINGW_PREFIX/bin/libopenjp2-7.dll" bin/
cp "$MINGW_PREFIX/bin/libopus-0.dll" bin/
cp "$MINGW_PREFIX/bin/libp11-kit-0.dll" bin/
cp "$MINGW_PREFIX/bin/libportaudio-2.dll" bin/
cp "$MINGW_PREFIX/bin/libprotobuf.dll" bin/
cp "$MINGW_PREFIX/bin/libpsl-5.dll" bin/
cp "$MINGW_PREFIX/bin/libquadmath-0.dll" bin/
cp "$MINGW_PREFIX/bin/libreadline8.dll" bin/
cp "$MINGW_PREFIX/bin/librtmp-1.dll" bin/
cp "$MINGW_PREFIX/bin/libshout-3.dll" bin/
cp "$MINGW_PREFIX/bin/libsndfile-1.dll" bin/
cp "$MINGW_PREFIX/bin/libSoundTouch-1.dll" bin/
cp "$MINGW_PREFIX/bin/libsoup-2.4-1.dll" bin/
cp "$MINGW_PREFIX/bin/libsoxr.dll" bin/
cp "$MINGW_PREFIX/bin/libspandsp-2.dll" bin/
cp "$MINGW_PREFIX/bin/libspeex-1.dll" bin/
cp "$MINGW_PREFIX/bin/libsqlite3-0.dll" bin/
cp "$MINGW_PREFIX/bin/libsrt.dll" bin/
cp "$MINGW_PREFIX/bin/libsrtp2.dll" bin/
cp "$MINGW_PREFIX/bin/libssp-0.dll" bin/
cp "$MINGW_PREFIX/bin/libtag.dll" bin/
cp "$MINGW_PREFIX/bin/libtasn1-6.dll" bin/
cp "$MINGW_PREFIX/bin/libtermcap-0.dll" bin/
cp "$MINGW_PREFIX/bin/libtheora-0.dll" bin/
cp "$MINGW_PREFIX/bin/libtheoradec-1.dll" bin/
cp "$MINGW_PREFIX/bin/libtheoraenc-1.dll" bin/
cp "$MINGW_PREFIX/bin/libtiff-5.dll" bin/
cp "$MINGW_PREFIX/bin/libtwolame-0.dll" bin/
cp "$MINGW_PREFIX/bin/libunistring-2.dll" bin/
cp "$MINGW_PREFIX/bin/libvo-amrwbenc-0.dll" bin/
cp "$MINGW_PREFIX/bin/libvorbis-0.dll" bin/
cp "$MINGW_PREFIX/bin/libvorbisenc-2.dll" bin/
cp "$MINGW_PREFIX/bin/libvpx-1.dll" bin/
cp "$MINGW_PREFIX/bin/libvulkan-1.dll" bin/
cp "$MINGW_PREFIX/bin/libwavpack-1.dll" bin/
cp "$MINGW_PREFIX/bin/libwebp-7.dll" bin/
cp "$MINGW_PREFIX/bin/libwebpmux-3.dll" bin/
cp "$MINGW_PREFIX/bin/libwebrtc_audio_processing-1.dll" bin/
cp "$MINGW_PREFIX/bin/libx264-159.dll" bin/
cp "$MINGW_PREFIX/bin/libx265.dll" bin/
cp "$MINGW_PREFIX/bin/libxml2-2.dll" bin/
cp "$MINGW_PREFIX/bin/libzbar-0.dll" bin/
cp "$MINGW_PREFIX/bin/libzstd.dll" bin/
cp "$MINGW_PREFIX/bin/postproc-55.dll" bin/
cp "$MINGW_PREFIX/bin/swresample-3.dll" bin/
cp "$MINGW_PREFIX/bin/swscale-5.dll" bin/
cp "$MINGW_PREFIX/bin/tbb.dll" bin/
cp "$MINGW_PREFIX/bin/xvidcore.dll" bin/



cp -r "$MINGW_PREFIX/lib/gdk-pixbuf-2.0" lib/
cp -r "$MINGW_PREFIX/lib/gstreamer-1.0" lib/

cp -r "$MINGW_PREFIX/libexec/gstreamer-1.0" libexec/

cp -r "$MINGW_PREFIX/share/icons" share/
cp -r "$MINGW_PREFIX/share/gstreamer-1.0" share/
cp -r "$MINGW_PREFIX/share/gst-plugins-base" share/
mkdir -p share/glib-2.0/schemas
cp "$MINGW_PREFIX/share/glib-2.0/schemas/gschemas.compiled" share/glib-2.0/schemas/


# Copy wvr data resources
mkdir data/libs
mkdir data/projects

cp -R "$WVR_STD_LIBS_PATH" data/libs/std
rm -Rf data/libs/std/.git

cp -R "$WVR_FILTERS_PATH" data/filters
rm -Rf data/filters/.git

cp -R "$WVR_EXAMPLES_PATH" data/projects/wvr-examples
rm -Rf data/projects/wvr-examples/.git
