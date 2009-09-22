# Makefile generated by Metrowerks CodeWarrior IDE
# adapted for standalone use 09/02/05 by bfo@synthesis.ch

all:         clientEngine
clean: clean_clientEngine


####### common definitions
WD=$(shell echo `pwd`)
WD_OBJS=$(WD)/../OBJS

CC="gcc"
LD="gcc"
AR="ar -crs"
SIZE="size"

CFLAGS=  -m32 -Wall -O2 -c -MMD
LDFLAGS= -m32
MAKEFILE= "client_engine_linux.mk"


SYNCML_TK_SML=\
  syncml_tk/src/sml/lib/all/liblock.c\
  syncml_tk/src/sml/lib/all/libmem.c\
  syncml_tk/src/sml/lib/all/libstr.c\
  syncml_tk/src/sml/lib/all/libutil.c\
  syncml_tk/src/sml/mgr/all/mgr.c\
  syncml_tk/src/sml/mgr/all/mgrcmdbuilder.c\
  syncml_tk/src/sml/mgr/all/mgrcmddispatcher.c\
  syncml_tk/src/sml/mgr/all/mgrinstancelist.c\
  syncml_tk/src/sml/mgr/all/mgrinstancemgr.c\
  syncml_tk/src/sml/mgr/all/mgrutil.c\
  syncml_tk/src/sml/xlt/all/xltdec.c\
  syncml_tk/src/sml/xlt/all/xltdecwbxml.c\
  syncml_tk/src/sml/xlt/all/xltdecxml.c\
  syncml_tk/src/sml/xlt/all/xltdevinf.c\
  syncml_tk/src/sml/xlt/all/xltenc.c\
  syncml_tk/src/sml/xlt/all/xltenccom.c\
  syncml_tk/src/sml/xlt/all/xltencwbxml.c\
  syncml_tk/src/sml/xlt/all/xltencxml.c\
  syncml_tk/src/sml/xlt/all/xltmetinf.c\
  syncml_tk/src/sml/xlt/all/xlttags.c\
  syncml_tk/src/sml/xlt/all/xltutilstack.c

EXPAT=\
  expat/xmltok/xmltok.c\
  expat/xmltok/xmlrole.c\
  expat/xmlparse/xmlparse.c

ZLIB=\
  zlib/adler32.c\
  zlib/compress.c\
  zlib/crc32.c\
  zlib/deflate.c\
  zlib/gzio.c\
  zlib/infback.c\
  zlib/inffast.c\
  zlib/inflate.c\
  zlib/inftrees.c\
  zlib/trees.c\
  zlib/uncompr.c\
  zlib/zutil.c

C_BASICS=\
  $(SYNCML_TK_SML)\
  $(EXPAT)\
  platform_adapters/linux/platform_exec.c\
  sysync_SDK/Sources/SDK_util.c\
  SQLite/sqlite3.c

PLATFORM=\
  platform_adapters/linux/configfiles.cpp\
  platform_adapters/linux/profiling.cpp\
  platform_adapters/linux/platform_time.cpp\
  platform_adapters/unix_common/platform_mutex.cpp\
  platform_adapters/sysyncinit.cpp

PLATFORM_EXT=\
  $(PLATFORM)\
  platform_adapters/linux/platform_DLL.cpp\
  platform_adapters/unix_common/platform_thread.cpp\
  platform_adapters/unix_common/platform_file.cpp

BINFILES=\
  platform_adapters/binfile.cpp\
  sysync/binfileimplds.cpp\
  sysync/binfileimplclient.cpp\
  sysync/binfilebase.cpp

SYSYNC=\
  sysync/sysync_utils.cpp\
  sysync/sysync_b64.cpp\
  sysync/sysync_md5.cpp\
  sysync/syncsession.cpp\
  sysync/syncappbase.cpp\
  sysync/lineartime.cpp\
  sysync/iso8601.cpp\
  sysync/stringutils.cpp\
  sysync/superdatastore.cpp\
  sysync/scriptcontext.cpp\
  sysync/itemfield.cpp\
  sysync/mimediritemtype.cpp\
  sysync/mimedirprofile.cpp\
  sysync/multifielditem.cpp\
  sysync/multifielditemtype.cpp\
  sysync/remotedatastore.cpp\
  sysync/syncitem.cpp\
  sysync/syncitemtype.cpp\
  sysync/simpleitem.cpp\
  sysync/synccommand.cpp\
  sysync/syncdatastore.cpp\
  sysync/textitemtype.cpp\
  sysync/vcalendaritemtype.cpp\
  sysync/vcarditemtype.cpp\
  sysync/syncexception.cpp\
  sysync/configelement.cpp\
  sysync/sysync_crc16.cpp\
  sysync/timezones.cpp\
  sysync/rrules.cpp\
  sysync/localengineds.cpp\
  sysync/debuglogger.cpp\
  sysync/textprofile.cpp\
  sysync/dataobjtype.cpp\
  sysync/stdlogicds.cpp\
  sysync/stdlogicagent.cpp\
  sysync/customimplagent.cpp\
  sysync/customimplds.cpp\
  sysync/vtimezone.cpp

