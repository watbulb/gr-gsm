/*
 * Copyright 2021 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 */

/***********************************************************************************/
/* This file is automatically generated using bindtool and can be manually edited  */
/* The following lines can be configured to regenerate this file during cmake      */
/* If manual edits are made, the following tags should be modified accordingly.    */
/* BINDTOOL_GEN_AUTOMATIC(0)                                                       */
/* BINDTOOL_USE_PYGCCXML(0)                                                        */
/* BINDTOOL_HEADER_FILE(demapping/universal_ctrl_chans_demapper.h)                                        */
/* BINDTOOL_HEADER_FILE_HASH(234e623253c906bf7e3991295bf412e0)                     */
/***********************************************************************************/

#include <pybind11/complex.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;

#include <gsm/demapping/universal_ctrl_chans_demapper.h>
// pydoc.h is automatically generated in the build directory
#include <universal_ctrl_chans_demapper_pydoc.h>

void bind_universal_ctrl_chans_demapper(py::module& m)
{

    using universal_ctrl_chans_demapper    = ::gr::gsm::universal_ctrl_chans_demapper;


    py::class_<universal_ctrl_chans_demapper, gr::block, gr::basic_block,
        std::shared_ptr<universal_ctrl_chans_demapper>>(m, "universal_ctrl_chans_demapper", D(universal_ctrl_chans_demapper))

        .def(py::init(&universal_ctrl_chans_demapper::make),
           py::arg("timeslot_nr"),
           py::arg("downlink_starts_fn_mod51"),
           py::arg("downlink_channel_types"),
           py::arg("downlink_subslots"),
           py::arg("uplink_starts_fn_mod51") = std::vector<int>(),
           py::arg("uplink_channel_types") = std::vector<int>(),
           py::arg("uplink_subslots") = std::vector<int>(),
           D(universal_ctrl_chans_demapper,make)
        )
        



        ;




}








