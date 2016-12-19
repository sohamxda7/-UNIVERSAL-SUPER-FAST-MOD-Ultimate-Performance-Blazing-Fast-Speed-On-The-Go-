#!/system/bin/sh
# Build.prop editor script with basic sed commands
# tommytomatoe
# May 12, 2012
# script from http://themikmik.com/showthread.php?12566-Scripts-Bash-and-Shell-scripts-for-updating-build-prop-in-recovery

export PATH=/tmp:$PATH:/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin
exec 0>&1

set +e

# Variable declarations
# these are for the build.prop
FILE=/system/build.prop
# as for uninstall method, we need to make a backup of build/prop for each version
TMPFILE=$FILE.backupUPB01

#make a save
cp $FILE $TMPFILE

# this variable is just a place holder for the future line number of the prop values
lineNum=

# PROP VARIABLE
# these varaibles are the actual props inside the build prop we want to modify
# I chose three popular ones to test on
# this list can be as large as you want it to be

line1='debug.sf.hw'
lineArg1='1'


line2='ro.HOME_APP_ADJ'
lineArg2='1'


line3='video.accelerate.hw'
lineArg3='1'


line4='persist.sys.use_dithering'
lineArg4='1'


# System Tweaks
line5='ro.HOME_APP_ADJ'
lineArg5='1'

line6='ro.mot.eri.losalert.delay'
lineArg6='1000'

line7='ro.config.hw_fast_dormancy'
lineArg7='1'

line8='ro.ril.enable.amr.wideband'
lineArg8='1'

line9='ro.config.hw_fast_dormancy'
lineArg9='1'

line10='ro.config.hw_quickpoweron'
lineArg10='true'

# Miscellaneous Tweaks
line11='persist.sys.NV_FPSLIMIT'
lineArg11='90'

line12='debug.qctwa.statusbar'
lineArg12='1'

line13='debug.qctwa.preservebuf'
lineArg13='1'

line14='debug.qc.hardware'
lineArg14='true'

line15='com.qc.hardware'
lineArg15='true'

line16='ro.telephony.sms_segment_size'
lineArg16='160'

line17='persist.telephony.support.ipv6'
lineArg17='1'

line18='persist.telephony.support.ipv4'
lineArg18='1'

line19='ro.config.hw_fast_dormancy'
lineArg19='1'

line20='persist.sys.shutdown.mode'
lineArg20='hibernate'

line21='ro.config.hw_power_saving'
lineArg21='true'

line22='ro.media.enc.hprof.vid.fps'
lineArg22='65'

line23='ro.mot.buttonlight.timeout'
lineArg23='1'

line24='ro.ril.set.mtu1472'
lineArg24='1'

line25='touch.presure.scale'
lineArg25='0.001'

# Signal Tweaks
line26='ro.ril.hsxpa'
lineArg26='1'

line27='ro.ril.gprsclass'
lineArg27='10'

line28='ro.ril.hsdpa.category'
lineArg28='8'

line29='ro.ril.hsupa.category'
lineArg29='6'

line30='persist.cust.tel.eons'
lineArg30='1'

# Wireless Speed Tweaks
line31='net.tcp.buffersize.default'
lineArg31='4096,87380,256960,4096,16384,256960'

line32='net.tcp.buffersize.wifi'
lineArg32='4096,87380,256960,4096,16384,256960'

line33='net.tcp.buffersize.umts'
lineArg33='4096,87380,256960,4096,16384,256960'

line34='net.tcp.buffersize.gprs'
lineArg34='4096,87380,256960,4096,16384,256960'

line35='net.tcp.buffersize.edge'
lineArg35='4096,87380,256960,4096,16384,256960'

line36='net.ipv4.tcp_ecn'
lineArg36='0'

line37='net.ipv4.route.flush'
lineArg37='1'

line38='net.ipv4.tcp_rfc1337'
lineArg38='1'

line39='net.ipv4.ip_no_pmtu_disc'
lineArg39='0'

line40='net.ipv4.tcp_sack'
lineArg40='1'

line41='net.ipv4.tcp_fack'
lineArg41='1'

line42='net.ipv4.tcp_window_scaling'
lineArg42='1'

line43='net.ipv4.tcp_timestamps'
lineArg43='1'

line44='net.ipv4.tcp_rmem'
lineArg44='4096 39000 187000'

line45='net.ipv4.tcp_wmem'
lineArg45='4096 39000 187000'

line46='net.ipv4.tcp_mem'
lineArg46='187000 187000 187000'

line47='net.ipv4.tcp_no_metrics_save'
lineArg47='1'

line48='net.ipv4.tcp_moderate_rcvbuf'
lineArg48='1'

# Makes streaming videos stream faster
line49='media.stagefright.enable-player'
lineArg49='true'

line50='media.stagefright.enable-meta'
lineArg50='true'

line51='media.stagefright.enable-scan'
lineArg51='true'

line52='media.stagefright.enable-http'
lineArg52='true'

line53='media.stagefright.enable-record'
lineArg53='true'

# Website Bypass
line54='net.rmnet0.dns1'
lineArg54='8.8.8.8'

line55='net.rmnet0.dns2'
lineArg55='8.8.4.4'

line56='net.dns1'
lineArg56='8.8.8.8'

line57='net.dns2'
lineArg57='8.8.4.4'

# Graphics Enhancement
line58='debug.performance.tuning'
lineArg58='1'

line59='video.accelerate.hw'
lineArg59='1'

line60='ro.media.dec.jpeg.memcap'
lineArg60='20000000'

line61='ro.media.enc.hprof.vid.bps'
lineArg61='8000000'

