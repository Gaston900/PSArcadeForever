// license:BSD-3-Clause
// copyright-holders:Robbbert

#include "emu.h"
#include "cpu/z80/z80.h"
#include "includes/puckman.h"
#include "sound/namco.h"
#include "speaker.h"


class jrpacman_state : public puckman_state
{
public:
	using puckman_state::puckman_state;

	void jrpacman(machine_config &config);
	void init_jrpacman();

private:

	void mem_map(address_map &map);
	void io_map(address_map &map);
};


/*************************************
 *
 *  Main CPU memory handlers
 *
 *************************************/

void jrpacman_state::mem_map(address_map &map) {
	map(0x0000,0x3fff).rom();
	map(0x4000,0x47ff).ram().w(FUNC(jrpacman_state::jrpacman_videoram_w)).share("videoram");
	map(0x4800,0x4fef).ram();
	map(0x4ff0,0x4fff).ram().share("spriteram");
	map(0x5000,0x503f).portr("IN0");
	map(0x5000,0x5007).w("latch1",FUNC(ls259_device::write_d0));
	map(0x5040,0x507f).r(FUNC(jrpacman_state::in1_r));
	map(0x5040,0x505f).w("namco",FUNC(namco_device::pacman_sound_w));
	map(0x5060,0x506f).writeonly().share("spriteram2");
	map(0x5070,0x5077).w("latch2",FUNC(ls259_device::write_d0));
	map(0x5080,0x50bf).portr("DSW");
	map(0x5080,0x5080).w(FUNC(jrpacman_state::jrpacman_scroll_w));
	map(0x50c0,0x50c0).w("watchdog",FUNC(watchdog_timer_device::reset_w));
	map(0x8000,0xdfff).rom();
// HBMAME extras
	//map(0x5004, 0x5005).w(FUNC(pacman_leds_w));
	map(0x5078,0x507f).nopw();
	map(0xfffc,0xffff).ram();  /* for jrfast and fastjr */
}


void jrpacman_state::io_map(address_map &map) {
	map.global_mask(0xff);
	map(0,0).w(FUNC(jrpacman_state::pacman_interrupt_vector_w));
}



/*************************************
 *
 *  Port definitions
 *
 *************************************/

static INPUT_PORTS_START( jrpacman )
	PORT_START("IN0")
	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_4WAY
	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_4WAY
	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_4WAY
	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_4WAY
	/* Press this to instantly finish the level - HBMAME */
	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_OTHER ) PORT_NAME("Finish Level (Cheat)") PORT_CODE(KEYCODE_8)
	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_COIN1 )
	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_COIN2 )
	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_COIN3 )

	PORT_START("IN1")
	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_UP ) PORT_4WAY PORT_COCKTAIL
	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT ) PORT_4WAY PORT_COCKTAIL
	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_4WAY PORT_COCKTAIL
	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN ) PORT_4WAY PORT_COCKTAIL
	PORT_SERVICE( 0x10, IP_ACTIVE_LOW )
	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_START1 )
	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_START2 )
	PORT_DIPNAME( 0x80, 0x80, DEF_STR( Cabinet ) )
	PORT_DIPSETTING(    0x80, DEF_STR( Upright ) )
	PORT_DIPSETTING(    0x00, DEF_STR( Cocktail ) )

	PORT_START("DSW")
	PORT_DIPNAME( 0x03, 0x01, DEF_STR( Coinage ) )          PORT_DIPLOCATION("SW1:1,2")
	PORT_DIPSETTING(    0x03, DEF_STR( 2C_1C ) )
	PORT_DIPSETTING(    0x01, DEF_STR( 1C_1C ) )
	PORT_DIPSETTING(    0x02, DEF_STR( 1C_2C ) )
	PORT_DIPSETTING(    0x00, DEF_STR( Free_Play ) )
	PORT_DIPNAME( 0x0c, 0x08, DEF_STR( Lives ) )            PORT_DIPLOCATION("SW1:3,4")
	PORT_DIPSETTING(    0x00, "1" )
	PORT_DIPSETTING(    0x04, "2" )
	PORT_DIPSETTING(    0x08, "3" )
	PORT_DIPSETTING(    0x0c, "5" )
	PORT_DIPNAME( 0x30, 0x00, DEF_STR( Bonus_Life ) )       PORT_DIPLOCATION("SW1:5,6")
	PORT_DIPSETTING(    0x00, "10000" )
	PORT_DIPSETTING(    0x10, "15000" )
	PORT_DIPSETTING(    0x20, "20000" )
	PORT_DIPSETTING(    0x30, "30000" )
	PORT_DIPNAME( 0x40, 0x40, DEF_STR( Difficulty ) )       PORT_DIPLOCATION("SW1:7")
	PORT_DIPSETTING(    0x40, DEF_STR( Normal ) )
	PORT_DIPSETTING(    0x00, DEF_STR( Hard ) )
	PORT_DIPNAME( 0x80, 0x80, DEF_STR( Unknown ) )          PORT_DIPLOCATION("SW1:8")
	PORT_DIPSETTING(    0x80, DEF_STR( Off ) )
	PORT_DIPSETTING(    0x00, DEF_STR( On ) )

