/* 
 * This file is part of the Alliance CAD System
 * Copyright (C) Laboratoire LIP6 - Département ASIM
 * Universite Pierre et Marie Curie
 * 
 * Home page          : http://www-asim.lip6.fr/alliance/
 * E-mail             : mailto:alliance-users@asim.lip6.fr
 * 
 * This library is free software; you  can redistribute it and/or modify it
 * under the terms  of the GNU Library General Public  License as published
 * by the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 * 
 * Alliance VLSI  CAD System  is distributed  in the hope  that it  will be
 * useful, but WITHOUT  ANY WARRANTY; without even the  implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details.
 * 
 * You should have received a copy  of the GNU General Public License along
 * with the GNU C Library; see the  file COPYING. If not, write to the Free
 * Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

/* ###--------------------------------------------------------------### */
/* file		: beh_apdbeaux.c					*/
/* date		: Dec  2 1999						*/
/* version	: v111							*/
/* authors	: Pirouz BAZARGAN SABET					*/
/* content	: low-level function					*/
/* ###--------------------------------------------------------------### */

#include <stdio.h>
#include "mut.h"
#include "log.h"
#include "beh.h"

/* ###--------------------------------------------------------------### */
/* function	: beh_apdbeaux						*/
/* description	: append two lists of internal signals (BEAUX)		*/
/* called func.	: none							*/
/* ###--------------------------------------------------------------### */

struct beaux *beh_apdbeaux (s1_aux, s2_aux)

struct beaux *s1_aux;
struct beaux *s2_aux;

  {
  struct beaux *pt_aux;

  pt_aux = s2_aux;
  if (pt_aux != NULL)
    {
    while (pt_aux->NEXT != NULL)
      pt_aux = pt_aux->NEXT;
    pt_aux->NEXT = s1_aux;
    }
  else
    s2_aux = s1_aux;

  return (s2_aux);
  }