line62='ro.media.enc.jpeg.quality'
lineArg62='100'

# Disables data sent and logging
line63='ro.config.nocheckin'
lineArg63='1'

line64='profiler.force_disable_err_rpt'
lineArg64='1'

line65='profiler.force_disable_ulog'
lineArg65='1'

# Scrolling Responsiveness
line66='windowsmgr.max_events_per_sec'
lineArg66='90'

line67='persist.cust.tel.eons'
lineArg67='1'

# Power Saving Tweaks
line68='ro.ril.disable.power.collapse'
lineArg68='1'

line69='pm.sleep_mode'
lineArg69='1'

line70='wifi.supplicant_scan_interval'
lineArg70='180'

# Dialing Tweaks
line71='ro.telephony.call_ring.delay'
lineArg71='0'

line72='ro.lge.proximity.delay'
lineArg72='25'

line73='mot.proximity.delay'
lineArg73='25'

# DalvikVM
line74='dalvik.vm.verify-bytecode'
lineArg74='false'

line75='dalvik.vm.execution-mode'
lineArg75='int:fast'

line76='dalvik.vm.checkjni'
lineArg76='false'

line77='dalvik.vm.dexopt-data-only'
lineArg77='1'

line78='dalvik.vm.heapstartsize'
lineArg78='1m'

line79='dalvik.vm.heapgrowthlimit'
lineArg79='64m'

line80='dalvik.vm.heapsize'
lineArg80='128m'

line81='dalvik.vm.verify-bytecode'
lineArg81='false'

line82='dalvik.vm.execution-mode'
lineArg82='int:jit'

line83='dalvik.vm.lockprof.threshold'
lineArg83='250'

line84='dalvik.vm.dexopt-flags'
line84Arg='m=v,o=y'

line85='dalvik.vm.dexopt-flags'
line85Arg='m=v,o=y'

line86='dalvik.vm.dexopt-flags'
line86Arg='m=v,o=y'

line87='dalvik.vm.jmiopts'
lineArg87='forcecopy'

# Performance
line88='debug.composition.type'
lineArg88='gpu'

line89='ro.max.fling_velocity'
lineArg89='20000'

line90='ro.min.fling_velocity'
lineArg90='18000'

line91='debug.performance.tuning'
lineArg91='1'

line92='debug.kill_allocating_task'
lineArg92='0'

line93='debug.overlayui.enable'
lineArg93='1'

line94='debug.egl.profiler'
lineArg94='1'

line95='debug.egl.hw'
lineArg95='1'

line96='debug.sf.hw'
lineArg96='1'

line97='hw3d.force'
lineArg97='1'

line98='hw2d.force'
lineArg98='1'

line99='force_hw_ui'
lineArg99='true'

line100='profiler.force_disable_err_rpt'
lineArg100='1'

line101='profiler.force_disable_ulog'
lineArg101='1'

line102='ro.min_pointer_dur'
lineArg102='8'

line103='debug.kill_allocating_task'
lineArg103='0'

line104='persist.sys.ui.hw'
lineArg104='1'

line105='ro.debuggable'
lineArg105='1'

line106='ro.config.disable.hw_accel'
lineArg106='false'

line107='ro.kernel.android.checkjni'
lineArg107='0'

line108='persist.sys.purgeable_assets'
lineArg108='1'

line109='persist.sys.use_dithering'
lineArg109='1'

line110='ro.secure'
lineArg110='0'

line111='ro.min_pointer_dur'
lineArg111='1'

# 16bit Transparency
line112='persist.sys.use_16bpp_alpha'
lineArg112='1'






















# main is where all the magic happens

# to avoid clutter, I've moved some code comments to the bottom
# each listing is matched with the correct marker #a will be #a below, etc

#b = prop is set to argument 1, the prop variable           << I think those line may not work
#c = arg is set to argument 2, the argument variable        << I don't think we can concat variable name, maybe use eval ?
#d = if prop value exists in build.prop,
#    replace it, else, append it to end of file
#e = lineNum will be set to the line number of prop
#f = use sed to replace the line at lineNum with the new values
#    alternatively, I could use this:
        #sed -i "/${prop}/d" $FILE
        #sed -i "${lineNum}i${prop}=${arg}" $FILE


for i in $(seq 1 112)
do
	propName=line${i}
	argName=lineArg${i}

	# prop=${!propName}														#b
	# arg=${!argName}														#c
	eval prop=\"\$$propName\"
	eval arg=\"\$$propName\"

	if grep -Fq $prop $FILE ; then											#d
		lineNum=`/tmp/busybox sed -n "/${prop}/=" $FILE`					#e
		echo "$prop exist in build.prop line $lineNum"
		echo "edit build.prop"
		/tmp/busybox sed -i "${lineNum} c${prop}=${arg}" $FILE				#f
	else
		echo "$prop does not exist in build.prop"
		echo "appending to end of build.prop"
		echo $prop=$arg >> $FILE
	fi
done

# prop=$line1										#b
# arg=$line1Arg										#c
# if grep -Fq $prop $FILE ; then						#d
#     lineNum=`/tmp/busybox sed -n "/${prop}/=" $FILE`				#e
#     echo $lineNum
#     /tmp/busybox sed -i "${lineNum} c${prop}=${arg}" $FILE		#f
# else
#     echo "$prop does not exist in build.prop"
#     echo "appending to end of build.prop"
#     echo "echo $prop=$arg >> $FILE"
#     echo $prop=$arg >> $FILE
# fi

# to iterate over all the prop values you want to change,
# just copy and paste the code chunk or create a for loop.
# I will leave it to you to create a for loop

exit 0