/* -*- c++ -*- */
/*
 * @file
 * @author (C) 2018 by Andrew Artyushok <loony.developer@gmail.com>
 * @author (C) 2018 by Vasil Velichkov <vvvelichkov@gmail.com>
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


#ifndef INCLUDED_GSM_TCH_H_CHANS_DEMAPPER_H
#define INCLUDED_GSM_TCH_H_CHANS_DEMAPPER_H

#include <gsm/api.h>
#include <gnuradio/block.h>

namespace gr {
  namespace gsm {

    /*!
     * \brief <+description of block+>
     * \ingroup gsm
     *
     */
    class GSM_API tch_h_chans_demapper : virtual public gr::block
    {
     public:
      typedef std::shared_ptr<tch_h_chans_demapper> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of gsm::tch_h_chans_demapper.
       *
       * To avoid accidental use of raw pointers, gsm::tch_h_chans_demapper's
       * constructor is in a private implementation
       * class. gsm::tch_h_chans_demapper::make is the public interface for
       * creating new instances.
       */
      static sptr make(unsigned int timeslot_nr, unsigned int tch_h_channel);
    };

  } // namespace gsm
} // namespace gr

#endif /* INCLUDED_GSM_TCH_H_CHANS_DEMAPPER_H */

