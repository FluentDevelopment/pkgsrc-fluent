#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: greyd
# REQUIRE: DAEMON
#

. /etc/rc.subr

name="greyd"
rcvar=$name
command="@PREFIX@/libexec/${name}"
required_files="@GREYD_CONF@"
pidfile="@VARBASE@/run/${name}/${name}.pid"
start_precmd="greyd_precmd"
start_postcmd="greyd_postcmd"

AWK="@AWK@"

greyd_get_chrootdir()
{
	$AWK -F'[[:space:]]*=[[:space:]]*' '$1=="chroot_dir"{gsub(/"/,"",$2);print$2}' "@GREYD_CONF@"
}


greyd_precmd()
{
	local greyd_chrootdir=$(greyd_get_chrootdir)

	if [ -z "$greyd_chrootdir" ]; then
		return 0
	fi

        for i in npf; do
                if [ ! -c "${greyd_chrootdir}/dev/$i" ]; then
                        rm -f "${greyd_chrootdir}/dev/$i"
                        (cd /dev &&
                            /bin/pax -rw -pe "$i" "${greyd_chrootdir}/dev")
                fi
        done

        local piddir="$(dirname "${pidfile}")"
        mkdir -p "${greyd_chrootdir}${piddir}" "${piddir}"
        chmod 755 "${greyd_chrootdir}${piddir}" "${piddir}"
        chown greyd:greyd "${greyd_chrootdir}${piddir}" "${piddir}"

        ln -fs "${greyd_chrootdir}${pidfile}" "${pidfile}"
}

greyd_postcmd()
{
	if [ -x @PREFIX@/libexec/greyd-setup ]; then
		@PREFIX@/libexec/greyd-setup
	fi
}

load_rc_config $name
run_rc_command "$1"
