PREFIX := /usr/local

all:

install:
	install etc/zfs-auto-snapshot-frequent.service $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-daily.service $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-weekly.service $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-monthly.service $(DESTDIR)/etc/systemd/system

	install etc/zfs-auto-snapshot-frequent.timer $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-daily.timer $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-weekly.timer $(DESTDIR)/etc/systemd/system
	install etc/zfs-auto-snapshot-monthly.timer $(DESTDIR)/etc/systemd/system


	install -d $(DESTDIR)$(PREFIX)/share/man/man8
	install -m 0644 src/zfs-auto-snapshot.8 $(DESTDIR)$(PREFIX)/share/man/man8/zfs-auto-snapshot.8
	install -d $(DESTDIR)$(PREFIX)/sbin
	install src/zfs-auto-snapshot.sh $(DESTDIR)$(PREFIX)/sbin/zfs-auto-snapshot

uninstall:
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-frequent.service
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-daily.service
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-weekly.service
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-monthly.service

	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-frequent.timer
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-daily.timer
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-weekly.timer
	rm $(DESTDIR)/etc/systemd/system/zfs-auto-snapshot-monthly.timer

	rm $(DESTDIR)$(PREFIX)/share/man/man8/zfs-auto-snapshot.8
	rm $(DESTDIR)$(PREFIX)/sbin/zfs-auto-snapshot
