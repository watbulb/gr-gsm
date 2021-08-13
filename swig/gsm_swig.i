/* -*- c++ -*- */
/*
 * @file
 * @author (C) 2014-2017 by Piotr Krysik <ptrkrysik@gmail.com>
 * @section LICENSE
 *
 * Gr-gsm is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * Gr-gsm is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with gr-gsm; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */


#define gsm_API

%include <std_pair.i>
%template(pairud) std::pair<unsigned long long,double>;

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "gsm_swig_doc.i"

%{
#include "gsm/constants.h"
#include "gsm/receiver/receiver.h"
#include "gsm/receiver/clock_offset_control.h"
#include "gsm/receiver/cx_channel_hopper.h"
#include "gsm/decoding/control_channels_decoder.h"
#include "gsm/decoding/tch_f_decoder.h"
#include "gsm/decoding/tch_h_decoder.h"
#include "gsm/decryption/decryption.h"
#include "gsm/demapping/universal_ctrl_chans_demapper.h"
#include "gsm/demapping/tch_f_chans_demapper.h"
#include "gsm/demapping/tch_h_chans_demapper.h"
#include "gsm/flow_control/common.h"
#include "gsm/flow_control/burst_timeslot_splitter.h"
#include "gsm/flow_control/burst_sdcch_subslot_splitter.h"
#include "gsm/flow_control/burst_timeslot_filter.h"
#include "gsm/flow_control/burst_sdcch_subslot_filter.h"
#include "gsm/flow_control/burst_fnr_filter.h"
#include "gsm/flow_control/burst_type_filter.h"
#include "gsm/flow_control/dummy_burst_filter.h"
#include "gsm/flow_control/uplink_downlink_splitter.h"
#include "gsm/misc_utils/bursts_printer.h"
#include "gsm/misc_utils/controlled_rotator_cc.h"
#include "gsm/misc_utils/extract_system_info.h"
#include "gsm/misc_utils/extract_immediate_assignment.h"
#include "gsm/misc_utils/message_printer.h"
#include "gsm/misc_utils/tmsi_dumper.h"
#include "gsm/misc_utils/burst_file_sink.h"
#include "gsm/misc_utils/burst_file_source.h"
#include "gsm/misc_utils/collect_system_info.h"
#include "gsm/misc_utils/extract_cmc.h"
#include "gsm/misc_utils/extract_assignment_cmd.h"
#include "gsm/qa_utils/burst_sink.h"
#include "gsm/qa_utils/burst_source.h"
#include "gsm/qa_utils/message_source.h"
#include "gsm/qa_utils/message_sink.h"
#include "gsm/misc_utils/message_file_sink.h"
#include "gsm/misc_utils/message_file_source.h"
#include "gsm/misc_utils/msg_to_tag.h"
#include "gsm/misc_utils/controlled_fractional_resampler_cc.h"
#include "gsm/misc_utils/burst_to_fn_time.h"
#include "gsm/misc_utils/fn_time.h"
#include "gsm/transmitter/txtime_setter.h"
#include "gsm/transmitter/preprocess_tx_burst.h"
#include "gsm/transmitter/gen_test_ab.h"
#include "gsm/trx/trx_burst_if.h"
%}

%include "constants.i"

%include "gsm/receiver/receiver.h"
GR_SWIG_BLOCK_MAGIC2(gsm, receiver);
%include "gsm/receiver/clock_offset_control.h"
GR_SWIG_BLOCK_MAGIC2(gsm, clock_offset_control);
%include "gsm/receiver/cx_channel_hopper.h"
GR_SWIG_BLOCK_MAGIC2(gsm, cx_channel_hopper);

%include "gsm/decoding/control_channels_decoder.h"
GR_SWIG_BLOCK_MAGIC2(gsm, control_channels_decoder);
%include "gsm/decoding/tch_f_decoder.h"
GR_SWIG_BLOCK_MAGIC2(gsm, tch_f_decoder);
%include "gsm/decoding/tch_h_decoder.h"
GR_SWIG_BLOCK_MAGIC2(gsm, tch_h_decoder);

%include "gsm/decryption/decryption.h"
GR_SWIG_BLOCK_MAGIC2(gsm, decryption);

