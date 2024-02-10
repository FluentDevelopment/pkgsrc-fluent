#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: greylogd
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="greylogd"
rcvar=$name
command="@PREFIX@/libexec/${name}"
required_files="@GREYD_CONF@"
pidfile="@VARBASE@/run/${name}/${name}.pid"
start_precmd="greylogd_precmd"

greylogd_precmd()
{
        local piddir="$(dirname "${pidfile}")"

	[ -d "${piddir}" ] && return 0

	mkdir -p "${piddir}"
	chmod 755 "${piddir}"
	chown greyd:greyd "${piddir}"
}

load_rc_config $name
run_rc_command "$1"
