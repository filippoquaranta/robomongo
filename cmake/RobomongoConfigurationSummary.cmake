# Set MONGO_BUILD_FOLDER
set(MONGO_BUILD_FOLDER "build/opt")  # Release
if(CMAKE_BUILD_TYPE STREQUAL "Debug") 
    set(MONGO_BUILD_FOLDER "build/debug") 
endif()

# Show configuration summary and build tip
message("")
message(" _______________[ Robo 3T configuration summary ]________________")
message("| ")
message("|-- Dependencies:")
message("| ")
message("|   Qt5 Core:           ${Qt5Core_VERSION}    ${Qt5Core_DIR}")
message("|   Qt5 Gui:            ${Qt5Gui_VERSION}    ${Qt5Gui_DIR}")
message("|   Qt5 Widgets:        ${Qt5Widgets_VERSION}    ${Qt5Widgets_DIR}")
message("|   Qt5 PrintSupport:   ${Qt5Widgets_VERSION}    ${Qt5PrintSupport_DIR}")
message("|   Qt5 Network:        ${Qt5Network_VERSION}    ${Qt5Network_DIR}")
message("|   Qt5 Xml:            ${Qt5Xml_VERSION}    ${Qt5Xml_DIR}")
if(NOT SYSTEM_LINUX)
    message("|   Qt5 WebEng*Widgets: ${Qt5WebEngineWidgets_VERSION}    ${Qt5WebEngineWidgets_DIR}")
endif()
message("|   MongoDB:            ${MongoDB_VERSION}    ${MongoDB_DIR}")
message("|   MongoDB Objects:    ${MongoDB_VERSION}    ${MongoDB_OBJECTS_DIR}/${MONGO_BUILD_FOLDER}")
message("|   OpenSSL:            ${OPENSSL_VERSION}    ${OpenSSL_DIR}")
message("|   libssh2:            ${LIBSSH2_VERSION}     ${LIBSSH2_DIR}")
message("|   QJson:              ${QJSON_VERSION}     ${QJSON_DIR}")
message("|   QScintilla:         ${QSCINTILLA_VERSION}     ${QSCINTILLA_DIR}")
message("|   Google Test:        ${GOOGLE_TEST_VERSION}     ${GOOGLE_TEST_DIR}")
message("|   ESPRIMA:            ${ESPRIMA_VERSION}     ${ESPRIMA_DIR}")
message("|")
message("|-- Summary:")
message("|")
message("|   Version:          ${PROJECT_VERSION}")
message("|   System:           ${CMAKE_SYSTEM_NAME}")
if (SYSTEM_MACOSX)
    message("|   Target SDK:       ${CMAKE_OSX_DEPLOYMENT_TARGET}")
endif()
message("|   Build type:       ${CMAKE_BUILD_TYPE}")
message("|   Commit:           ${BUILD_NUMBER}")
message("|   Install path:     ${CMAKE_INSTALL_PREFIX}")
message("|")
message("|-- Build, Run and Install:")
message("| ")
message("|     $ bin/build")
message("|     $ bin/run")
message("|     $ bin/install")
message("|")
message("|-- Run Unit Tests:")
message("| ")
message("|     $ bin/build-and-run-tests")
message("|     $ bin/run-tests (without building)")
message("|")
message("|-- Run Static Code Analysis:")
message("|")
if (SYSTEM_WINDOWS)
    message("|     $ bin/run-cppcheck")
else()
    message("|     $ bin/run-clang-tidy")
endif()
message("|__________________________________________________________________")
message("")
