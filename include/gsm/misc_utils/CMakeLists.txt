# Copyright 2011,2012 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.

########################################################################
# Install public header files
########################################################################
install(
    FILES
    burst_file_sink.h
    burst_file_source.h
    burst_to_fn_time.h
    bursts_printer.h
    collect_system_info.h
    controlled_fractional_resampler_cc.h 
    controlled_rotator_cc.h
    extract_assignment_cmd.h
    extract_cmc.h
    extract_immediate_assignment.h
    extract_system_info.h
    fn_time.h
    message_file_sink.h
    message_file_source.h
    message_printer.h
    msg_to_tag.h
    time_spec.h
    tmsi_dumper.h
    udp_socket.h    
    DESTINATION include/gsm/misc_utils
)