// HBMAME extras
	PORT_START ("FAKE")
	/* This fake input port is used to get the status of the fire button */
	/* and activate the speedup cheat. */
	PORT_BIT( 0x01, IP_ACTIVE_HIGH, IPT_BUTTON1 ) PORT_NAME( "Speed (Cheat)" ) PORT_CHANGED_MEMBER(DEVICE_SELF, jrpacman_state, pacman_fake, 0)
	PORT_DIPNAME( 0x06, 0x02, "Speed Cheat" )
	PORT_DIPSETTING(    0x00, "Disabled" )
	PORT_DIPSETTING(    0x02, "Enabled with Button" )
	PORT_DIPSETTING(    0x04, "Enabled Always" )

//  PORT_START ("CONFIG")
//  PORT_CONFNAME( 0x01, 0x01, "Level" )
//  PORT_CONFSETTING(    0x00, DEF_STR( Off ) )
//  PORT_CONFSETTING(    0x01, DEF_STR( On ) )
INPUT_PORTS_END



/*************************************
 *
 *  Graphics layouts
 *
 *************************************/

static const gfx_layout tilelayout =
{
	8,8,
	RGN_FRAC(1,2),
	2,
	{ 0, 4 },
	{ STEP4(8*8,1), STEP4(0*8,1) },
	{ STEP8(0*8,8) },
	16*8
};


static const gfx_layout spritelayout =
{
	16,16,
	RGN_FRAC(1,2),
	2,
	{ 0, 4 },
	{ STEP4(8*8,1), STEP4(16*8,1), STEP4(24*8,1), STEP4(0*8,1) },
	{ STEP8(0*8,8), STEP8(32*8,8) },
	64*8
};


static GFXDECODE_START( gfx_jrpacman )
	GFXDECODE_ENTRY( "gfx1", 0x0000, tilelayout,   0, 128 )
	GFXDECODE_ENTRY( "gfx1", 0x2000, spritelayout, 0, 128 )
GFXDECODE_END



/*************************************
 *
 *  Machine drivers
 *
 *************************************/

