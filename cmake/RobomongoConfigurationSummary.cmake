# Show configuration summary and build tip
message("")
message(" _______________[ Robo 3T configuration summary ]________________")
message("| ")
message("|-- Dependencies:")
message("| ")
message("|   Qt5 Core:           ${Qt5Core_VERSION}     ${Qt5Core_DIR}")
message("|   Qt5 Gui:            ${Qt5Gui_VERSION}     ${Qt5Gui_DIR}")
message("|   Qt5 Widgets:        ${Qt5Widgets_VERSION}     ${Qt5Widgets_DIR}")
message("|   Qt5 PrintSupport:   ${Qt5Widgets_VERSION}     ${Qt5PrintSupport_DIR}")
message("|   Qt5 Network:        ${Qt5Network_VERSION}     ${Qt5Network_DIR}")
message("|   Qt5 Xml:            ${Qt5Xml_VERSION}     ${Qt5Xml_DIR}")
message("|   MongoDB:            ${MongoDB_VERSION}    ${MongoDB_BUILD_DIR}")
message("|   MongoDB Objects:    ${MongoDB_VERSION}    ${MongoDB_OBJECTS_DIR}/build")
message("|   OpenSSL:            ${OPENSSL_VERSION}    ${OpenSSL_DIR}")
message("|   libssh2:            ${LIBSSH2_VERSION}     ${LIBSSH2_DIR}")
message("|   QJson:              ${QJSON_VERSION}     ${QJSON_DIR}")
message("|   QScintilla:         ${QSCINTILLA_VERSION}     ${QSCINTILLA_DIR}")
message("|   Google Test:        ${GOOGLE_TEST_VERSION}     ${GOOGLE_TEST_DIR}")
message("|   ESPRIMA:            ${ESPRIMA_VERSION}     ${ESPRIMA_DIR}")
message("|")
message("|-- Summary:")
message("|")
message("|   System:           ${CMAKE_SYSTEM_NAME}")
if (SYSTEM_MACOSX)
    message("|   Target SDK:       ${CMAKE_OSX_DEPLOYMENT_TARGET}")
endif()
message("|   Build type:       ${CMAKE_BUILD_TYPE}")
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
message("|     $ bin/build_and_run_tests")
message("|     $ bin/run_tests (without building)")
message("|__________________________________________________________________")
message("")
