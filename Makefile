

all:

install:
	install -d /etc/systemd/system
	install etc/zfs-auto-snapshot-frequent.service /etc/systemd/system
	install etc/zfs-auto-snapshot-hourly.service /etc/systemd/system
	install etc/zfs-auto-snapshot-daily.service /etc/systemd/system
	install etc/zfs-auto-snapshot-weekly.service /etc/systemd/system
	install etc/zfs-auto-snapshot-monthly.service /etc/systemd/system

	install etc/zfs-auto-snapshot-frequent.timer /etc/systemd/system
	install etc/zfs-auto-snapshot-hourly.timer /etc/systemd/system
	install etc/zfs-auto-snapshot-daily.timer /etc/systemd/system
	install etc/zfs-auto-snapshot-weekly.timer /etc/systemd/system
	install etc/zfs-auto-snapshot-monthly.timer /etc/systemd/system


	install -d /usr/local/share/man/man8
	install -m 0644 src/zfs-auto-snapshot.8 /usr/local/share/man/man8/zfs-auto-snapshot.8
	install -d /usr/local/sbin
	install src/zfs-auto-snapshot.sh /usr/local/sbin/zfs-auto-snapshot

uninstall:
	rm /etc/systemd/system/zfs-auto-snapshot-frequent.service
	rm /etc/systemd/system/zfs-auto-snapshot-hourly.service
	rm /etc/systemd/system/zfs-auto-snapshot-daily.service
	rm /etc/systemd/system/zfs-auto-snapshot-weekly.service
	rm /etc/systemd/system/zfs-auto-snapshot-monthly.service

	rm /etc/systemd/system/zfs-auto-snapshot-frequent.timer
	rm /etc/systemd/system/zfs-auto-snapshot-hourly.timer
	rm /etc/systemd/system/zfs-auto-snapshot-daily.timer
	rm /etc/systemd/system/zfs-auto-snapshot-weekly.timer
	rm /etc/systemd/system/zfs-auto-snapshot-monthly.timer

	rm /usr/local/share/man/man8/zfs-auto-snapshot.8
	rm /usr/local/sbin/zfs-auto-snapshot