void jrpacman_state::jrpacman(machine_config &config)
{
	/* basic machine hardware */
	Z80(config, m_maincpu, 18432000/6);    /* 3.072 MHz */
	m_maincpu->set_addrmap(AS_PROGRAM, &jrpacman_state::mem_map);
	m_maincpu->set_addrmap(AS_IO, &jrpacman_state::io_map);
	m_maincpu->set_vblank_int("screen", FUNC(jrpacman_state::vblank_irq));

	ls259_device &latch1(LS259(config, "latch1")); // 5P
	latch1.q_out_cb<0>().set(FUNC(jrpacman_state::irq_mask_w));
	latch1.q_out_cb<1>().set("namco", FUNC(namco_device::sound_enable_w));
	latch1.q_out_cb<3>().set(FUNC(jrpacman_state::flipscreen_w));
	latch1.q_out_cb<7>().set(FUNC(jrpacman_state::coin_counter_w));

	ls259_device &latch2(LS259(config, "latch2")); // 1H
	latch2.q_out_cb<0>().set(FUNC(jrpacman_state::pengo_palettebank_w));
	latch2.q_out_cb<1>().set(FUNC(jrpacman_state::pengo_colortablebank_w));
	latch2.q_out_cb<3>().set(FUNC(jrpacman_state::jrpacman_bgpriority_w));
	latch2.q_out_cb<4>().set(FUNC(jrpacman_state::jrpacman_charbank_w));
	latch2.q_out_cb<5>().set(FUNC(jrpacman_state::jrpacman_spritebank_w));

	WATCHDOG_TIMER(config, m_watchdog);

	/* video hardware */
	screen_device &screen(SCREEN(config, "screen", SCREEN_TYPE_RASTER));
	screen.set_refresh_hz(60.606060);
	screen.set_vblank_time(ATTOSECONDS_IN_USEC(2500)); /* not accurate */
	screen.set_size(36*8, 28*8);
	screen.set_visarea(0*8, 36*8-1, 0*8, 28*8-1);
	screen.set_screen_update(FUNC(jrpacman_state::screen_update_pacman));
	screen.set_palette(m_palette);

	GFXDECODE(config, m_gfxdecode, m_palette, gfx_jrpacman);
	PALETTE(config, m_palette, FUNC(jrpacman_state::pacman_palette), 128 * 4, 32);

	MCFG_VIDEO_START_OVERRIDE(jrpacman_state,jrpacman)

	/* sound hardware */
	SPEAKER(config, "mono").front_center();

	NAMCO(config, m_namco_sound, 3072000/32);
	m_namco_sound->set_voices(3);
	m_namco_sound->add_route(ALL_OUTPUTS, "mono", 0.50);
}


/*************************************
 *
 *  ROM definitions
 *
 *************************************/

ROM_START( jrpacman )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrp2c.2c",                    0x0000, 0x2000, CRC(0527ff9b) SHA1(37fe3176b0d125b7d629e108e7ebdc1196e4a132) ) /* tiles (bank 1 & 2) */
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) ) /* sprites (bank 1 & 2) */

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrpacmanf )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "fast_jr.8d",                  0x0000, 0x2000, CRC(461e8b57) SHA1(42e25d384e653efb95a97bd64f55a8c3b3f71239) ) // only 1 byte difference
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrp2c.2c",                    0x0000, 0x2000, CRC(0527ff9b) SHA1(37fe3176b0d125b7d629e108e7ebdc1196e4a132) ) /* tiles (bank 1 & 2) */
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) ) /* sprites (bank 1 & 2) */

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END



/*************************************
 *
 *  Driver initialization
 *
 *************************************/

