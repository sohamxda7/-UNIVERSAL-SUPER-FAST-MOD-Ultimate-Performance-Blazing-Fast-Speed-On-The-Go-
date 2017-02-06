#!/tmp/busybox sh
#By Jeeko

cp -f /system/build.prop /system/build.prop.bak

echo "" >> /system/build.prop
echo "" >> /system/build.prop
echo "" >> /system/build.prop
echo "# PPX and AE tweaks ..." >> /system/build.prop
echo "" >> /system/build.prop
echo "debug.sf.hw=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "ro.HOME_APP_ADJ=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "video.accelerate.hw=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "persist.sys.use_dithering=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "# System Tweaks" >> /system/build.prop
echo "ro.HOME_APP_ADJ=1" >> /system/build.prop
echo "ro.mot.eri.losalert.delay=1000" >> /system/build.prop
echo "ro.config.hw_fast_dormancy=1" >> /system/build.prop
echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop
echo "ro.config.hw_fast_dormancy=1" >> /system/build.prop
echo "ro.config.hw_quickpoweron=true" >> /system/build.prop
echo "# Miscellaneous Tweaks" >> /system/build.prop
echo "persist.sys.NV_FPSLIMIT=90" >> /system/build.prop
echo "debug.qctwa.statusbar=1" >> /system/build.prop
echo "debug.qctwa.preservebuf=1" >> /system/build.prop
echo "debug.qc.hardware=true" >> /system/build.prop
echo "com.qc.hardware=true" >> /system/build.prop
echo "ro.telephony.sms_segment_size=160" >> /system/build.prop
echo "persist.telephony.support.ipv6=1" >> /system/build.prop
echo "persist.telephony.support.ipv4=1" >> /system/build.prop
echo "ro.config.hw_fast_dormancy=1" >> /system/build.prop
echo "persist.sys.shutdown.mode=hibernate" >> /system/build.prop
echo "ro.config.hw_power_saving=true" >> /system/build.prop
echo "ro.media.enc.hprof.vid.fps=65" >> /system/build.prop
echo "ro.mot.buttonlight.timeout=1" >> /system/build.prop
echo "ro.ril.set.mtu1472=1" >> /system/build.prop
echo "touch.presure.scale=0.001" >> /system/build.prop
echo "# Signal Tweaks" >> /system/build.prop
echo "ro.ril.hsxpa=1" >> /system/build.prop
echo "ro.ril.gprsclass=10" >> /system/build.prop
echo "ro.ril.hsdpa.category=8" >> /system/build.prop
echo "ro.ril.hsupa.category=6" >> /system/build.prop
echo "persist.cust.tel.eons=1" >> /system/build.prop
echo "# Wireless Speed Tweaks" >> /system/build.prop
echo "net.tcp.buffersize.default=4096,87380,256960,4096,16384,256960" >> /system/build.prop
echo "net.tcp.buffersize.wifi=4096,87380,256960,4096,16384,256960" >> /system/build.prop
echo "net.tcp.buffersize.umts=4096,87380,256960,4096,16384,256960" >> /system/build.prop
echo "net.tcp.buffersize.gprs=4096,87380,256960,4096,16384,256960" >> /system/build.prop
echo "net.tcp.buffersize.edge=4096,87380,256960,4096,16384,256960" >> /system/build.prop
echo "net.ipv4.tcp_ecn=0" >> /system/build.prop
echo "net.ipv4.route.flush=1" >> /system/build.prop
echo "net.ipv4.tcp_rfc1337=1" >> /system/build.prop
echo "net.ipv4.ip_no_pmtu_disc=0" >> /system/build.prop
echo "net.ipv4.tcp_sack=1" >> /system/build.prop
echo "net.ipv4.tcp_fack=1" >> /system/build.prop
echo "net.ipv4.tcp_window_scaling=1" >> /system/build.prop
echo "net.ipv4.tcp_timestamps=1" >> /system/build.prop
echo "net.ipv4.tcp_rmem=4096 39000 187000" >> /system/build.prop
echo "net.ipv4.tcp_wmem=4096 39000 187000" >> /system/build.prop
echo "net.ipv4.tcp_mem=187000 187000 187000" >> /system/build.prop
echo "net.ipv4.tcp_no_metrics_save=1" >> /system/build.prop
echo "net.ipv4.tcp_moderate_rcvbuf=1" >> /system/build.prop
echo "# Makes streaming videos stream faster" >> /system/build.prop
echo "media.stagefright.enable-player=true" >> /system/build.prop
echo "media.stagefright.enable-meta=true" >> /system/build.prop
echo "media.stagefright.enable-scan=true" >> /system/build.prop
echo "media.stagefright.enable-http=true" >> /system/build.prop
echo "media.stagefright.enable-record=true" >> /system/build.prop
echo "# Website Bypass" >> /system/build.prop
echo "net.rmnet0.dns1=8.8.8.8" >> /system/build.prop
echo "net.rmnet0.dns2=8.8.4.4" >> /system/build.prop
echo "net.dns1=8.8.8.8" >> /system/build.prop
echo "net.dns2=8.8.4.4" >> /system/build.prop
echo "# Graphics Enhancement" >> /system/build.prop
echo "debug.performance.tuning=1" >> /system/build.prop
echo "video.accelerate.hw=1" >> /system/build.prop
echo "ro.media.dec.jpeg.memcap=20000000" >> /system/build.prop
echo "ro.media.enc.hprof.vid.bps=8000000" >> /system/build.prop
echo "ro.media.enc.jpeg.quality=100" >> /system/build.prop
echo "# Disables data sent and logging" >> /system/build.prop
echo "ro.config.nocheckin=1" >> /system/build.prop
echo "profiler.force_disable_err_rpt=1" >> /system/build.prop
echo "profiler.force_disable_ulog=1" >> /system/build.prop
echo "# Scrolling Responsiveness" >> /system/build.prop
echo "windowsmgr.max_events_per_sec=90" >> /system/build.prop
echo "persist.cust.tel.eons=1" >> /system/build.prop
echo "# Power Saving Tweaks" >> /system/build.prop
echo "ro.ril.disable.power.collapse=1" >> /system/build.prop
echo "pm.sleep_mode=1" >> /system/build.prop
echo "wifi.supplicant_scan_interval=180" >> /system/build.prop
echo "# Dialing Tweaks" >> /system/build.prop
echo "ro.telephony.call_ring.delay=0" >> /system/build.prop
echo "ro.lge.proximity.delay=25" >> /system/build.prop
echo "mot.proximity.delay=25" >> /system/build.prop
echo "# DalvikVM" >> /system/build.prop
echo "dalvik.vm.verify-bytecode=false" >> /system/build.prop
echo "dalvik.vm.execution-mode=int:fast" >> /system/build.prop
echo "dalvik.vm.checkjni=false" >> /system/build.prop
echo "dalvik.vm.dexopt-data-only=1" >> /system/build.prop
echo "dalvik.vm.heapstartsize=1m" >> /system/build.prop
echo "dalvik.vm.heapgrowthlimit=64m" >> /system/build.prop
echo "dalvik.vm.heapsize=128m" >> /system/build.prop
echo "dalvik.vm.verify-bytecode=false" >> /system/build.prop
echo "dalvik.vm.execution-mode=int:jit" >> /system/build.prop
echo "dalvik.vm.lockprof.threshold=250" >> /system/build.prop
echo "dalvik.vm.dexopt-flags=m=v,o=y" >> /system/build.prop
echo "dalvik.vm.jmiopts=forcecopy" >> /system/build.prop
echo "# Performance" >> /system/build.prop
echo "debug.composition.type=gpu" >> /system/build.prop
echo "ro.max.fling_velocity=20000" >> /system/build.prop
echo "ro.min.fling_velocity=18000" >> /system/build.prop
echo "debug.performance.tuning=1" >> /system/build.prop
echo "debug.kill_allocating_task=0" >> /system/build.prop
echo "debug.overlayui.enable=1" >> /system/build.prop
echo "debug.egl.profiler=1" >> /system/build.prop
echo "debug.egl.hw=1" >> /system/build.prop
echo "debug.sf.hw=1" >> /system/build.prop
echo "hw3d.force=1" >> /system/build.prop
echo "hw2d.force=1" >> /system/build.prop
echo "force_hw_ui=true" >> /system/build.prop
echo "profiler.force_disable_err_rpt=1" >> /system/build.prop
echo "profiler.force_disable_ulog=1" >> /system/build.prop
echo "ro.min_pointer_dur=8" >> /system/build.prop
echo "debug.kill_allocating_task=0" >> /system/build.prop
echo "persist.sys.ui.hw=1" >> /system/build.prop
echo "ro.debuggable=1" >> /system/build.prop
echo "ro.config.disable.hw_accel=false" >> /system/build.prop
echo "ro.kernel.android.checkjni=0" >> /system/build.prop
echo "persist.sys.purgeable_assets=1" >> /system/build.prop
echo "persist.sys.use_dithering=1" >> /system/build.prop
echo "ro.secure=0" >> /system/build.prop
echo "ro.min_pointer_dur=1" >> /system/build.prop
echo "# 16bit Transparency" >> /system/build.prop
echo "persist.sys.use_16bpp_alpha=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "" >> /system/build.prop
echo "" >> /system/build.prop
echo "# End of PPX and AE tweaks ..." >> /system/build.prop