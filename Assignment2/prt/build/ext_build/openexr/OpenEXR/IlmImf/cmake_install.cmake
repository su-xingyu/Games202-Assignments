# Install script for directory: /home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/build/ext_build/openexr/OpenEXR/IlmImf/libIlmImf.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfForward.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfExport.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfBoxAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCRgbaFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelList.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelListAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompressionAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDoubleAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFrameBuffer.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfHeader.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfIO.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfIntAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrderAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMatrixAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOpaqueAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfVecAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfHuf.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfWav.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLut.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfArray.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompression.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrder.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfName.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPixelType.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfVersion.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfXdr.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfConvert.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImage.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImageAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticities.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCode.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCodeAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCode.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCodeAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRational.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRationalAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFramesPerSecond.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStandardAttributes.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmap.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmapAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInt64.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgba.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescription.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledRgbaFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaYca.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTestFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfThreading.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfB44Compressor.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringVectorAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiView.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfAcesFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartType.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartHelper.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepFrameBuffer.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepCompositing.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfNamespace.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfMisc.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageState.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h"
    "/home/xingyu/Desktop/Games202/GAMES202_Assignment2/Assignment2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatVectorAttribute.h"
    )
endif()

