# Copyright 2011 Free Software Foundation, Inc.
#
# This file was generated by gr_modtool, a tool from the GNU Radio framework
# This file is a part of gr-gsm
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

########################################################################
# Include python install macros
########################################################################
include(GrPython)
if(NOT PYTHONINTERP_FOUND)
    return()
endif()

add_subdirectory(bindings)

########################################################################
# Install python sources
########################################################################
add_subdirectory(misc_utils)
add_subdirectory(receiver)
add_subdirectory(demapping)
add_subdirectory(transmitter)
add_subdirectory(trx)


GR_PYTHON_INSTALL(
    FILES
    __init__.py
    DESTINATION ${GR_PYTHON_DIR}/gsm
)

########################################################################
# Handle the unit tests
########################################################################
include(GrTest)

set(GR_TEST_TARGET_DEPS gnuradio-gsm)
set(GR_TEST_ENVIRONS "CMAKE_BINARY_DIR=${CMAKE_BINARY_DIR}")
GR_ADD_TEST(qa_arfcn ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_arfcn.py)
GR_ADD_TEST(qa_decryption ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_decryption.py)
GR_ADD_TEST(qa_burst_printer ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_printer.py)
GR_ADD_TEST(qa_message_printer ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_message_printer.py)
GR_ADD_TEST(qa_burst_file_source ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_file_source.py)
GR_ADD_TEST(qa_burst_timeslot_splitter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_timeslot_splitter.py)
GR_ADD_TEST(qa_burst_sdcch_subslot_splitter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_sdcch_subslot_splitter.py)
GR_ADD_TEST(qa_burst_timeslot_filter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_timeslot_filter.py)
GR_ADD_TEST(qa_burst_sdcch_subslot_filter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_sdcch_subslot_filter.py)
GR_ADD_TEST(qa_burst_fnr_filter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_burst_fnr_filter.py)
GR_ADD_TEST(qa_dummy_burst_filter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_dummy_burst_filter.py)
GR_ADD_TEST(qa_tch_f_decoder ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_tch_f_decoder.py)
GR_ADD_TEST(qa_tch_h_decoder ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_tch_h_decoder.py)
GR_ADD_TEST(qa_tch_f_chans_demapper ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_tch_f_chans_demapper.py)
GR_ADD_TEST(qa_tch_h_chans_demapper ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_tch_h_chans_demapper.py)
GR_ADD_TEST(qa_gsm_bcch_ccch_demapper ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_gsm_bcch_ccch_demapper.py)
GR_ADD_TEST(qa_gsm_bcch_ccch_sdcch4_demapper ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_gsm_bcch_ccch_sdcch4_demapper.py)
GR_ADD_TEST(qa_gsm_sdcch8_demapper ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_gsm_sdcch8_demapper.py)
#GR_ADD_TEST(qa_msg_to_tag ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_msg_to_tag.py)
#GR_ADD_TEST(qa_controlled_fractional_resampler_cc ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_controlled_fractional_resampler_cc.py)
#GR_ADD_TEST(qa_uplink_downlink_splitter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_uplink_downlink_splitter.py)
GR_ADD_TEST(qa_txtime_setter ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/qa_txtime_setter.py)