void jrpacman_state::init_jrpacman()
{
	/* The encryption PALs garble bits 0, 2 and 7 of the ROMs. The encryption */
	/* scheme is complex (basically it's a state machine) and can only be */
	/* faithfully emulated at run time. To avoid the performance hit that would */
	/* cause, here we have a table of the values which must be XORed with */
	/* each memory region to obtain the decrypted bytes. */
	/* Decryption table provided by David Caldwell (david@indigita.com) */
	/* For an accurate reproduction of the encryption, see jrcrypt.c */
	static const struct {
		int count;
		int value;
	} table[] =
	{
		{ 0x00C1, 0x00 },{ 0x0002, 0x80 },{ 0x0004, 0x00 },{ 0x0006, 0x80 },
		{ 0x0003, 0x00 },{ 0x0002, 0x80 },{ 0x0009, 0x00 },{ 0x0004, 0x80 },
		{ 0x9968, 0x00 },{ 0x0001, 0x80 },{ 0x0002, 0x00 },{ 0x0001, 0x80 },
		{ 0x0009, 0x00 },{ 0x0002, 0x80 },{ 0x0009, 0x00 },{ 0x0001, 0x80 },
		{ 0x00AF, 0x00 },{ 0x000E, 0x04 },{ 0x0002, 0x00 },{ 0x0004, 0x04 },
		{ 0x001E, 0x00 },{ 0x0001, 0x80 },{ 0x0002, 0x00 },{ 0x0001, 0x80 },
		{ 0x0002, 0x00 },{ 0x0002, 0x80 },{ 0x0009, 0x00 },{ 0x0002, 0x80 },
		{ 0x0009, 0x00 },{ 0x0002, 0x80 },{ 0x0083, 0x00 },{ 0x0001, 0x04 },
		{ 0x0001, 0x01 },{ 0x0001, 0x00 },{ 0x0002, 0x05 },{ 0x0001, 0x00 },
		{ 0x0003, 0x04 },{ 0x0003, 0x01 },{ 0x0002, 0x00 },{ 0x0001, 0x04 },
		{ 0x0003, 0x01 },{ 0x0003, 0x00 },{ 0x0003, 0x04 },{ 0x0001, 0x01 },
		{ 0x002E, 0x00 },{ 0x0078, 0x01 },{ 0x0001, 0x04 },{ 0x0001, 0x05 },
		{ 0x0001, 0x00 },{ 0x0001, 0x01 },{ 0x0001, 0x04 },{ 0x0002, 0x00 },
		{ 0x0001, 0x01 },{ 0x0001, 0x04 },{ 0x0002, 0x00 },{ 0x0001, 0x01 },
		{ 0x0001, 0x04 },{ 0x0002, 0x00 },{ 0x0001, 0x01 },{ 0x0001, 0x04 },
		{ 0x0001, 0x05 },{ 0x0001, 0x00 },{ 0x0001, 0x01 },{ 0x0001, 0x04 },
		{ 0x0002, 0x00 },{ 0x0001, 0x01 },{ 0x0001, 0x04 },{ 0x0002, 0x00 },
		{ 0x0001, 0x01 },{ 0x0001, 0x04 },{ 0x0001, 0x05 },{ 0x0001, 0x00 },
		{ 0x01B0, 0x01 },{ 0x0001, 0x00 },{ 0x0002, 0x01 },{ 0x00AD, 0x00 },
		{ 0x0031, 0x01 },{ 0x005C, 0x00 },{ 0x0005, 0x01 },{ 0x604E, 0x00 },
		{ 0,0 }
	};

	uint8_t *RAM = machine().root_device().memregion("maincpu")->base();
	int i, j, A;

	for (i = A = 0; table[i].count; i++)
		for (j = 0; j < table[i].count; j++)
			RAM[A++] ^= table[i].value;
}



/*************************************
 *
 *  Game drivers
 *
 *************************************/

