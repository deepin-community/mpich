# This Makefile.am generated automatically by f77tof90
# from errors/f77/io/Makefile.am.  DO NOT EDIT
##
## Copyright (C) by Argonne National Laboratory
##     See COPYRIGHT in top-level directory
##

include $(top_srcdir)/Makefile_f90.mtest

EXTRA_DIST = testlist

AM_DEFAULT_SOURCE_EXT = .f90

## for all programs that are just built from the single corresponding source
## file, we don't need per-target _SOURCES rules, automake will infer them
## correctly
noinst_PROGRAMS = uerrhandf90


if MAINTAINER_MODE

# f77tof90 only replaces output files if the contents differ, so we must use a
# separate timestamp file in order avoid constantly trying to remake the f90
# copy of the Makefile when the f77 copy is updated in a way that does not
# change its contents
$(srcdir)/Makefile.am: $(srcdir)/Makefile.am-stamp

$(srcdir)/Makefile.am-stamp: $(top_srcdir)/errors/f77/io/Makefile.am $(top_srcdir)/maint/f77tof90
	( cd $(top_srcdir) && ./maint/f77tof90 errors/f77/io errors/f90/io Makefile.am Makefile.ap )

MAINTAINERCLEANFILES = Makefile.am-stamp
EXTRA_DIST += Makefile.am-stamp  

endif MAINTAINER_MODE

