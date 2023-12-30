HEADERS += $$files($$PWD/*.h, true) \
           $$files($$PWD/*.hxx, true) \
           $$files($$PWD/*.lxx, true) \

SOURCES += $$files($$PWD/*.c, true) \
           $$files($$PWD/*.cpp, true) \
           $$files($$PWD/*.cxx, true) \
           $$files($$PWD/*.gxx, true) \
           $$files($$PWD/*.mm, true) \

INCLUDEPATH += $$PWD
# add OCCT subdirectories
OCCT_FILES += $$files($$PWD/*.*, true)
for(FILE, OCCT_FILES) {
   INCLUDEPATH += $$dirname(FILE)
}
INCLUDEPATH = $$unique(INCLUDEPATH)
