// license:BSD-3-Clause
// copyright-holders:Gaston90
/***************************************************************************

    hbmame.c

    Specific (per target) constants

****************************************************************************/

#include "emu.h"

#define APPNAME             "PSARCADE PLUS+"
#define APPNAME_LOWER       "PSArcade Plus+"
#define CONFIGNAME          "PSArcade Plus+"
#define COPYRIGHT           "Copyright Gaston90 developer of PSArcade Plus\nhttp://psarcadeplus.blogspot.com"
#define COPYRIGHT_INFO      "\nMAME portions are copyright the MAME team.\n" \
                            "HBMAME portions are copyright Robbbert."

const char * emulator_info::get_appname() { return APPNAME;}
const char * emulator_info::get_appname_lower() { return APPNAME_LOWER;}
const char * emulator_info::get_configname() { return CONFIGNAME;}
const char * emulator_info::get_copyright() { return COPYRIGHT;}
const char * emulator_info::get_copyright_info() { return COPYRIGHT_INFO;}