%include "gsm/demapping/universal_ctrl_chans_demapper.h"
GR_SWIG_BLOCK_MAGIC2(gsm, universal_ctrl_chans_demapper);
%include "gsm/demapping/tch_f_chans_demapper.h"
GR_SWIG_BLOCK_MAGIC2(gsm, tch_f_chans_demapper);
%include "gsm/demapping/tch_h_chans_demapper.h"
GR_SWIG_BLOCK_MAGIC2(gsm, tch_h_chans_demapper);

%include "gsm/flow_control/common.h"
%include "gsm/flow_control/burst_timeslot_splitter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_timeslot_splitter);
%include "gsm/flow_control/burst_sdcch_subslot_splitter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_sdcch_subslot_splitter);
%include "gsm/flow_control/burst_timeslot_filter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_timeslot_filter);
%include "gsm/flow_control/burst_sdcch_subslot_filter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_sdcch_subslot_filter);
%include "gsm/flow_control/burst_fnr_filter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_fnr_filter);
%include "gsm/flow_control/burst_type_filter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_type_filter);
%include "gsm/flow_control/dummy_burst_filter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, dummy_burst_filter);
%include "gsm/flow_control/uplink_downlink_splitter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, uplink_downlink_splitter);


%include "gsm/misc_utils/bursts_printer.h"
GR_SWIG_BLOCK_MAGIC2(gsm, bursts_printer);
%include "gsm/misc_utils/burst_file_sink.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_file_sink);
%include "gsm/misc_utils/burst_file_source.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_file_source);
%include "gsm/misc_utils/collect_system_info.h"
GR_SWIG_BLOCK_MAGIC2(gsm, collect_system_info);
%include "gsm/misc_utils/extract_system_info.h"
GR_SWIG_BLOCK_MAGIC2(gsm, extract_system_info);
%include "gsm/misc_utils/extract_immediate_assignment.h"
GR_SWIG_BLOCK_MAGIC2(gsm, extract_immediate_assignment);
%include "gsm/misc_utils/controlled_rotator_cc.h"
GR_SWIG_BLOCK_MAGIC2(gsm, controlled_rotator_cc);
%include "gsm/misc_utils/message_printer.h"
GR_SWIG_BLOCK_MAGIC2(gsm, message_printer);
%include "gsm/misc_utils/tmsi_dumper.h"
GR_SWIG_BLOCK_MAGIC2(gsm, tmsi_dumper);
%include "gsm/misc_utils/message_file_sink.h"
GR_SWIG_BLOCK_MAGIC2(gsm, message_file_sink);
%include "gsm/misc_utils/message_file_source.h"
GR_SWIG_BLOCK_MAGIC2(gsm, message_file_source);
%include "gsm/misc_utils/msg_to_tag.h"
GR_SWIG_BLOCK_MAGIC2(gsm, msg_to_tag);
%include "gsm/misc_utils/controlled_fractional_resampler_cc.h"
GR_SWIG_BLOCK_MAGIC2(gsm, controlled_fractional_resampler_cc);
%include "gsm/misc_utils/extract_cmc.h"
GR_SWIG_BLOCK_MAGIC2(gsm, extract_cmc);
%include "gsm/misc_utils/extract_assignment_cmd.h"
GR_SWIG_BLOCK_MAGIC2(gsm, extract_assignment_cmd);
%include "gsm/trx/trx_burst_if.h"
GR_SWIG_BLOCK_MAGIC2(gsm, trx_burst_if);
%include "gsm/misc_utils/burst_to_fn_time.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_to_fn_time);

%include "gsm/qa_utils/burst_sink.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_sink);
%include "gsm/qa_utils/burst_source.h"
GR_SWIG_BLOCK_MAGIC2(gsm, burst_source);
%include "gsm/qa_utils/message_source.h"
GR_SWIG_BLOCK_MAGIC2(gsm, message_source);
%include "gsm/qa_utils/message_sink.h"
GR_SWIG_BLOCK_MAGIC2(gsm, message_sink);

%include "gsm/misc_utils/fn_time.h"

%include "gsm/transmitter/txtime_setter.h"
GR_SWIG_BLOCK_MAGIC2(gsm, txtime_setter);
%include "gsm/transmitter/preprocess_tx_burst.h"
GR_SWIG_BLOCK_MAGIC2(gsm, preprocess_tx_burst);
%include "gsm/transmitter/gen_test_ab.h"
GR_SWIG_BLOCK_MAGIC2(gsm, gen_test_ab);