CLIENTENGINE=\
  $(SYSYNC)\
  syncapps/clientEngine_custom/clientengine_custom_Base.cpp\
  Transport_interfaces/engine/engineclientbase.cpp\
  sysync_SDK/Sources/enginemodulebase.cpp\
  sysync/engineentry.cpp\
  sysync/engineinterface.cpp\
  sysync/syncclient.cpp\
  sysync/syncclientbase.cpp

ODBC_DB=\
  DB_interfaces/odbc_db/odbcapiagent.cpp\
  DB_interfaces/odbc_db/odbcapids.cpp

API_DB=\
  DB_interfaces/api_db/pluginapiagent.cpp\
  DB_interfaces/api_db/pluginapids.cpp\
  DB_interfaces/api_db/dbapi.cpp\
  DB_interfaces/api_db/DLL_interface.cpp\
  DB_interfaces/api_db/sync_dbapiconnect.cpp\
  sysync_SDK/Sources/SDK_support.cpp

# --------------------------------------------------------
INCLUDE_PLATFORM=\
  -I platform_adapters/linux/\
  -I platform_adapters/unix_common/\
  -I platform_adapters/

INCLUDE_SYNCML_TK_SML=\
  -I syncml_tk/src/sml/inc/\
  -I syncml_tk/src/sml/lib/inc/\
  -I syncml_tk/src/sml/lib/\
  -I syncml_tk/src/sml/mgr/inc/\
  -I syncml_tk/src/sml/mgr/\
  -I syncml_tk/src/sml/wsm/inc/\
  -I syncml_tk/src/sml/xlt/inc/\
  -I syncml_tk/src/sml/xlt/all/

INCLUDE_EXPAT=\
  -I expat/xmltok/\
  -I expat/xmlparse/

INCLUDE_CLIENTENGINE=\
  -I syncapps/clientEngine_custom/\
  -I Transport_interfaces/engine/\
  -I sysync_SDK/Sources\
  -I sysync/\
  -I ./


#############################
#######  TARGET: clientEngine
#############################
WD_OBJS_clientEngine=$(WD_OBJS)/clientEngine

c_SRC_clientEngine=\
  $(C_BASICS) $(ZLIB)

cpp_SRC_clientEngine=\
  $(PLATFORM_EXT)\
  $(CLIENTENGINE)\
  $(BINFILES)\
  $(ODBC_DB)\
  $(API_DB)

OBJS_clientEngine+=  $(c_SRC_clientEngine:.c=.c.o)
OBJS_clientEngine+=$(cpp_SRC_clientEngine:.cpp=.cpp.o)

INCLUDE_clientEngine=\
 -include Targets/ReleasedProducts/clientEngine_opensource_linux/clientengine_demo_x86_linux_prefix.h\
 -I Targets/ReleasedProducts/clientEngine_opensource_linux/\
 $(INCLUDE_PLATFORM)\
 $(INCLUDE_SYNCML_TK_SML)\
 $(INCLUDE_EXPAT)\
 $(INCLUDE_CLIENTENGINE)\
 -I DB_interfaces/odbc_db/\
 -I DB_interfaces/api_db/\
 -I SQLite/\
 -I zlib/\
 -I /usr/include/

clientEngine:
	$(MAKE) -f $(MAKEFILE) sysync_client_engine.so TARGET=sysync_client_engine.so\
  WDOP="$(WD_OBJS_clientEngine)"\
  OBJS="$(addprefix $(WD_OBJS_clientEngine)/,$(OBJS_clientEngine))"\
  LIBS="-L/usr/lib32 -L/usr/lib -lstdc++ -lpthread -lltdl -lpcre"\
  INCL="$(INCLUDE_clientEngine)"

sysync_client_engine.so: $(OBJS)
	$(LD) -shared -Xlinker -soname=sysync_client_engine $(LDFLAGS) $(OBJS) $(LIBS)\
	-o sysync_SDK/bin/Linux/sysync_client_engine.so

ifeq ($(TARGET), sysync_client_engine.so)
$(WDOP)/%.c.o:   $(WD)/%.c
	mkdir -p $(dir $@)
	$(CC) -fPIC $(CFLAGS) $(INCL) $< -o $@

$(WDOP)/%.cpp.o: $(WD)/%.cpp
	mkdir -p $(dir $@)
	$(CC) -fPIC $(CFLAGS) $(INCL) $< -o $@
endif

clean_clientEngine:
	rm -f -r $(WD_OBJS_clientEngine)
