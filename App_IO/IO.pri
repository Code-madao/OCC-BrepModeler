IO_MODULES += XSBase IGES STEP

for(MODULE, IO_MODULES) {
    MODULE_PATH = $$PWD/$$MODULE
    HEADERS += $$files($$MODULE_PATH/*.h, true) \
               $$files($$MODULE_PATH/*.hxx, true) \
               $$files($$MODULE_PATH/*.hpp, true) \
               $$files($$MODULE_PATH/*.lxx, true) \
               $$files($$MODULE_PATH/*.gxx, true) \
               $$files($$MODULE_PATH/*.pxx, true) \
               $$files($$MODULE_PATH/*.mm, true)

    SOURCES += $$files($$MODULE_PATH/*.c, true) \
               $$files($$MODULE_PATH/*.cpp, true) \
               $$files($$MODULE_PATH/*.cxx, true)

    INCLUDEPATH += $$MODULE_PATH
    # add OCCT subdirectories
    OCCT_FILES += $$files($$MODULE_PATH/*.*, true)
    for(FILE, OCCT_FILES) {
       INCLUDEPATH += $$dirname(FILE)
    }
    INCLUDEPATH = $$unique(INCLUDEPATH)
}
