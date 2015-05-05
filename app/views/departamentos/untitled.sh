#!/bin/bash
#
#       /etc/rc.d/init.d/
#
#
#
#
#

# Source function library.
. /etc/init.d/functions


start() {
	echo -n "Iniciando serviço de tela remota: "
	/usr/bin/x11vnc -forever -rfbport 5900  -auth /var/gdm/:0.Xauth -display :0 -bg -shared -noxdamage -xrandr
	return
}

stop() {
	echo -n "Parando serviço de tela remota: "
	killall x11vnc
	return
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)

        ;;
    restart)
        stop
        start
        ;;
    reload)

tart)

        [ -f /var/lock/subsys/ ] && restart || :
    probe)

        ;;
    *)
        echo "Usage:  {start|stop|status|reload|restart[|probe]"
        exit 1
        ;;
esac
exit $?