GAME( 1983, jrpacman,  0,        jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man (11/9/83)", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrpacmanf, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "hack", "Jr. Pac-Man (speedup hack)", MACHINE_SUPPORTS_SAVE )


// HBMAME roms

ROM_START( jr1000 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr1000.2c",                   0x0000, 0x2000, CRC(8f93c273) SHA1(e672e0fdc8956967783110c0f36cfe0fd77cca90) )
	ROM_LOAD( "jr1000.2e",                   0x2000, 0x2000, CRC(eac97aec) SHA1(af5b88e1ce9d14851ae2db4e90cb6adb8df949c7) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW(  "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr1000_2 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr1000.2c",                   0x0000, 0x2000, CRC(8f93c273) SHA1(e672e0fdc8956967783110c0f36cfe0fd77cca90) )
	ROM_LOAD( "jr1000_2.2e",                 0x2000, 0x2000, CRC(4f2010d4) SHA1(0835375487ccdb2ae77dd9e62229d0b6aeb9142a) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2000 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2000.2c",                   0x0000, 0x2000, CRC(2784936b) SHA1(31ceeaa0a6c2ca042d829b0baa7b5455c3942790) )
	ROM_LOAD( "jr2000.2e",                   0x2000, 0x2000, CRC(a26f1a49) SHA1(86d51269db2f7d8f6a7f12bd2bc1e2ab82f8be83) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2001 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2001.2c",                   0x0000, 0x2000, CRC(9171f08f) SHA1(d2af715feb9b5266edc24a0ea9eaecc456eb4fac) )
	ROM_LOAD( "jr2001.2e",                   0x2000, 0x2000, CRC(3164b853) SHA1(a3e23a902a9548a7025248a0e63fcbd4374de554) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2001p)
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2001p.2c",                  0x0000, 0x2000, CRC(d56cb9c5) SHA1(e598a28c0a4f1cdce2312a8dc418cfa441fc5fe8) )
	ROM_LOAD( "jr2001p.2e",                  0x2000, 0x2000, CRC(1b534804) SHA1(b93764b6d6aacdcb4a50fffec58cab7778ada3ab) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2002 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2002.2c",                   0x0000, 0x2000, CRC(e254096c) SHA1(f56127a6dcf8a6a5c916f33a29d761d36d55e543) )
	ROM_LOAD( "jr2002.2e",                   0x2000, 0x2000, CRC(e3240bec) SHA1(255669c33f88e39a5c5f041a800f14ec29d24f38) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2002p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2002p.2c",                  0x0000, 0x2000, CRC(ad1d0360) SHA1(d401a4575899c64c35977c1c49dfe9ad38a804e7) )
	ROM_LOAD( "jr2002p.2e",                  0x2000, 0x2000, CRC(160321a1) SHA1(8e4ed3f8f5270fec8a00db92a6aebc9951074f33) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2003 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2003.2c",                   0x0000, 0x2000, CRC(0ffe21f5) SHA1(3a5503f46d4813ff77aaa633122346228bba659b) )
	ROM_LOAD( "jr2003.2e",                   0x2000, 0x2000, CRC(1fd35d7a) SHA1(b04e25c1fd0a148c4caae8ccb07fd2e3b4120325) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2003p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2003p.2c",                  0x0000, 0x2000, CRC(b24e9383) SHA1(ba82f2e58e7ba1b64cf52c5da3bb8bf3fac7cea3) )
	ROM_LOAD( "jr2003p.2e",                  0x2000, 0x2000, CRC(65ba2fb7) SHA1(3a0ee8798c72d13300712a2537b3a44a13f9338f) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2004 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2004.2c",                   0x0000, 0x2000, CRC(3c20cf84) SHA1(8d34d50839b3f62bfbe9ee4ed633422be6459e73) )
	ROM_LOAD( "jr2004.2e",                   0x2000, 0x2000, CRC(f08575ab) SHA1(c5935f88fac7cc9f58e56d857e89c232582c1882) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2004p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2004p.2c",                  0x0000, 0x2000, CRC(6e1db602) SHA1(27bf6776d044c602cf9da88cfd19e23d4771759d) )
	ROM_LOAD( "jr2004p.2e",                  0x2000, 0x2000, CRC(ab075ebe) SHA1(4cafb1019acf49111fdc5e695d95610219a0573d) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2005 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2005.2c",                   0x0000, 0x2000, CRC(42eb8848) SHA1(79ee37c77ec8374c568699c4161cd46ef8631a17) )
	ROM_LOAD( "jr2005.2e",                   0x2000, 0x2000, CRC(502d286c) SHA1(7fcf21d4037f7ffaf68be4c9089b3b3aa0ad59d3) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr2005p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr2005p.2c",                  0x0000, 0x2000, CRC(4d03cd0a) SHA1(eb3c5ed5d0a5d4d67baae2ad629ffbfadbe2bea3) )
	ROM_LOAD( "jr2005p.2e",                  0x2000, 0x2000, CRC(51cbce81) SHA1(37129228e8e92dd2a500ac2653364506129b7a2e) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr3000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr1000.2c",                   0x0000, 0x2000, CRC(8f93c273) SHA1(e672e0fdc8956967783110c0f36cfe0fd77cca90) )
	ROM_LOAD( "jr3000p.2e",                  0x2000, 0x2000, CRC(0a8f7b5c) SHA1(2182b24330021faa447944e51bebc5159b2b4f0b) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr4000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr4000p.2c",                  0x0000, 0x2000, CRC(c5f05f11) SHA1(9fdafd46adebb709b2b897b0b53b05c4392239b2) )
	ROM_LOAD( "jr4000p.2e",                  0x2000, 0x2000, CRC(944add80) SHA1(c391a2bb0d655da87d13581b16d09fe896106efd) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr5000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr5000p.2c",                  0x0000, 0x2000, CRC(086979e1) SHA1(6c7fa4118fbb90417d3397c9f1f5eee14cb938de) )
	ROM_LOAD( "jr5000p.2e",                  0x2000, 0x2000, CRC(a0fce81b) SHA1(8704a18e43c5134fc758df3a443c3f0e6990c417) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr6000 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr6000.2c",                   0x0000, 0x2000, CRC(44bd3c24) SHA1(d0321f314f604bb268fd62fde2e6a536f2c735f2) )
	ROM_LOAD( "jr6000.2e",                   0x2000, 0x2000, CRC(83c8ff32) SHA1(ceae512347ca4c4aa1e88623894c3279281c0639) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr7000 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr7000.2c",                   0x0000, 0x2000, CRC(3dca34d5) SHA1(02b8ac91a683fa9688e5897ac206f344fbd71767) )
	ROM_LOAD( "jr7000.2e",                   0x2000, 0x2000, CRC(202f2f37) SHA1(337f7e7d123f914833115610a763fe7dc55c3d24) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr7000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr7000p.2c",                  0x0000, 0x2000, CRC(3b3e60fe) SHA1(26ff62f8aa655fa927694f791ae8a361dc438f3c) )
	ROM_LOAD( "jr7000p.2e",                  0x2000, 0x2000, CRC(89b17c92) SHA1(2fc39e05fc35a69a6d224b6024f978b7c15bfb80) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr8000 )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr8000.2c",                   0x0000, 0x2000, CRC(9653f563) SHA1(0a71d70645a8cd2e407a638e934deda43b41e56c) )
	ROM_LOAD( "jr8000.2e",                   0x2000, 0x2000, CRC(0b1791f8) SHA1(1d6d494d8acfd57301fc01a86a27df2b7e697f1b) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr8000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr8000p.2c",                  0x0000, 0x2000, CRC(913a0bea) SHA1(005e3908956169648464dfdd6ae5e2b67ba2233f) )
	ROM_LOAD( "jr8000p.2e",                  0x2000, 0x2000, CRC(aed01226) SHA1(ae8022e36c7f7c083c1a697e54c7587044fcb491) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jr9000p )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jr9000p.2c",                  0x0000, 0x2000, CRC(b2653891) SHA1(e96ab61f58bb9b47751e7e9397f2d44ff35897e6) )
	ROM_LOAD( "jr9000p.2e",                  0x2000, 0x2000, CRC(87f45bd7) SHA1(7a45e0d5479de3d867518354f108e62f7e4d9877) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrcheat )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "cheat-8d.bin",          0x0000, 0x2000, CRC(8b5b8d72) SHA1(65af9245015480751b3714980caed81e421d102c) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrp2c.2c",                    0x0000, 0x2000, CRC(0527ff9b) SHA1(37fe3176b0d125b7d629e108e7ebdc1196e4a132) )
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrdeluxe )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrdeluxe.2c",                 0x0000, 0x2000, CRC(90517001) SHA1(cfb4a43bf9ef732a940b027de383e7a6ec0ec671) )
	ROM_LOAD( "jrdeluxe.2e",                 0x2000, 0x2000, CRC(ef042965) SHA1(8497d2c7fdae6b1903df421ae1358a3b41e78599) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

/* The first rom (jppac1.bin) contains hacked jrpacman in first half, and unhacked in 2nd half.
   Therefore the 2nd half is not needed. The only byte changed in the hack is the speedup byte at 0x180d */

ROM_START( jrfast )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jppac1.bin",                  0x0000, 0x2000, CRC(f3bcb240) SHA1(b1fbf28666d5f159daf8f6156e3e31c932bb4081) )
	ROM_IGNORE (0x2000)
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrp2c.2c",                    0x0000, 0x2000, CRC(0527ff9b) SHA1(37fe3176b0d125b7d629e108e7ebdc1196e4a132) )
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrhearts )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrhearts.2c",                 0x0000, 0x2000, CRC(40cafa63) SHA1(c68a7eefabe4d8b008533abe3cf4b1a6512cd25e) )
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrpacad )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrpacad.2c",                  0x0000, 0x2000, CRC(1ecf940c) SHA1(035b1d44da3a010f8c158211d07f5c6e7d16b63d) )
	ROM_LOAD( "jrvectr.2e",                  0x2000, 0x2000, CRC(c0b35564) SHA1(c0c6de032023c301608c584489d564a61256345b) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrpacjr)
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrpacjr.2c",                  0x0000, 0x2000, CRC(54e6c297) SHA1(fa3c5240ca8a9e0c520864189c8b18105af629a7) )
	ROM_LOAD( "jrpacjr.2e",                  0x2000, 0x2000, CRC(5b34dd98) SHA1(342393af97e13fe32b684e467bf48019f7c0c1c3) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrpacjrp )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrpacjr.2c",                  0x0000, 0x2000, CRC(54e6c297) SHA1(fa3c5240ca8a9e0c520864189c8b18105af629a7) )
	ROM_LOAD( "jrpacjrp.2e",                 0x2000, 0x2000, CRC(1ee279ef) SHA1(ec26313fdf82ff7e4ff0acef28e2ce21a0539c1f) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrpacp )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrpacp.2c",                   0x0000, 0x2000, CRC(4fe4238e) SHA1(1175b3f9e3a9120a2149b124259097e8c574a76d) )
	ROM_LOAD( "jrpacp.2e",                   0x2000, 0x2000, CRC(5993c0fa) SHA1(d5eee63b06972b09668c3fd66e737668439e26b7) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrspeed )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "speed-8d.bin",          0x0000, 0x2000, CRC(461e8b57) SHA1(42e25d384e653efb95a97bd64f55a8c3b3f71239) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrp2c.2c",                    0x0000, 0x2000, CRC(0527ff9b) SHA1(37fe3176b0d125b7d629e108e7ebdc1196e4a132) )
	ROM_LOAD( "jrp2e.2e",                    0x2000, 0x2000, CRC(73477193) SHA1(f00a488958ea0438642d345693787bdf771219ad) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jrvectr )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jrp8e.8e",                    0x2000, 0x2000, CRC(ec889e94) SHA1(8294e9e79f8fd19a419431fa690e6ac4a1302f58) )
	ROM_LOAD( "jrp8h.8h",                    0x8000, 0x2000, CRC(35f1fc6e) SHA1(b84b34560b9aae18b24274712b052283faa01730) )
	ROM_LOAD( "jrp8j.8j",                    0xa000, 0x2000, CRC(9737099e) SHA1(07d912a61824323c8fc1b8bd0da89172d4f70b91) )
	ROM_LOAD( "jrp8k.8k",                    0xc000, 0x2000, CRC(5252dd97) SHA1(18bd4d5381656120e4242811006c20776774de4d) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jrvectr.2c",                  0x0000, 0x2000, CRC(4876ad83) SHA1(6ab405a622fe93bcea627635cb266712a4174ce5) )
	ROM_LOAD( "jrvectr.2e",                  0x2000, 0x2000, CRC(c0b35564) SHA1(c0c6de032023c301608c584489d564a61256345b) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END

ROM_START( jryumyum )
	ROM_REGION( 0x10000, "maincpu", 0 )
	ROM_LOAD( "jrp8d.8d",                    0x0000, 0x2000, CRC(e3fa972e) SHA1(5ea34621213c649ca2848ab31aab2cbe751723d4) )
	ROM_LOAD( "jryumyum.8e",                 0x2000, 0x2000, CRC(934f1d34) SHA1(1c502edea62ee7fca11d54cb8ff0ea6263828056) )
	ROM_LOAD( "jryumyum.8h",                 0x8000, 0x2000, CRC(d59cb636) SHA1(f2e9c0d4c62706a9d7ec68633ccb0edadf5e5439) )
	ROM_LOAD( "jryumyum.8j",                 0xa000, 0x2000, CRC(010fb8dd) SHA1(4c1193d3a1abde76f8c28245a451873162ec6848) )
	ROM_LOAD( "jryumyum.8k",                 0xc000, 0x2000, CRC(191a176c) SHA1(ae5e3c4bd788dd56e0da4130388ee841002cab6c) )

	ROM_REGION( 0x4000, "gfx1", 0 )
	ROM_LOAD( "jryumyum.2c",                 0x0000, 0x2000, CRC(f057d596) SHA1(66cbe2720ecc456e9cef5422cf060bd507967fc2) )
	ROM_LOAD( "jryumyum.2e",                 0x2000, 0x2000, CRC(e851bf29) SHA1(d31fd0bb3b0614a9750f07a55e93b94d16643899) )

	ROM_REGION( 0x0120, "proms", 0 )
	ROM_LOAD_NIB_LOW ( "a290-27axv-bxhd.9e", 0x0000, 0x0100, CRC(029d35c4) SHA1(d9aa2dc442e9ac36cf3c346b9fb1aa745eaf3cb8) )
	ROM_LOAD_NIB_HIGH( "a290-27axv-cxhd.9f", 0x0000, 0x0100, CRC(eee34a79) SHA1(7561f8ccab2af85c111af6a02af6986eb67503e5) )
	ROM_LOAD( "a290-27axv-axhd.9p",          0x0020, 0x0100, CRC(9f6ea9d8) SHA1(62cf15513934d34641433c891a7f73bef82e2fb1) )

	ROM_REGION( 0x0200, "namco", 0 )
	ROM_LOAD( "a290-27axv-dxhd.7p",          0x0000, 0x0100, CRC(a9cc86bf) SHA1(bbcec0570aeceb582ff8238a4bc8546a23430081) )
	ROM_LOAD( "a290-27axv-exhd.5s",          0x0100, 0x0100, CRC(77245b66) SHA1(0c4d0bee858b97632411c440bea6948a74759746) )
ROM_END



GAME( 2000, jr1000,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 1000", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jr1000_2, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man 1000 (Alt)", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2000,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2000", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2001,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2001", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2001p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2001 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2002,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2002", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2002p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2002 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2003,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2003", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2003p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2003 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2004,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2004", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2004p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2004 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2005,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2005", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr2005p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 2005 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr3000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 3000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr4000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 4000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr5000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 5000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr6000,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 6000", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr7000,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 7000", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr7000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 7000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr8000,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 8000", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr8000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 8000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jr9000p,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man 9000 Plus", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrcheat,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man Cheat [c]", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jrdeluxe, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man Deluxe", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrfast,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man [f]", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jrhearts, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man Hearts", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrpacad,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man After Dark", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jrpacjr,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man Junior", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jrpacjrp, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man Junior Plus", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jrpacp,   jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Blue Justice", "Jr. Pac-Man Plus", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrspeed,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man Speed [f]", MACHINE_SUPPORTS_SAVE )
GAME( 1983, jrvectr,  jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Bally Midway", "Jr. Pac-Man Vector", MACHINE_SUPPORTS_SAVE )
GAME( 2000, jryumyum, jrpacman, jrpacman, jrpacman, jrpacman_state, init_jrpacman, ROT90, "Tim Appleton", "Jr. Pac-Man Vs YumYum + Friends", MACHINE_SUPPORTS_SAVE )

