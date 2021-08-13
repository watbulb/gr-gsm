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
/* BINDTOOL_HEADER_FILE(receiver/clock_offset_control.h)                                        */
/* BINDTOOL_HEADER_FILE_HASH(b16817d011cdedc94bc142212ecd57d9)                     */
/***********************************************************************************/

#include <pybind11/complex.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;

#include <gsm/receiver/clock_offset_control.h>
// pydoc.h is automatically generated in the build directory
#include <clock_offset_control_pydoc.h>

void bind_clock_offset_control(py::module& m)
{

    using clock_offset_control    = ::gr::gsm::clock_offset_control;


    py::class_<clock_offset_control, gr::block, gr::basic_block,
        std::shared_ptr<clock_offset_control>>(m, "clock_offset_control", D(clock_offset_control))

        .def(py::init(&clock_offset_control::make),
           py::arg("fc"),
           py::arg("samp_rate"),
           py::arg("osr") = 4,
           D(clock_offset_control,make)
        )
        




        
        .def("set_fc",&clock_offset_control::set_fc,       
            py::arg("fc"),
            D(clock_offset_control,set_fc)
        )


        
        .def("set_samp_rate",&clock_offset_control::set_samp_rate,       
            py::arg("samp_rate"),
            D(clock_offset_control,set_samp_rate)
        )


        
        .def("set_osr",&clock_offset_control::set_osr,       
            py::arg("osr"),
            D(clock_offset_control,set_osr)
        )

        ;




}








