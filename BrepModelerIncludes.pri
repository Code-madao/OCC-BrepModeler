INCLUDEPATH += $$PWD
# add OCCT subdirectories
OCCT_FILES += $$files($$PWD/*.*, true)
for(FILE, OCCT_FILES) {
   INCLUDEPATH += $$dirname(FILE)
}
INCLUDEPATH = $$unique(INCLUDEPATH)
