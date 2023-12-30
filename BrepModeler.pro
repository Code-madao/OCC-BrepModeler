TARGET = XStudioBrepModeler
DEFINES += XStudio_BrepModeler_EXPORTS

include(./Kernel_Numerics/Numerics.pri)
include(./Kernel_DataStructure/DataStructure.pri)
include(./Kernel_Algorithms/Algorithms.pri)
include(./App_IO/IO.pri)

# compiling control macros
DEFINES += OCCT_NO_PLUGINS
CONFIG += no_import_scan

#win32 {
#    include(../../LibWin.pri)
#}

#macx {
#    include(../../LibMac.pri)
#}

#unix {
#    include(../../LibLinux.pri)
#}
