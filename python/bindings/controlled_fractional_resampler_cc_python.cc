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
/* BINDTOOL_HEADER_FILE(misc_utils/controlled_fractional_resampler_cc.h)                                        */
/* BINDTOOL_HEADER_FILE_HASH(af348948eef5f75d783c3db236e15ca2)                     */
/***********************************************************************************/

#include <pybind11/complex.h>
#include <pybind11/pybind11.h>
#include <pybind11/stl.h>

namespace py = pybind11;

#include <gsm/misc_utils/controlled_fractional_resampler_cc.h>
// pydoc.h is automatically generated in the build directory
#include <controlled_fractional_resampler_cc_pydoc.h>

void bind_controlled_fractional_resampler_cc(py::module& m)
{

    using controlled_fractional_resampler_cc    = ::gr::gsm::controlled_fractional_resampler_cc;


    py::class_<controlled_fractional_resampler_cc, gr::block, gr::basic_block,
        std::shared_ptr<controlled_fractional_resampler_cc>>(m, "controlled_fractional_resampler_cc", D(controlled_fractional_resampler_cc))

        .def(py::init(&controlled_fractional_resampler_cc::make),
           py::arg("phase_shift"),
           py::arg("resamp_ratio"),
           D(controlled_fractional_resampler_cc,make)
        )
        




        
        .def("mu",&controlled_fractional_resampler_cc::mu,       
            D(controlled_fractional_resampler_cc,mu)
        )


        
        .def("resamp_ratio",&controlled_fractional_resampler_cc::resamp_ratio,       
            D(controlled_fractional_resampler_cc,resamp_ratio)
        )


        
        .def("set_mu",&controlled_fractional_resampler_cc::set_mu,       
            py::arg("mu"),
            D(controlled_fractional_resampler_cc,set_mu)
        )


        
        .def("set_resamp_ratio",&controlled_fractional_resampler_cc::set_resamp_ratio,       
            py::arg("resamp_ratio"),
            D(controlled_fractional_resampler_cc,set_resamp_ratio)
        )

        ;




}








