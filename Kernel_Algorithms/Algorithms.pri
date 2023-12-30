HEADERS = $$files($$PWD/*.h, true) \
           $$files($$PWD/*.hxx, true) \
           $$files($$PWD/*.hpp, true) \
           $$files($$PWD/*.lxx, true) \
           $$files($$PWD/*.gxx, true) \
           $$files($$PWD/*.pxx, true) \
           $$files($$PWD/*.mm, true)

SOURCES += $$files($$PWD/*.c, true) \
           $$files($$PWD/*.cpp, true) \
           $$files($$PWD/*.cxx, true)

INCLUDEPATH += $$PWD
# add OCCT subdirectories
OCCT_FILES += $$files($$PWD/*.*, true)
for(FILE, OCCT_FILES) {
   INCLUDEPATH += $$dirname(FILE)
}
INCLUDEPATH = $$unique(INCLUDEPATH)
