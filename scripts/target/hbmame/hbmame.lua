-- Proyecto Shadows Arcade Plus+
-- copyright:Gaston90

---------------------------------------------------------------------------
--
--   PSARCADEPLUS+ target makefile
--
---------------------------------------------------------------------------

dofile("mess.lua")
dofile("arcade.lua")

--------------------------------------------------
-- specify available CPU cores
---------------------------------------------------

CPUS["ADSP21XX"] = true
CPUS["ADSP21062"] = true -- model2
CPUS["ARM"] = true
CPUS["ARM7"] = true
CPUS["CCPU"] = true
CPUS["DSP16A"] = true -- HBMAME
CPUS["E1"] = true -- vamphalf
CPUS["ES5510"] = true
CPUS["FR"] = true
CPUS["G65816"] = true -- snesb
CPUS["H8"] = true -- seta2
CPUS["H6280"] = true
CPUS["HD6309"] = true
CPUS["I8085"] = true
CPUS["I8089"] = true
CPUS["I86"] = true
CPUS["I960"] = true -- model2
CPUS["KC80"] = true -- ddenlovr
CPUS["M37710"] = true -- namcona1
CPUS["M6502"] = true
CPUS["M6800"] = true
CPUS["M6805"] = true
CPUS["M6809"] = true
CPUS["M680X0"] = true
CPUS["MB88XX"] = true
CPUS["MB86233"] = true -- model2
CPUS["MB86235"] = true -- model2
CPUS["MCS48"] = true
CPUS["MCS51"] = true
CPUS["MN10200"] = true
CPUS["NEC"] = true
CPUS["PSX"] = true
CPUS["S2650"] = true
CPUS["SCUDSP"] = true -- stv
CPUS["SH"] = true
CPUS["SM510"] = true
CPUS["SPC700"] = true -- snesb
CPUS["SSP1601"] = true
CPUS["TLCS90"] = true
CPUS["TMS32010"] = true
CPUS["TMS32031"] = true
CPUS["TMS340X0"] = true
CPUS["TMS57002"] = true
CPUS["PIC16C5X"] = true
CPUS["UPD7725"] = true  -- segas32
CPUS["UPD7810"] = true
CPUS["V60"] = true  -- segas32
CPUS["V810"] = true
CPUS["Z180"] = true
CPUS["Z80"] = true
CPUS["Z8000"] = true  -- polepos

--------------------------------------------------
-- specify available sound cores
--------------------------------------------------

SOUNDS["ASTROCADE"] = true
SOUNDS["AY8910"] = true
SOUNDS["BEEP"] = true
SOUNDS["BSMT2000"] = true -- deco32
SOUNDS["C140"] = true  -- namcona1
SOUNDS["C6280"] = true
SOUNDS["CDDA"] = true
SOUNDS["DAC"] = true
SOUNDS["DMADAC"] = true
SOUNDS["DIGITALKER"] = true
SOUNDS["DISCRETE"] = true
SOUNDS["ES5505"] = true
SOUNDS["ESQPUMP"] = true
SOUNDS["HC55516"] = true
SOUNDS["I5000_SND"] = true
SOUNDS["ICS2115"] = true
SOUNDS["IREMGA20"] = true -- m92
SOUNDS["K005289"] = true
SOUNDS["K007232"] = true
SOUNDS["K051649"] = true
SOUNDS["K053260"] = true
SOUNDS["K054539"] = true
SOUNDS["K056800"] = true -- mystwarr
SOUNDS["LC7535"] = true -- deco32
SOUNDS["MPEG_AUDIO"] = true -- model2
SOUNDS["MSM5205"] = true
SOUNDS["MSM5232"] = true -- flstory
SOUNDS["MULTIPCM"] = true -- model2
SOUNDS["NAMCO_15XX"] = true
SOUNDS["NAMCO_52XX"] = true
SOUNDS["NAMCO_63701X"] = true
SOUNDS["NES_APU"] = true
SOUNDS["OKIM6295"] = true
SOUNDS["OKIM9810"] = true -- seta2
SOUNDS["POKEY"] = true
SOUNDS["QS1000"] = true -- vamphalf
SOUNDS["QSOUND"] = true
SOUNDS["RF5C68"] = true
SOUNDS["SAMPLES"] = true
SOUNDS["SCSP"] = true -- model2
SOUNDS["SEGAPCM"] = true
SOUNDS["SN76477"] = true
SOUNDS["SN76496"] = true
SOUNDS["SP0250"] = true
SOUNDS["SPEAKER"] = true
SOUNDS["SPU"] = true -- zn
SOUNDS["ST0016"] = true
SOUNDS["S_DSP"] = true -- snes
SOUNDS["TA7630"] = true -- flstory
SOUNDS["TC8830F"] = true -- timeplt
SOUNDS["TMS36XX"] = true
SOUNDS["TMS5110"] = true
SOUNDS["TMS5220"] = true
SOUNDS["UPD7759"] = true
SOUNDS["VLM5030"] = true
SOUNDS["VOLT_REG"] = true
SOUNDS["VOTRAX"] = true
SOUNDS["X1_010"] = true -- seta2
SOUNDS["YM2151"] = true
SOUNDS["YM2203"] = true
SOUNDS["YM2413"] = true
SOUNDS["YM2608"] = true
SOUNDS["YM2610"] = true
SOUNDS["YM2612"] = true
SOUNDS["YM3812"] = true
SOUNDS["YM3526"] = true
SOUNDS["YMF262"] = true
SOUNDS["YMF271"] = true -- zn
SOUNDS["YMF278B"] = true
SOUNDS["YMZ280B"] = true
SOUNDS["YMZ770"] = true -- cv1k
SOUNDS["ZSG2"] = true -- zn

--------------------------------------------------
-- specify available video cores
--------------------------------------------------

VIDEOS["BUFSPRITE"] = true
VIDEOS["EPIC12"] = true -- cv1k
VIDEOS["HD63484"] = true
VIDEOS["MC6845"] = true
VIDEOS["SEGA315_5124"] = true
VIDEOS["SEGA315_5313"] = true
VIDEOS["SNES_PPU"] = true -- snesb
VIDEOS["TLC34076"] = true
VIDEOS["TMS34061"] = true
VIDEOS["PSX"] = true
VIDEOS["STVVDP"] = true -- stv

--------------------------------------------------
-- specify available machine cores
--------------------------------------------------

MACHINES["6522VIA"] = true
MACHINES["6821PIA"] = true
MACHINES["6840PTM"] = true -- ginganin
MACHINES["68681"] = true
MACHINES["7200FIFO"] = true
MACHINES["AAKARTDEV"] = true
MACHINES["ACIA6850"] = true -- seta
MACHINES["ACORN_VIDC"] = false -- armdemo, MNW
MACHINES["ADC0804"] = true
MACHINES["ADC0808"] = true
MACHINES["ADC083X"] = true -- seta
MACHINES["ADC0844"] = true
MACHINES["AT28C16"] = true -- zn
MACHINES["BANKDEV"] = true
MACHINES["CXD1095"] = true
MACHINES["EEPROMDEV"] = true
MACHINES["ER2055"] = true
MACHINES["FDC_PLL"] = true
MACHINES["I2CMEM"] = true
MACHINES["I8243"] = true
MACHINES["I8251"] = true
MACHINES["I8255"] = true
MACHINES["IDECTRL"] = true
MACHINES["INPUT_MERGER"] = true
MACHINES["INTELFLASH"] = true
MACHINES["GEN_FIFO"] = true
MACHINES["GEN_LATCH"] = true
MACHINES["I8257"] = true
MACHINES["K053252"] = true
MACHINES["K054321"] = true -- mystwarr
MACHINES["LATCH8"] = true
MACHINES["LDPR8210"] = true
MACHINES["MB3773"] = true
MACHINES["MB8421"] = true
MACHINES["MB14241"] = true
MACHINES["MB87078"] = true
MACHINES["MB89352"] = true  -- segas32
MACHINES["MCF5206E"] = true -- seta2
MACHINES["MIOT6530"] = true
MACHINES["MSM6242"] = true -- namcona1
MACHINES["MSM6253"] = true
MACHINES["NETLIST"] = true
MACHINES["NSCSI"] = true -- cps3
MACHINES["OUTPUT_LATCH"] = true
MACHINES["PIC8259"] = true -- m92
MACHINES["PIT8253"] = true -- seta
MACHINES["RIOT6532"] = true
MACHINES["RP5C01"] = true
MACHINES["RP5H01"] = true
MACHINES["RSTBUF"] = true -- dynax, ddenlovr
MACHINES["RTC9701"] = true -- cv1k
MACHINES["SEGA_SCU"] = true -- stv
MACHINES["SERFLASH"] = true -- cv1k
MACHINES["SMPC"] = true -- stv
MACHINES["STVCD"] = true -- stv
MACHINES["S_SMP"] = true -- snes
MACHINES["TC0091LVC"] = true
MACHINES["TE7750"] = true
MACHINES["TICKET"] = true
MACHINES["TIMEKPR"] = true
MACHINES["TMP68301"] = true -- seta2
MACHINES["TMS1024"] = true -- docastle
MACHINES["TMS6100"] = true
MACHINES["TTL74153"] = true
MACHINES["TTL74157"] = true
MACHINES["TTL74259"] = true
MACHINES["TTL7474"] = true -- scramble
MACHINES["UPD1990A"] = true
MACHINES["UPD4701"] = true
MACHINES["UPD4992"] = true
MACHINES["UPD7001"] = true
MACHINES["V3021"] = true
MACHINES["WATCHDOG"] = true
MACHINES["WD33C93"] = true
MACHINES["WD33C9X"] = true -- cps3
MACHINES["WD_FDC"] = true
MACHINES["Z80CTC"] = true
MACHINES["Z80DAISY"] = true
MACHINES["Z80PIO"] = true
MACHINES["Z80SIO"] = true -- ddenlovr

--------------------------------------------------
-- specify available bus cores
--------------------------------------------------

BUSES["ATA"] = true
BUSES["GENERIC"] = true
BUSES["NSCSI"] = true
BUSES["SAT_CTRL"] = true -- stv
BUSES["SCSI"] = true

--------------------------------------------------
-- specify available machine cores "HBMAME" [Disable]
--------------------------------------------------

--MACHINES["WD33C93"] = true --HBMAME

--------------------------------------------------
-- specify available CPU cores "HBMAME" [Disable]
---------------------------------------------------

--CPUS["SM510"] = true --HBMAME

--------------------------------------------------
-- this is the list of driver libraries that
-- comprise MAME plus mamedriv.o which contains
-- the list of drivers
--------------------------------------------------

function linkProjects_hbmame_hbmame(_target, _subtarget)
	links {
		"acorn",
		"adp",
		"alba",
		"alliedl",
		"alpha",
		"amiga",
		"aristocr",
		"ascii",
		"atari",
		"atlus",
--		"barcrest",   -- not used in ARCADE
		"bfm",
		"bmc",
		"capcom",
		"ces",
		"cinemat",
		"cirsa",
		"comad",
		"cvs",
		"dataeast",
		"dgrm",
		"dooyong",
		"dynax",
		"edevices",
		"efo",
		"eolith",
		"excelent",
		"exidy",
		"f32",
		"funworld",
		"fuuki",
		"gaelco",
		"gameplan",
		"gametron",
		"gottlieb",
		"ibmpc",
		"igs",
		"igt",
		"irem",
		"itech",
		"jaleco",
		"jpm",
		"kaneko",
		"kiwako",
		"konami",
		"matic",
--		"maygay",   -- not used in ARCADE
		"meadows",
		"merit",
		"metro",
		"midcoin",
		"midw8080",
		"midway",
		"mr",
		"namco",
		"nasco",
		"neogeo",
		"nichibut",
		"nintendo",
		"nix",
		"nmk",
		"omori",
		"olympia",
		"orca",
		"pacific",
		"pce",
		"phoenix",
		"playmark",
		"promat",
		"psikyo",
		"ramtek",
		"rare",
		"sanritsu",
		"puckman",
		"sega",
		"seibu",
		"seta",
		"sigma",
		"snk",
		"sony",
		"stern",
		"subsino",
		"suna",
		"sunelect",
		"taito",
		"tatsumi",
		"tch",
		"tecfri",
		"technos",
		"tehkan",
		"terminal",
		"thepit",
		"toaplan",
		"unico",
		"univers",
		"upl",
		"valadon",
		"venture",
		"vsystem",
		"wing",
		"yunsung",
		"zaccaria",
		"misc",
		"pinball",
		"shared",
		"homebrow",
--		"Mess", //MESS console system 
		"access",
		"aci",
		"acorn",
		"act",
		"adc",
		"agat",
		"akai",
		"alesis",
		"altos",
		"ami",
		"amirix",
		"amiga",
		"ampro",
		"amstrad",
		"apf",
		"apollo",
		"apple",
		"applied",
		"arcadia",
		"ascii",
		"at",
		"atari",
		"att",
		"ave",
		"aviion",
		"bally",
		"bandai",
		"banctec",
		"be",
		"beehive",
		"bitcorp",
		"bnpo",
		"bondwell",
		"booth",
		"camputers",
		"canon",
		"cantab",
		"casio",
		"cbm",
		"cccp",
		"cce",
		"ccs",
		"ceres",
		"chessking",
		"chromatics",
		"chrysler",
		"citoh",
		"coleco",
		"compugraphic",
		"conic",
		"consumenta",
		"cromemco",
		"comx",
		"concept",
		"conitec",
		"cxg",
		"cybiko",
		"dai",
		"dcs",
		"ddr",
		"dec",
		"dicksmth",
		"dms",
		"dragon",
		"drc",
		"dulmont",
		"eaca",
		"einis",
		"elektor",
		"elektrka",
		"elektron",
		"emusys",
		"ensoniq",
		"enterprise",
		"entex",
		"epoch",
		"epson",
		"ericsson",
		"exidy",
		"exorterm",
		"fairch",
		"fairlight",
		"fidelity",
		"force",
		"francedr",
		"fujitsu",
		"funtech",
		"galaxy",
		"gamepark",
		"gi",
		"gridcomp",
		"grundy",
		"h01x",
		"hartung",
		"heathkit",
		"hec2hrp",
		"hegener",
		"heurikon",
		"hitachi",
		"homebrew",
		"homelab",
		"hp",
		"husky",
		"ibm6580",
		"ie15",
		"imp",
		"informer",
		"intel",
		"interpro",
		"interton",
		"intv",
		"isc",
		"jazz",
		"kawai",
		"kaypro",
		"koei",
		"kontron",
		"korg",
		"kurzweil",
		"kyber",
		"kyocera",
		"leapfrog",
		"learsiegler",
		"lsi",
		"luxor",
		"magnavox",
		"makerbot",
		"matsushi",
		"mattel",
		"mb",
		"mchester",
		"memotech",
		"mera",
		"mg1",
		"mgu",
		"microkey",
		"microsoft",
		"microterm",
		"mips",
		"mit",
		"mits",
		"mitsubishi",
		"mizar",
		"morrow",
		"mos",
		"motorola",
		"multitch",
		"mupid",
		"nakajima",
		"nascom",
		"natsemi",
		"ncd",
		"ne",
		"nec",
		"netronic",
		"next",
		"nintendo",
		"nokia",
		"northstar",
		"novag",
		"novation",
		"olivetti",
		"olympia",
		"omnibyte",
		"openuni",
		"orion",
		"osborne",
		"osi",
		"palm",
		"parker",
		"pc",
		"pdp1",
		"pel",
		"philips",
		"pitronic",
		"poly",
		"poly88",
		"psion",
		"quantel",
		"qume",
		"radio",
		"rca",
		"regnecentralen",
		"ritam",
		"rm",
		"robotron",
		"rockwell",
		"roland",
		"rolm",
		"rtpc",
		"sage",
		"saitek",
		"samcoupe",
		"samsung",
		"sanyo",
		"saturn",
		"segacons",
		"sequential",
		"sgi",
		"sharp",
		"siemens",
		"sinclair",
		"skeleton",
		"slicer",
		"snk",
		"sony",
		"sony_news",
		"sord",
		"special",
		"stm",
		"sun",
		"svi",
		"svision",
		"swtpc",
		"synertek",
		"ta",
		"tab",
		"tandberg",
		"tangerin",
		"tasc",
		"tatung",
		"teamconc",
		"tectoy",
		"tektroni",
		"telenova",
		"telercas",
		"televideo",
		"tesla",
		"thomson",
		"ti",
		"tiger",
		"tigertel",
		"tiki",
		"tomy",
		"toshiba",
		"trainer",
		"trs",
		"tvgames",
		"ultimachine",
		"ultratec",
		"unicard",
		"unisonic",
		"unisys",
		"usp",
		"veb",
		"verifone",
		"vidbrain",
		"videoton",
		"visual",
		"votrax",
		"vtech",
		"wang",
		"wavemate",
		"wyse",
		"westinghouse",
		"xerox",
		"xussrpc",
		"yamaha",
		"zenith",
		"zpa",
		"zvt",
		"messshared",
	}
end

function createHBMAMEProjects(_target, _subtarget, _name)
	project (_name)
	targetsubdir(_target .."_" .. _subtarget)
	kind (LIBTYPE)
	uuid (os.uuid("drv-" .. _target .."_" .. _subtarget .. "_" .._name))
	addprojectflags()
	precompiledheaders_novs()

	includedirs {
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/devices",
		MAME_DIR .. "src/hbmame/includes",
		MAME_DIR .. "src/hbmame",
		MAME_DIR .. "src/mame",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "3rdparty",
		GEN_DIR  .. "mame/layout",
		GEN_DIR  .. "hbmame/layout",
	}
	includedirs {
		ext_includedir("zlib"),
		ext_includedir("flac"),
		ext_includedir("glm"),
		ext_includedir("jpeg"),
		ext_includedir("rapidjson"),
	}

end

function createProjects_hbmame_hbmame(_target, _subtarget)
--------------------------------------------------
-- the following files are general components and
-- shared across a number of drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "shared")
files {
--	MAME_DIR .. "src/mame/machine/bacta_datalogger.h",
	MAME_DIR .. "src/mame/machine/bacta_datalogger.cpp",
	MAME_DIR .. "src/mame/machine/nmk112.cpp", --(Order established by the system toaplan in HBMAME)
--	MAME_DIR .. "src/mame/machine/nmk112.h",
	MAME_DIR .. "src/mame/machine/pcshare.cpp",
--	MAME_DIR .. "src/mame/machine/pcshare.h",
	MAME_DIR .. "src/mame/machine/segacrpt_device.cpp", --(Order established by the system sega in HBMAME)
--	MAME_DIR .. "src/mame/machine/segacrpt_device.h",
	MAME_DIR .. "src/mame/video/avgdvg.cpp", --(Order established by the system atari in HBMAME)
--	MAME_DIR .. "src/mame/video/avgdvg.h",
	MAME_DIR .. "src/mame/video/awpvid.cpp",
--	MAME_DIR .. "src/mame/video/awpvid.h",
	MAME_DIR .. "src/mame/video/tmap038.cpp",
--	MAME_DIR .. "src/mame/video/tmap038.h",
	MAME_DIR .. "src/mame/audio/dcs.cpp", --(Order established by the system midway in HBMAME)
--	MAME_DIR .. "src/mame/audio/dcs.h",
	MAME_DIR .. "src/mame/audio/decobsmt.cpp", --(Order established by the system dataeast in HBMAME)
--	MAME_DIR .. "src/mame/audio/decobsmt.h",
	MAME_DIR .. "src/mame/audio/efo_zsu.cpp",
--	MAME_DIR .. "src/mame/audio/efo_zsu.h",
	MAME_DIR .. "src/mame/audio/rax.cpp", --(Order established by the system sony in HBMAME)
--	MAME_DIR .. "src/mame/audio/rax.h",
	MAME_DIR .. "src/mame/audio/segam1audio.cpp", --(Order established by the system sega in HBMAME)
--	MAME_DIR .. "src/mame/audio/segam1audio.h",
}

--------------------------------------------------
-- manufacturer-specific groupings for drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "acorn")
files {
	MAME_DIR .. "src/mame/drivers/ertictac.cpp",
	MAME_DIR .. "src/mame/drivers/ssfindo.cpp",  --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/aristmk5.cpp", --It is implemented in the Mame system.
}

createHBMAMEProjects(_target, _subtarget, "adp")
files {
--	MAME_DIR .. "src/mame/drivers/adp.cpp",      --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/manohman.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/drivers/stellafr.cpp", --It is implemented in the Mame system.
}

createHBMAMEProjects(_target, _subtarget, "alba")
files {
	MAME_DIR .. "src/mame/drivers/albazc.cpp",  --It is implemented in the Arcade system.
--	MAME_DIR .. "src/mame/drivers/albazg.cpp",  --It is implemented in the Arcade system. 
	MAME_DIR .. "src/mame/drivers/rmhaihai.cpp", --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/vsmjtria.cpp",
}

createHBMAMEProjects(_target, _subtarget, "alliedl")
files {
	MAME_DIR .. "src/mame/drivers/ace.cpp",      --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/aleisttl.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/drivers/clayshoo.cpp", --It is implemented in the Arcade system.
}

createHBMAMEProjects(_target, _subtarget, "alpha")
files {
	MAME_DIR .. "src/mame/drivers/alpha68k.cpp", --It is implemented in the Arcade system.
--	MAME_DIR .. "src/mame/includes/alpha68k.h",
	MAME_DIR .. "src/mame/video/alpha68k.cpp",
	MAME_DIR .. "src/mame/drivers/alpha68k_i.cpp",
	MAME_DIR .. "src/mame/drivers/alpha68k_n.cpp",
	MAME_DIR .. "src/mame/drivers/champbas.cpp", --It is implemented in the Arcade system.
--	MAME_DIR .. "src/mame/includes/champbas.h",
	MAME_DIR .. "src/mame/video/champbas.cpp",
	MAME_DIR .. "src/mame/drivers/equites.cpp",  --It is implemented in the Arcade system.
--	MAME_DIR .. "src/mame/includes/equites.h",
	MAME_DIR .. "src/mame/video/equites.cpp",
	MAME_DIR .. "src/mame/drivers/meijinsn.cpp", --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/shougi.cpp",  --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/audio/ad_sound.cpp",
--	MAME_DIR .. "src/mame/audio/ad_sound.h",
	MAME_DIR .. "src/mame/machine/alpha8201.cpp",
--	MAME_DIR .. "src/mame/machine/alpha8201.h",
	MAME_DIR .. "src/mame/video/snk68_spr.cpp",
--	MAME_DIR .. "src/mame/video/snk68_spr.h",
	MAME_DIR .. "src/mame/video/alpha68k_palette.cpp",
--	MAME_DIR .. "src/mame/video/alpha68k_palette.h",
}

createHBMAMEProjects(_target, _subtarget, "amiga")
files {
	MAME_DIR .. "src/mame/drivers/alg.cpp",   --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/amiga.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/machine/amiga.cpp",
	MAME_DIR .. "src/mame/video/amiga.cpp",
	MAME_DIR .. "src/mame/video/amigaaga.cpp",
--	MAME_DIR .. "src/mame/video/amigaaga.h",
	MAME_DIR .. "src/mame/drivers/arsystems.cpp", --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/cubo.cpp", --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/mquake.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/drivers/upscope.cpp", --It is implemented in the Arcade system.
}

createHBMAMEProjects(_target, _subtarget, "aristocr")
files {
	MAME_DIR .. "src/mame/drivers/aristmk4.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/drivers/aristmk6.cpp", --It is implemented in the Mame system.
	MAME_DIR .. "src/mame/drivers/caswin.cpp",   --It is implemented in the Arcade system.
}

createHBMAMEProjects(_target, _subtarget, "ascii")
files {
	MAME_DIR .. "src/mame/drivers/big10.cpp",    --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/forte2.cpp",   --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/pengadvb.cpp", --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/sangho.cpp",   --It is implemented in the Arcade system.
	MAME_DIR .. "src/mame/drivers/sfkick.cpp",   --It is implemented in the Arcade system.
}

createHBMAMEProjects(_target, _subtarget, "atari")
files {
	MAME_DIR .. "src/mame/drivers/akkaarrh.cpp",
	MAME_DIR .. "src/mame/drivers/arcadecl.cpp",
--	MAME_DIR .. "src/mame/includes/arcadecl.h",
	MAME_DIR .. "src/mame/video/arcadecl.cpp",
	MAME_DIR .. "src/hbmame/drivers/asteroid.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/asteroid.h",
	MAME_DIR .. "src/mame/machine/asteroid.cpp",
	MAME_DIR .. "src/mame/audio/asteroid.cpp",
	MAME_DIR .. "src/mame/audio/llander.cpp",
	MAME_DIR .. "src/mame/drivers/atarifb.cpp",
--	MAME_DIR .. "src/mame/includes/atarifb.h",
	MAME_DIR .. "src/mame/machine/atarifb.cpp",
	MAME_DIR .. "src/mame/audio/atarifb.cpp",
	MAME_DIR .. "src/mame/video/atarifb.cpp",
	MAME_DIR .. "src/mame/drivers/atarig1.cpp",
--	MAME_DIR .. "src/mame/includes/atarig1.h",
	MAME_DIR .. "src/mame/video/atarig1.cpp",
	MAME_DIR .. "src/hbmame/drivers/atarig42.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/atarig42.h",
	MAME_DIR .. "src/mame/video/atarig42.cpp",
	MAME_DIR .. "src/mame/drivers/atarigt.cpp",
--	MAME_DIR .. "src/mame/includes/atarigt.h",
	MAME_DIR .. "src/mame/video/atarigt.cpp",
	MAME_DIR .. "src/mame/drivers/atarigx2.cpp",
--	MAME_DIR .. "src/mame/includes/atarigx2.h",
	MAME_DIR .. "src/mame/video/atarigx2.cpp",
	MAME_DIR .. "src/hbmame/drivers/atarisy1.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/atarisy1.h",
	MAME_DIR .. "src/mame/video/atarisy1.cpp",
	MAME_DIR .. "src/mame/drivers/atarisy2.cpp",
--	MAME_DIR .. "src/mame/includes/atarisy2.h",
	MAME_DIR .. "src/mame/video/atarisy2.cpp",
	MAME_DIR .. "src/mame/drivers/atarisy4.cpp",
	MAME_DIR .. "src/mame/drivers/atarittl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/machine/nl_gtrak10.cpp",
--	MAME_DIR .. "src/mame/machine/nl_gtrak10.h",
	MAME_DIR .. "src/mame/machine/nl_stuntcyc.cpp",
--	MAME_DIR .. "src/mame/machine/nl_stuntcyc.h",
	MAME_DIR .. "src/mame/machine/nl_tank.cpp",
--	MAME_DIR .. "src/mame/machine/nl_tank.h",
	MAME_DIR .. "src/mame/drivers/atetris.cpp",
--	MAME_DIR .. "src/mame/includes/atetris.h",
	MAME_DIR .. "src/mame/video/atetris.cpp",
	MAME_DIR .. "src/mame/drivers/avalnche.cpp",
--	MAME_DIR .. "src/mame/includes/avalnche.h",
	MAME_DIR .. "src/mame/audio/avalnche.cpp",
	MAME_DIR .. "src/mame/drivers/badlands.cpp",
--	MAME_DIR .. "src/mame/includes/badlands.h",
	MAME_DIR .. "src/mame/machine/badlands.cpp",
	MAME_DIR .. "src/mame/video/badlands.cpp",
	MAME_DIR .. "src/mame/drivers/badlandsbl.cpp",
	MAME_DIR .. "src/mame/drivers/bartop52.cpp",
	MAME_DIR .. "src/mame/drivers/batman.cpp",
--	MAME_DIR .. "src/mame/includes/batman.h",
	MAME_DIR .. "src/mame/video/batman.cpp",
	MAME_DIR .. "src/mame/drivers/beathead.cpp",
--	MAME_DIR .. "src/mame/includes/beathead.h",
	MAME_DIR .. "src/mame/video/beathead.cpp",
	MAME_DIR .. "src/mame/drivers/blstroid.cpp",
--	MAME_DIR .. "src/mame/includes/blstroid.h",
	MAME_DIR .. "src/mame/video/blstroid.cpp",
	MAME_DIR .. "src/mame/drivers/boxer.cpp",
	MAME_DIR .. "src/mame/drivers/bsktball.cpp",
--	MAME_DIR .. "src/mame/includes/bsktball.h",
	MAME_DIR .. "src/mame/machine/bsktball.cpp",
	MAME_DIR .. "src/mame/audio/bsktball.cpp",
	MAME_DIR .. "src/mame/video/bsktball.cpp",
	MAME_DIR .. "src/hbmame/drivers/bwidow.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/bwidow.h",
	MAME_DIR .. "src/mame/audio/bwidow.cpp",
	MAME_DIR .. "src/mame/drivers/bzone.cpp",
--	MAME_DIR .. "src/mame/includes/bzone.h",
	MAME_DIR .. "src/mame/audio/bzone.cpp",
	MAME_DIR .. "src/mame/drivers/canyon.cpp",
--	MAME_DIR .. "src/mame/includes/canyon.h",
	MAME_DIR .. "src/mame/audio/canyon.cpp",
	MAME_DIR .. "src/mame/video/canyon.cpp",
	MAME_DIR .. "src/hbmame/drivers/cball.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/ccastles.cpp",
--	MAME_DIR .. "src/mame/includes/ccastles.h",
	MAME_DIR .. "src/mame/video/ccastles.cpp",
	MAME_DIR .. "src/hbmame/drivers/centiped.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/centiped.h",
	MAME_DIR .. "src/mame/video/centiped.cpp",
	MAME_DIR .. "src/mame/drivers/cloak.cpp",
--	MAME_DIR .. "src/mame/includes/cloak.h",
	MAME_DIR .. "src/mame/video/cloak.cpp",
	MAME_DIR .. "src/mame/drivers/cloud9.cpp",
--	MAME_DIR .. "src/mame/includes/cloud9.h",
	MAME_DIR .. "src/mame/video/cloud9.cpp",
	MAME_DIR .. "src/mame/drivers/cmmb.cpp",
	MAME_DIR .. "src/mame/drivers/cops.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/copsnrob.cpp",
--	MAME_DIR .. "src/mame/includes/copsnrob.h",
	MAME_DIR .. "src/mame/audio/copsnrob.cpp",
	MAME_DIR .. "src/mame/video/copsnrob.cpp",
	MAME_DIR .. "src/mame/drivers/cyberbal.cpp",
--	MAME_DIR .. "src/mame/includes/cyberbal.h",
	MAME_DIR .. "src/mame/video/cyberbal.cpp",
	MAME_DIR .. "src/mame/drivers/cybstorm.cpp",
--	MAME_DIR .. "src/mame/includes/cybstorm.h",
	MAME_DIR .. "src/mame/video/cybstorm.cpp",
	MAME_DIR .. "src/mame/audio/nl_destroyr.cpp",
--	MAME_DIR .. "src/mame/audio/nl_destroyr.h",
	MAME_DIR .. "src/mame/drivers/destroyr.cpp",
	MAME_DIR .. "src/mame/drivers/dragrace.cpp",
--	MAME_DIR .. "src/mame/includes/dragrace.h",
	MAME_DIR .. "src/mame/audio/dragrace.cpp",
	MAME_DIR .. "src/mame/video/dragrace.cpp",
	MAME_DIR .. "src/mame/drivers/eprom.cpp",
--	MAME_DIR .. "src/mame/includes/eprom.h",
	MAME_DIR .. "src/mame/video/eprom.cpp",
	MAME_DIR .. "src/mame/drivers/firefox.cpp",
	MAME_DIR .. "src/mame/drivers/firetrk.cpp",
--	MAME_DIR .. "src/mame/includes/firetrk.h",
	MAME_DIR .. "src/mame/audio/firetrk.cpp",
	MAME_DIR .. "src/mame/video/firetrk.cpp",
	MAME_DIR .. "src/mame/audio/nl_flyball.cpp",
--	MAME_DIR .. "src/mame/audio/nl_flyball.h",
	MAME_DIR .. "src/mame/drivers/flyball.cpp",
	MAME_DIR .. "src/mame/drivers/foodf.cpp",
--	MAME_DIR .. "src/mame/includes/foodf.h",
	MAME_DIR .. "src/mame/video/foodf.cpp",
	MAME_DIR .. "src/hbmame/drivers/gauntlet.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/gauntlet.h",
	MAME_DIR .. "src/mame/video/gauntlet.cpp",
	MAME_DIR .. "src/mame/drivers/harddriv.cpp",
--	MAME_DIR .. "src/mame/includes/harddriv.h",
	MAME_DIR .. "src/mame/machine/harddriv.cpp",
	MAME_DIR .. "src/mame/audio/harddriv.cpp",
	MAME_DIR .. "src/mame/video/harddriv.cpp",
	MAME_DIR .. "src/mame/drivers/irobot.cpp",
--	MAME_DIR .. "src/mame/includes/irobot.h",
	MAME_DIR .. "src/mame/machine/irobot.cpp",
	MAME_DIR .. "src/mame/video/irobot.cpp",
	MAME_DIR .. "src/mame/drivers/jaguar.cpp",
--	MAME_DIR .. "src/mame/includes/jaguar.h",
	MAME_DIR .. "src/mame/audio/jaguar.cpp",
	MAME_DIR .. "src/mame/video/jag_blitter.cpp",
--	MAME_DIR .. "src/mame/video/jag_blitter.h",
	MAME_DIR .. "src/mame/video/jaguar.cpp",
--	MAME_DIR .. "src/mame/video/jagblit.h",
	MAME_DIR .. "src/mame/video/jagblit.hxx",
	MAME_DIR .. "src/mame/video/jagobj.hxx",
	MAME_DIR .. "src/mame/drivers/jedi.cpp",
--	MAME_DIR .. "src/mame/includes/jedi.h",
	MAME_DIR .. "src/mame/audio/jedi.cpp",
	MAME_DIR .. "src/mame/video/jedi.cpp",
	MAME_DIR .. "src/mame/drivers/klax.cpp",
--	MAME_DIR .. "src/mame/includes/klax.h",
	MAME_DIR .. "src/mame/video/klax.cpp",
	MAME_DIR .. "src/mame/drivers/liberatr.cpp",
--	MAME_DIR .. "src/mame/includes/liberatr.h",
	MAME_DIR .. "src/mame/video/liberatr.cpp",
	MAME_DIR .. "src/mame/drivers/mediagx.cpp",
	MAME_DIR .. "src/mame/drivers/metalmx.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/metalmx.h",
	MAME_DIR .. "src/mame/drivers/mgolf.cpp",
	MAME_DIR .. "src/hbmame/drivers/mhavoc_hb.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/machine/mhavoc_hb.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/mhavoc.cpp",
--	MAME_DIR .. "src/mame/includes/mhavoc.h",
	MAME_DIR .. "src/mame/machine/mhavoc.cpp",
	MAME_DIR .. "src/hbmame/drivers/missile.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/nitedrvr.cpp",
--	MAME_DIR .. "src/mame/includes/nitedrvr.h",
	MAME_DIR .. "src/mame/machine/nitedrvr.cpp",
	MAME_DIR .. "src/mame/audio/nitedrvr.cpp",
	MAME_DIR .. "src/mame/video/nitedrvr.cpp",
	MAME_DIR .. "src/mame/drivers/offtwall.cpp",
--	MAME_DIR .. "src/mame/includes/offtwall.h",
	MAME_DIR .. "src/mame/video/offtwall.cpp",
	MAME_DIR .. "src/mame/drivers/orbit.cpp",
--	MAME_DIR .. "src/mame/includes/orbit.h",
	MAME_DIR .. "src/mame/audio/orbit.cpp",
	MAME_DIR .. "src/mame/video/orbit.cpp",
	MAME_DIR .. "src/mame/drivers/pong.cpp",
	MAME_DIR .. "src/mame/machine/nl_pongf.cpp",
--	MAME_DIR .. "src/mame/machine/nl_pongf.h",
	MAME_DIR .. "src/mame/machine/nl_pongdoubles.cpp",
--	MAME_DIR .. "src/mame/machine/nl_pongdoubles.h",
	MAME_DIR .. "src/mame/machine/nl_breakout.cpp",
--	MAME_DIR .. "src/mame/machine/nl_breakout.h",
	MAME_DIR .. "src/mame/machine/nl_rebound.cpp",
--	MAME_DIR .. "src/mame/machine/nl_rebound.h",
	MAME_DIR .. "src/mame/drivers/poolshrk.cpp",
--	MAME_DIR .. "src/mame/includes/poolshrk.h",
	MAME_DIR .. "src/mame/audio/poolshrk.cpp",
	MAME_DIR .. "src/mame/video/poolshrk.cpp",
	MAME_DIR .. "src/mame/drivers/quantum.cpp",
	MAME_DIR .. "src/mame/drivers/quizshow.cpp",
	MAME_DIR .. "src/mame/drivers/rampart.cpp",
--	MAME_DIR .. "src/mame/includes/rampart.h",
	MAME_DIR .. "src/mame/video/rampart.cpp",
	MAME_DIR .. "src/mame/drivers/relief.cpp",
--	MAME_DIR .. "src/mame/includes/relief.h",
	MAME_DIR .. "src/mame/video/relief.cpp",
	MAME_DIR .. "src/mame/drivers/runaway.cpp",
	MAME_DIR .. "src/mame/drivers/sbrkout.cpp",
	MAME_DIR .. "src/mame/drivers/shuuz.cpp",
--	MAME_DIR .. "src/mame/includes/shuuz.h",
	MAME_DIR .. "src/mame/video/shuuz.cpp",
	MAME_DIR .. "src/mame/drivers/skullxbo.cpp",
--	MAME_DIR .. "src/mame/includes/skullxbo.h",
	MAME_DIR .. "src/mame/video/skullxbo.cpp",
	MAME_DIR .. "src/mame/drivers/skydiver.cpp",
--	MAME_DIR .. "src/mame/includes/skydiver.h",
	MAME_DIR .. "src/mame/audio/skydiver.cpp",
	MAME_DIR .. "src/mame/video/skydiver.cpp",
	MAME_DIR .. "src/mame/drivers/skyraid.cpp",
--	MAME_DIR .. "src/mame/includes/skyraid.h",
	MAME_DIR .. "src/mame/audio/skyraid.cpp",
	MAME_DIR .. "src/mame/video/skyraid.cpp",
	MAME_DIR .. "src/mame/drivers/sprint2.cpp",
--	MAME_DIR .. "src/mame/includes/sprint2.h",
	MAME_DIR .. "src/mame/audio/sprint2.cpp",
	MAME_DIR .. "src/mame/video/sprint2.cpp",
	MAME_DIR .. "src/mame/drivers/sprint4.cpp",
--	MAME_DIR .. "src/mame/includes/sprint4.h",
	MAME_DIR .. "src/mame/video/sprint4.cpp",
	MAME_DIR .. "src/mame/audio/sprint4.cpp",
--	MAME_DIR .. "src/mame/audio/sprint4.h",
	MAME_DIR .. "src/mame/drivers/sprint8.cpp",
--	MAME_DIR .. "src/mame/includes/sprint8.h",
	MAME_DIR .. "src/mame/audio/sprint8.cpp",
	MAME_DIR .. "src/mame/video/sprint8.cpp",
	MAME_DIR .. "src/mame/drivers/starshp1.cpp",
--	MAME_DIR .. "src/mame/includes/starshp1.h",
	MAME_DIR .. "src/mame/audio/starshp1.cpp",
	MAME_DIR .. "src/mame/video/starshp1.cpp",
	MAME_DIR .. "src/mame/drivers/starwars.cpp",
--	MAME_DIR .. "src/mame/includes/starwars.h",
	MAME_DIR .. "src/mame/machine/starwars.cpp",
	MAME_DIR .. "src/mame/audio/starwars.cpp",
	MAME_DIR .. "src/mame/drivers/subs.cpp",
--	MAME_DIR .. "src/mame/includes/subs.h",
	MAME_DIR .. "src/mame/machine/subs.cpp",
	MAME_DIR .. "src/mame/audio/subs.cpp",
	MAME_DIR .. "src/mame/video/subs.cpp",
	MAME_DIR .. "src/mame/drivers/tank8.cpp",
--	MAME_DIR .. "src/mame/includes/tank8.h",
	MAME_DIR .. "src/mame/audio/tank8.cpp",
	MAME_DIR .. "src/mame/video/tank8.cpp",
	MAME_DIR .. "src/hbmame/drivers/tempest.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/thunderj.cpp",
--	MAME_DIR .. "src/mame/includes/thunderj.h",
	MAME_DIR .. "src/mame/video/thunderj.cpp",
	MAME_DIR .. "src/mame/drivers/tomcat.cpp",
	MAME_DIR .. "src/mame/drivers/toobin.cpp",
--	MAME_DIR .. "src/mame/includes/toobin.h",
	MAME_DIR .. "src/mame/video/toobin.cpp",
	MAME_DIR .. "src/mame/drivers/tourtabl.cpp",
	MAME_DIR .. "src/mame/video/tia.cpp",
--	MAME_DIR .. "src/mame/video/tia.h",
	MAME_DIR .. "src/mame/drivers/triplhnt.cpp",
--	MAME_DIR .. "src/mame/includes/triplhnt.h",
	MAME_DIR .. "src/mame/audio/triplhnt.cpp",
	MAME_DIR .. "src/mame/video/triplhnt.cpp",
	MAME_DIR .. "src/mame/drivers/tunhunt.cpp",
--	MAME_DIR .. "src/mame/includes/tunhunt.h",
	MAME_DIR .. "src/mame/video/tunhunt.cpp",
	MAME_DIR .. "src/mame/drivers/ultratnk.cpp",
--	MAME_DIR .. "src/mame/includes/ultratnk.h",
	MAME_DIR .. "src/mame/video/ultratnk.cpp",
	MAME_DIR .. "src/mame/drivers/videopin.cpp",
--	MAME_DIR .. "src/mame/includes/videopin.h",
	MAME_DIR .. "src/mame/audio/videopin.cpp",
	MAME_DIR .. "src/mame/video/videopin.cpp",
	MAME_DIR .. "src/mame/drivers/vindictr.cpp",
--	MAME_DIR .. "src/mame/includes/vindictr.h",
	MAME_DIR .. "src/mame/video/vindictr.cpp",
	MAME_DIR .. "src/mame/drivers/wolfpack.cpp",
--	MAME_DIR .. "src/mame/includes/wolfpack.h",
	MAME_DIR .. "src/mame/video/wolfpack.cpp",
	MAME_DIR .. "src/mame/drivers/xybots.cpp",
--	MAME_DIR .. "src/mame/includes/xybots.h",
	MAME_DIR .. "src/mame/video/xybots.cpp",
	MAME_DIR .. "src/mame/machine/asic65.cpp",
--	MAME_DIR .. "src/mame/machine/asic65.h",
	MAME_DIR .. "src/mame/machine/atarigen.cpp",
--	MAME_DIR .. "src/mame/machine/atarigen.h",
    MAME_DIR .. "src/mame/machine/atariscom.cpp",
--	MAME_DIR .. "src/mame/machine/atariscom.h",
	MAME_DIR .. "src/mame/machine/mathbox.cpp",
--	MAME_DIR .. "src/mame/machine/mathbox.h",
	MAME_DIR .. "src/mame/machine/slapstic.cpp",
--	MAME_DIR .. "src/mame/machine/slapstic.h",
	MAME_DIR .. "src/mame/machine/atarixga.cpp",
--	MAME_DIR .. "src/mame/machine/atarixga.h",
	MAME_DIR .. "src/mame/audio/atarijsa.cpp",
--	MAME_DIR .. "src/mame/audio/atarijsa.h",
    MAME_DIR .. "src/mame/audio/atarisac.cpp",
--	MAME_DIR .. "src/mame/audio/atarisac.h",
	MAME_DIR .. "src/mame/audio/cage.cpp", --(midway)
--	MAME_DIR .. "src/mame/audio/cage.h",
	MAME_DIR .. "src/mame/audio/redbaron.cpp",
--	MAME_DIR .. "src/mame/audio/redbaron.h",
	MAME_DIR .. "src/mame/video/atarimo.cpp",
--	MAME_DIR .. "src/mame/video/atarimo.h",
	MAME_DIR .. "src/mame/video/atarirle.cpp",
--	MAME_DIR .. "src/mame/video/atarirle.h",
	MAME_DIR .. "src/mame/video/atarivad.cpp",
--	MAME_DIR .. "src/mame/video/atarivad.h",
}

createHBMAMEProjects(_target, _subtarget, "atlus")
files {
	MAME_DIR .. "src/mame/drivers/ohmygod.cpp",
--	MAME_DIR .. "src/mame/includes/ohmygod.h",
	MAME_DIR .. "src/mame/video/ohmygod.cpp",
	MAME_DIR .. "src/mame/drivers/patapata.cpp",
	MAME_DIR .. "src/mame/drivers/bowltry.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "barcrest")
files {
	MAME_DIR .. "src/mame/drivers/mpu2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/mpu4.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/mpu4.h", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4avan.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4bwb.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4concept.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4crystal.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4dealem.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4empire.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4mdm.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4misc.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4mod2sw.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4mod4yam.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4plasma.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4sw.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4union.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu4vid.cpp", --It is not necessary to include it
--  MAME_DIR .. "src/mame/includes/mpu5.h",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu5.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mpu5sw.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "bfm")
files {
	MAME_DIR .. "src/mame/drivers/bfcobra.cpp",
--	MAME_DIR .. "src/mame/includes/bfm_ad5.h",
--	MAME_DIR .. "src/mame/drivers/bfm_ad5.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bfm_ad5sw.cpp",
--	MAME_DIR .. "src/mame/drivers/bfm_sc1.cpp",   --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bfm_sc2.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/bfm_sc4.h",
--	MAME_DIR .. "src/mame/drivers/bfm_sc4.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/bfm_sc5.h", 
--	MAME_DIR .. "src/mame/drivers/bfm_sc5.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bfm_sc5sw.cpp",
--	MAME_DIR .. "src/mame/drivers/bfm_swp.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bfmsys83.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bfmsys85.cpp",  --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/rastersp.cpp",
--	MAME_DIR .. "src/mame/machine/bfm_bd1.h",
--	MAME_DIR .. "src/mame/machine/bfm_bd1.cpp",
--	MAME_DIR .. "src/mame/machine/bfm_bda.h",
--	MAME_DIR .. "src/mame/machine/bfm_bda.cpp",
--	MAME_DIR .. "src/mame/machine/bfm_comn.h",
--	MAME_DIR .. "src/mame/machine/bfm_comn.cpp",
--	MAME_DIR .. "src/mame/machine/bfm_sc45_helper.h",
--	MAME_DIR .. "src/mame/machine/bfm_sc45_helper.cpp",
--	MAME_DIR .. "src/mame/machine/sec.h",
--	MAME_DIR .. "src/mame/machine/sec.cpp",
--	MAME_DIR .. "src/mame/video/bfm_adr2.h",
--	MAME_DIR .. "src/mame/video/bfm_adr2.cpp",
--	MAME_DIR .. "src/mame/video/bfm_dm01.h",
	MAME_DIR .. "src/mame/video/bfm_dm01.cpp",
}

createHBMAMEProjects(_target, _subtarget, "bmc")
files {
	MAME_DIR .. "src/mame/drivers/bmcbowl.cpp",
	MAME_DIR .. "src/mame/drivers/koftball.cpp",
	MAME_DIR .. "src/mame/drivers/popobear.cpp",
	MAME_DIR .. "src/mame/drivers/bmcpokr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "capcom")
files {
	MAME_DIR .. "src/hbmame/drivers/1942.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/1942.h",
	MAME_DIR .. "src/mame/video/1942.cpp",
	MAME_DIR .. "src/mame/audio/nl_1942.cpp",
--  MAME_DIR .. "src/mame/audio/nl_1942.h",
	MAME_DIR .. "src/hbmame/drivers/1943.cpp", --HBMAME (konami)
--	MAME_DIR .. "src/mame/includes/1943.h",
	MAME_DIR .. "src/mame/video/1943.cpp",
--	MAME_DIR .. "src/mame/drivers/alien.cpp",
	MAME_DIR .. "src/mame/drivers/bionicc.cpp",
	MAME_DIR .. "src/mame/drivers/supduck.cpp",
	MAME_DIR .. "src/mame/video/tigeroad_spr.cpp",
--	MAME_DIR .. "src/mame/video/tigeroad_spr.h",
	MAME_DIR .. "src/hbmame/drivers/blktiger.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/blktiger.h",
	MAME_DIR .. "src/mame/video/blktiger.cpp",
	MAME_DIR .. "src/mame/drivers/blktiger_ms.cpp",
	MAME_DIR .. "src/mame/drivers/cbasebal.cpp",
--	MAME_DIR .. "src/mame/includes/cbasebal.h",
	MAME_DIR .. "src/mame/video/cbasebal.cpp",
	MAME_DIR .. "src/hbmame/drivers/commando.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/commando.h",
	MAME_DIR .. "src/mame/video/commando.cpp",
	MAME_DIR .. "src/hbmame/drivers/cps1.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/video/cps1.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/kenseim.cpp",
	MAME_DIR .. "src/hbmame/drivers/cps2.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/video/cps2.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/cps3.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cps3.h",
	MAME_DIR .. "src/mame/audio/cps3.cpp",
--	MAME_DIR .. "src/mame/audio/cps3.h",
	MAME_DIR .. "src/mame/drivers/egghunt.cpp",
	MAME_DIR .. "src/mame/drivers/exedexes.cpp",
--	MAME_DIR .. "src/mame/includes/exedexes.h",
	MAME_DIR .. "src/mame/video/exedexes.cpp",
	MAME_DIR .. "src/hbmame/drivers/fcrash.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/fcrash.h",
	MAME_DIR .. "src/mame/drivers/gng.cpp",
--	MAME_DIR .. "src/mame/includes/gng.h",
	MAME_DIR .. "src/mame/video/gng.cpp",
	MAME_DIR .. "src/mame/drivers/gunsmoke.cpp",
--	MAME_DIR .. "src/mame/includes/gunsmoke.h",
	MAME_DIR .. "src/mame/video/gunsmoke.cpp",
	MAME_DIR .. "src/mame/drivers/higemaru.cpp",
--	MAME_DIR .. "src/mame/includes/higemaru.h",
	MAME_DIR .. "src/mame/video/higemaru.cpp",
	MAME_DIR .. "src/mame/drivers/lastduel.cpp",
--	MAME_DIR .. "src/mame/includes/lastduel.h",
	MAME_DIR .. "src/mame/video/lastduel.cpp",
	MAME_DIR .. "src/mame/drivers/lwings.cpp",
--	MAME_DIR .. "src/mame/includes/lwings.h",
	MAME_DIR .. "src/mame/video/lwings.cpp",
	MAME_DIR .. "src/hbmame/drivers/mitchell.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mitchell.h",
	MAME_DIR .. "src/mame/video/mitchell.cpp",
	MAME_DIR .. "src/mame/drivers/psrockman.cpp",
	MAME_DIR .. "src/hbmame/drivers/sf.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/sidearms.cpp",
--	MAME_DIR .. "src/mame/includes/sidearms.h",
	MAME_DIR .. "src/mame/video/sidearms.cpp",
	MAME_DIR .. "src/mame/drivers/sonson.cpp",
--	MAME_DIR .. "src/mame/includes/sonson.h",
	MAME_DIR .. "src/mame/video/sonson.cpp",
	MAME_DIR .. "src/mame/drivers/srumbler.cpp",
--	MAME_DIR .. "src/mame/includes/srumbler.h",
	MAME_DIR .. "src/mame/video/srumbler.cpp",
	MAME_DIR .. "src/mame/drivers/tigeroad.cpp",
--	MAME_DIR .. "src/mame/includes/tigeroad.h",
	MAME_DIR .. "src/mame/video/tigeroad.cpp",
	MAME_DIR .. "src/mame/machine/tigeroad.cpp",
	MAME_DIR .. "src/mame/drivers/vulgus.cpp",
--	MAME_DIR .. "src/mame/includes/vulgus.h",
	MAME_DIR .. "src/mame/video/vulgus.cpp",
	MAME_DIR .. "src/mame/machine/kabuki.cpp",
--	MAME_DIR .. "src/mame/machine/kabuki.h",
	MAME_DIR .. "src/mame/drivers/tvcapcom.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/instantm.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "ces")
files {
	MAME_DIR .. "src/mame/drivers/cesclass.cpp",
	MAME_DIR .. "src/mame/drivers/galgames.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cinemat")
files {
	MAME_DIR .. "src/hbmame/drivers/cinemat.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cinemat.h",
	MAME_DIR .. "src/mame/audio/cinemat.cpp",
--	MAME_DIR .. "src/mame/audio/cinemat.h",
	MAME_DIR .. "src/mame/video/cinemat.cpp",
	MAME_DIR .. "src/mame/audio/nl_armora.cpp",
--	MAME_DIR .. "src/mame/audio/nl_armora.h",
	MAME_DIR .. "src/mame/audio/nl_barrier.cpp",
--	MAME_DIR .. "src/mame/audio/nl_barrier.h",
	MAME_DIR .. "src/mame/audio/nl_boxingb.cpp",
--	MAME_DIR .. "src/mame/audio/nl_boxingb.h",
--	MAME_DIR .. "src/mame/audio/nl_cinemat_common.h",
	MAME_DIR .. "src/mame/audio/nl_ripoff.cpp",
--	MAME_DIR .. "src/mame/audio/nl_ripoff.h",
	MAME_DIR .. "src/mame/audio/nl_solarq.cpp",
--	MAME_DIR .. "src/mame/audio/nl_solarq.h",
	MAME_DIR .. "src/mame/audio/nl_spacewar.cpp",
--	MAME_DIR .. "src/mame/audio/nl_spacewar.h",
	MAME_DIR .. "src/mame/audio/nl_speedfrk.cpp",
--	MAME_DIR .. "src/mame/audio/nl_speedfrk.h",
	MAME_DIR .. "src/mame/audio/nl_starcas.cpp",
--	MAME_DIR .. "src/mame/audio/nl_starcas.h",
	MAME_DIR .. "src/mame/audio/nl_starhawk.cpp",
--	MAME_DIR .. "src/mame/audio/nl_starhawk.h",
	MAME_DIR .. "src/mame/audio/nl_sundance.cpp",
--	MAME_DIR .. "src/mame/audio/nl_sundance.h",
	MAME_DIR .. "src/mame/audio/nl_tailg.cpp",
--	MAME_DIR .. "src/mame/audio/nl_tailg.h",
	MAME_DIR .. "src/mame/audio/nl_warrior.cpp",
--	MAME_DIR .. "src/mame/audio/nl_warrior.h",
	MAME_DIR .. "src/mame/drivers/cchasm.cpp",
--	MAME_DIR .. "src/mame/includes/cchasm.h",
	MAME_DIR .. "src/mame/machine/cchasm.cpp",
	MAME_DIR .. "src/mame/audio/cchasm.cpp",
	MAME_DIR .. "src/mame/video/cchasm.cpp",
	MAME_DIR .. "src/mame/drivers/dlair.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/dlair2.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/embargo.cpp",
	MAME_DIR .. "src/mame/drivers/jack.cpp",
--	MAME_DIR .. "src/mame/includes/jack.h",
	MAME_DIR .. "src/mame/video/jack.cpp",
	MAME_DIR .. "src/mame/drivers/leland.cpp",
--	MAME_DIR .. "src/mame/includes/leland.h",
	MAME_DIR .. "src/mame/machine/leland.cpp",
	MAME_DIR .. "src/mame/audio/leland.cpp",
--	MAME_DIR .. "src/mame/audio/leland.h",
	MAME_DIR .. "src/mame/video/leland.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cirsa")
files {
--	MAME_DIR .. "src/mame/drivers/cirsa820xxx.cpp",
	MAME_DIR .. "src/mame/drivers/cirsa910510.cpp",
	MAME_DIR .. "src/mame/drivers/miniguay.cpp",
	MAME_DIR .. "src/mame/drivers/missbamby.cpp",
--	MAME_DIR .. "src/mame/drivers/neptunp2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "comad")
files {
	MAME_DIR .. "src/mame/drivers/funybubl.cpp",
--	MAME_DIR .. "src/mame/includes/funybubl.h",
	MAME_DIR .. "src/mame/video/funybubl.cpp",
	MAME_DIR .. "src/mame/drivers/galspnbl.cpp",
--	MAME_DIR .. "src/mame/includes/galspnbl.h",
	MAME_DIR .. "src/mame/video/galspnbl.cpp",
	MAME_DIR .. "src/mame/drivers/zerozone.cpp",
--	MAME_DIR .. "src/mame/includes/zerozone.h",
	MAME_DIR .. "src/mame/video/zerozone.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cvs")
files {
	MAME_DIR .. "src/mame/drivers/cvs.cpp",
--	MAME_DIR .. "src/mame/includes/cvs.h",
	MAME_DIR .. "src/mame/video/cvs.cpp",
	MAME_DIR .. "src/mame/drivers/galaxia.cpp",
--	MAME_DIR .. "src/mame/includes/galaxia.h",
	MAME_DIR .. "src/mame/video/galaxia.cpp",
	MAME_DIR .. "src/mame/drivers/quasar.cpp",
--	MAME_DIR .. "src/mame/includes/quasar.h",
	MAME_DIR .. "src/mame/video/quasar.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dataeast")
files {
	MAME_DIR .. "src/mame/drivers/actfancr.cpp",
--	MAME_DIR .. "src/mame/includes/actfancr.h",
	MAME_DIR .. "src/mame/video/actfancr.cpp",
	MAME_DIR .. "src/hbmame/drivers/astrof.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/astrof.h",
	MAME_DIR .. "src/mame/audio/astrof.cpp",
	MAME_DIR .. "src/mame/drivers/backfire.cpp",
	MAME_DIR .. "src/mame/drivers/battlera.cpp",
--	MAME_DIR .. "src/mame/includes/battlera.h",
	MAME_DIR .. "src/mame/drivers/boogwing.cpp",
--	MAME_DIR .. "src/mame/includes/boogwing.h",
	MAME_DIR .. "src/mame/video/boogwing.cpp",
	MAME_DIR .. "src/mame/drivers/brkthru.cpp",
--	MAME_DIR .. "src/mame/includes/brkthru.h",
	MAME_DIR .. "src/mame/video/brkthru.cpp",
	MAME_DIR .. "src/hbmame/drivers/btime.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/btime.h",
	MAME_DIR .. "src/mame/machine/btime.cpp",
	MAME_DIR .. "src/mame/video/btime.cpp",
	MAME_DIR .. "src/mame/drivers/bwing.cpp",
--	MAME_DIR .. "src/mame/includes/bwing.h",
	MAME_DIR .. "src/mame/video/bwing.cpp",
	MAME_DIR .. "src/mame/drivers/cbuster.cpp",
--	MAME_DIR .. "src/mame/includes/cbuster.h",
	MAME_DIR .. "src/mame/video/cbuster.cpp",
	MAME_DIR .. "src/mame/drivers/chanbara.cpp",
	MAME_DIR .. "src/hbmame/drivers/cninja.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cninja.h",
	MAME_DIR .. "src/mame/video/cninja.cpp",
	MAME_DIR .. "src/mame/drivers/cntsteer.cpp",
	MAME_DIR .. "src/mame/drivers/compgolf.cpp",
--	MAME_DIR .. "src/mame/includes/compgolf.h",
	MAME_DIR .. "src/mame/video/compgolf.cpp",
	MAME_DIR .. "src/mame/drivers/darkseal.cpp",
--	MAME_DIR .. "src/mame/includes/darkseal.h",
	MAME_DIR .. "src/mame/video/darkseal.cpp",
	MAME_DIR .. "src/mame/drivers/dassault.cpp",
--	MAME_DIR .. "src/mame/includes/dassault.h",
	MAME_DIR .. "src/mame/video/dassault.cpp",
	MAME_DIR .. "src/mame/drivers/dblewing.cpp",
	MAME_DIR .. "src/hbmame/drivers/dec0.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/dec0.h",
	MAME_DIR .. "src/mame/machine/dec0.cpp",
	MAME_DIR .. "src/mame/video/dec0.cpp",
	MAME_DIR .. "src/mame/drivers/dec8.cpp",
--	MAME_DIR .. "src/mame/includes/dec8.h",
	MAME_DIR .. "src/mame/video/dec8.cpp",
	MAME_DIR .. "src/mame/machine/deco222.cpp",
--	MAME_DIR .. "src/mame/machine/deco222.h",
	MAME_DIR .. "src/mame/machine/decocpu7.cpp",
--	MAME_DIR .. "src/mame/machine/decocpu7.h",
	MAME_DIR .. "src/mame/machine/decocpu6.cpp",
--	MAME_DIR .. "src/mame/machine/decocpu6.h",
	MAME_DIR .. "src/mame/drivers/deco_ld.cpp",
	MAME_DIR .. "src/mame/drivers/deco_mlc.cpp",
--	MAME_DIR .. "src/mame/includes/deco_mlc.h",
	MAME_DIR .. "src/mame/video/deco_mlc.cpp",
	MAME_DIR .. "src/mame/drivers/deco156.cpp",
	MAME_DIR .. "src/mame/machine/deco156.cpp",
--	MAME_DIR .. "src/mame/machine/deco156.h",
	MAME_DIR .. "src/hbmame/drivers/deco32.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/deco32.h",
	MAME_DIR .. "src/mame/video/deco32.cpp",
	MAME_DIR .. "src/mame/video/dvi.cpp",
	MAME_DIR .. "src/mame/video/deco_ace.cpp",
--	MAME_DIR .. "src/mame/video/deco_ace.h",
	MAME_DIR .. "src/mame/video/deco_zoomspr.cpp",
--	MAME_DIR .. "src/mame/video/deco_zoomspr.h",
	MAME_DIR .. "src/mame/drivers/decocass.cpp",
--	MAME_DIR .. "src/mame/includes/decocass.h",
	MAME_DIR .. "src/mame/machine/decocass.cpp",
	MAME_DIR .. "src/mame/machine/decocass_tape.cpp",
--	MAME_DIR .. "src/mame/machine/decocass_tape.h",
	MAME_DIR .. "src/mame/video/decocass.cpp",
	MAME_DIR .. "src/mame/drivers/deshoros.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/dietgo.cpp",
--	MAME_DIR .. "src/mame/includes/dietgo.h",
	MAME_DIR .. "src/mame/video/dietgo.cpp",
	MAME_DIR .. "src/mame/drivers/dreambal.cpp",
	MAME_DIR .. "src/mame/drivers/exprraid.cpp",
--	MAME_DIR .. "src/mame/includes/exprraid.h",
	MAME_DIR .. "src/mame/video/exprraid.cpp",
--	MAME_DIR .. "src/mame/drivers/ffantasy_ms.cpp",
	MAME_DIR .. "src/mame/drivers/firetrap.cpp",
--	MAME_DIR .. "src/mame/includes/firetrap.h",
	MAME_DIR .. "src/mame/video/firetrap.cpp",
	MAME_DIR .. "src/mame/drivers/funkyjet.cpp",
--	MAME_DIR .. "src/mame/includes/funkyjet.h",
	MAME_DIR .. "src/mame/video/funkyjet.cpp",
	MAME_DIR .. "src/mame/drivers/karnov.cpp",
--	MAME_DIR .. "src/mame/includes/karnov.h",
	MAME_DIR .. "src/mame/video/karnov.cpp",
	MAME_DIR .. "src/mame/drivers/kchamp.cpp",
--	MAME_DIR .. "src/mame/includes/kchamp.h",
	MAME_DIR .. "src/mame/video/kchamp.cpp",
	MAME_DIR .. "src/mame/drivers/kingobox.cpp",
--	MAME_DIR .. "src/mame/includes/kingobox.h",
	MAME_DIR .. "src/mame/video/kingobox.cpp",
	MAME_DIR .. "src/mame/drivers/lemmings.cpp",
--	MAME_DIR .. "src/mame/includes/lemmings.h",
	MAME_DIR .. "src/mame/video/lemmings.cpp",
	MAME_DIR .. "src/mame/drivers/liberate.cpp",
--	MAME_DIR .. "src/mame/includes/liberate.h",
	MAME_DIR .. "src/mame/video/liberate.cpp",
	MAME_DIR .. "src/mame/drivers/madalien.cpp",
--	MAME_DIR .. "src/mame/includes/madalien.h",
	MAME_DIR .. "src/mame/audio/madalien.cpp",
	MAME_DIR .. "src/mame/video/madalien.cpp",
	MAME_DIR .. "src/mame/drivers/madmotor.cpp",
	MAME_DIR .. "src/mame/drivers/metlclsh.cpp",
--	MAME_DIR .. "src/mame/includes/metlclsh.h",
	MAME_DIR .. "src/mame/video/metlclsh.cpp",
	MAME_DIR .. "src/mame/drivers/mirage.cpp",
	MAME_DIR .. "src/hbmame/drivers/pcktgal.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/pcktgal.h",
	MAME_DIR .. "src/mame/video/pcktgal.cpp",
	MAME_DIR .. "src/mame/drivers/pktgaldx.cpp",
--	MAME_DIR .. "src/mame/includes/pktgaldx.h",
	MAME_DIR .. "src/mame/video/pktgaldx.cpp",
	MAME_DIR .. "src/mame/drivers/progolf.cpp",
	MAME_DIR .. "src/hbmame/drivers/rohga.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/rohga.h",
	MAME_DIR .. "src/mame/video/rohga.cpp",
	MAME_DIR .. "src/mame/drivers/shootout.cpp",
--	MAME_DIR .. "src/mame/includes/shootout.h",
	MAME_DIR .. "src/mame/video/shootout.cpp",
	MAME_DIR .. "src/hbmame/drivers/sidepckt.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/sidepckt.h",
	MAME_DIR .. "src/mame/video/sidepckt.cpp",
	MAME_DIR .. "src/mame/drivers/simpl156.cpp",
--	MAME_DIR .. "src/mame/includes/simpl156.h",
	MAME_DIR .. "src/mame/video/simpl156.cpp",
	MAME_DIR .. "src/mame/drivers/sshangha.cpp",
--	MAME_DIR .. "src/mame/includes/sshangha.h",
	MAME_DIR .. "src/mame/video/sshangha.cpp",
	MAME_DIR .. "src/mame/drivers/stadhero.cpp",
--	MAME_DIR .. "src/mame/includes/stadhero.h",
	MAME_DIR .. "src/mame/video/stadhero.cpp",
	MAME_DIR .. "src/mame/drivers/supbtime.cpp",
--	MAME_DIR .. "src/mame/includes/supbtime.h",
	MAME_DIR .. "src/mame/video/supbtime.cpp",
	MAME_DIR .. "src/mame/drivers/tryout.cpp",
--	MAME_DIR .. "src/mame/includes/tryout.h",
	MAME_DIR .. "src/mame/video/tryout.cpp",
	MAME_DIR .. "src/mame/drivers/tumbleb.cpp",
--	MAME_DIR .. "src/mame/includes/tumbleb.h",
	MAME_DIR .. "src/mame/video/tumbleb.cpp",
	MAME_DIR .. "src/mame/drivers/vaportra.cpp",
--	MAME_DIR .. "src/mame/includes/vaportra.h",
	MAME_DIR .. "src/mame/video/vaportra.cpp",
	MAME_DIR .. "src/mame/machine/deco_irq.cpp",
--	MAME_DIR .. "src/mame/machine/deco_irq.h",
	MAME_DIR .. "src/mame/machine/deco102.cpp",
--	MAME_DIR .. "src/mame/machine/deco102.h",
	MAME_DIR .. "src/mame/machine/decocrpt.cpp",
--	MAME_DIR .. "src/mame/machine/decocrpt.h",
	MAME_DIR .. "src/mame/machine/deco104.cpp",
--	MAME_DIR .. "src/mame/machine/deco104.h",
	MAME_DIR .. "src/mame/machine/deco146.cpp",
--	MAME_DIR .. "src/mame/machine/deco146.h",
	MAME_DIR .. "src/mame/video/decbac06.cpp",
--	MAME_DIR .. "src/mame/video/decbac06.h",
	MAME_DIR .. "src/mame/video/decrmc3.cpp",
--	MAME_DIR .. "src/mame/video/decrmc3.h",
	MAME_DIR .. "src/mame/video/deco16ic.cpp",
--	MAME_DIR .. "src/mame/video/deco16ic.h",
	MAME_DIR .. "src/mame/video/decocomn.cpp",
--	MAME_DIR .. "src/mame/video/decocomn.h",
	MAME_DIR .. "src/mame/video/decospr.cpp",
--	MAME_DIR .. "src/mame/video/decospr.h",
	MAME_DIR .. "src/mame/video/decmxc06.cpp",
--	MAME_DIR .. "src/mame/video/decmxc06.h",
	MAME_DIR .. "src/mame/video/deckarn.cpp",
--	MAME_DIR .. "src/mame/video/deckarn.h",
}

createHBMAMEProjects(_target, _subtarget, "dgrm")
files {
	MAME_DIR .. "src/mame/drivers/blackt96.cpp",
	MAME_DIR .. "src/mame/drivers/pokechmp.cpp",
--	MAME_DIR .. "src/mame/includes/pokechmp.h",
	MAME_DIR .. "src/mame/video/pokechmp.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dooyong")
files {
	MAME_DIR .. "src/mame/drivers/dooyong.cpp",
	MAME_DIR .. "src/mame/video/dooyong.cpp",
--	MAME_DIR .. "src/mame/video/dooyong.h",
	MAME_DIR .. "src/mame/drivers/gundealr.cpp",
--	MAME_DIR .. "src/mame/includes/gundealr.h",
	MAME_DIR .. "src/mame/video/gundealr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dynax")
files {
	MAME_DIR .. "src/hbmame/drivers/ddenlovr.cpp",
	MAME_DIR .. "src/hbmame/drivers/dynax.cpp",
--	MAME_DIR .. "src/mame/includes/dynax.h",
	MAME_DIR .. "src/mame/video/dynax.cpp",
	MAME_DIR .. "src/mame/drivers/hnayayoi.cpp",
--	MAME_DIR .. "src/mame/includes/hnayayoi.h",
	MAME_DIR .. "src/mame/video/hnayayoi.cpp",
	MAME_DIR .. "src/mame/drivers/realbrk.cpp",
--	MAME_DIR .. "src/mame/includes/realbrk.h",
	MAME_DIR .. "src/mame/video/realbrk.cpp",
	MAME_DIR .. "src/mame/drivers/royalmah.cpp",
	MAME_DIR .. "src/mame/video/dynax_blitter_rev2.cpp",
--	MAME_DIR .. "src/mame/video/dynax_blitter_rev2.h",
}

createHBMAMEProjects(_target, _subtarget, "edevices")
files {
	MAME_DIR .. "src/mame/drivers/diverboy.cpp",
	MAME_DIR .. "src/mame/drivers/fantland.cpp",
--	MAME_DIR .. "src/mame/includes/fantland.h",
	MAME_DIR .. "src/mame/video/fantland.cpp",
	MAME_DIR .. "src/mame/drivers/mwarr.cpp",
	MAME_DIR .. "src/mame/drivers/stlforce.cpp",
--	MAME_DIR .. "src/mame/includes/stlforce.h",
	MAME_DIR .. "src/mame/video/edevices.cpp",
--	MAME_DIR .. "src/mame/video/edevices.h",
	MAME_DIR .. "src/mame/drivers/mugsmash.cpp",
--	MAME_DIR .. "src/mame/includes/mugsmash.h",
	MAME_DIR .. "src/mame/video/mugsmash.cpp",
	MAME_DIR .. "src/mame/drivers/ppmast93.cpp",
	MAME_DIR .. "src/mame/drivers/pzletime.cpp",
	MAME_DIR .. "src/mame/drivers/twins.cpp",
}

createHBMAMEProjects(_target, _subtarget, "efo")
files {
	MAME_DIR .. "src/mame/drivers/cedar_magnet.cpp",
	MAME_DIR .. "src/mame/machine/cedar_magnet_plane.cpp",
	MAME_DIR .. "src/mame/machine/cedar_magnet_sprite.cpp",
	MAME_DIR .. "src/mame/machine/cedar_magnet_board.cpp",
	MAME_DIR .. "src/mame/machine/cedar_magnet_flop.cpp",
	MAME_DIR .. "src/mame/drivers/cidelsa.cpp",
--	MAME_DIR .. "src/mame/includes/cidelsa.h",
	MAME_DIR .. "src/mame/video/cidelsa.cpp",
	MAME_DIR .. "src/mame/drivers/nightmare.cpp",
}

createHBMAMEProjects(_target, _subtarget, "eolith")
files {
	MAME_DIR .. "src/mame/drivers/eolith.cpp",
--	MAME_DIR .. "src/mame/includes/eolith.h",
	MAME_DIR .. "src/mame/video/eolith.cpp",
	MAME_DIR .. "src/mame/drivers/eolith16.cpp",
	MAME_DIR .. "src/mame/drivers/ghosteo.cpp",
	MAME_DIR .. "src/mame/drivers/vegaeo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "excelent")
files {
	MAME_DIR .. "src/mame/drivers/aquarium.cpp",
--	MAME_DIR .. "src/mame/includes/aquarium.h",
	MAME_DIR .. "src/mame/video/aquarium.cpp",
	MAME_DIR .. "src/mame/drivers/d9final.cpp",
	MAME_DIR .. "src/mame/drivers/dblcrown.cpp",
	MAME_DIR .. "src/mame/drivers/gcpinbal.cpp",
--	MAME_DIR .. "src/mame/includes/gcpinbal.h",
	MAME_DIR .. "src/mame/video/gcpinbal.cpp",
	MAME_DIR .. "src/mame/video/excellent_spr.cpp",
--	MAME_DIR .. "src/mame/video/excellent_spr.h",
	MAME_DIR .. "src/mame/drivers/lastbank.cpp",
	MAME_DIR .. "src/mame/drivers/witch.cpp",
--	MAME_DIR .. "src/mame/includes/witch.h",
}

createHBMAMEProjects(_target, _subtarget, "exidy")
files {
--	MAME_DIR .. "src/mame/audio/nl_carpolo.h",
	MAME_DIR .. "src/mame/audio/nl_carpolo.cpp",
	MAME_DIR .. "src/mame/drivers/carpolo.cpp",
--	MAME_DIR .. "src/mame/includes/carpolo.h",
	MAME_DIR .. "src/mame/machine/carpolo.cpp",
	MAME_DIR .. "src/mame/video/carpolo.cpp",
	MAME_DIR .. "src/mame/drivers/circus.cpp",
--	MAME_DIR .. "src/mame/includes/circus.h",
	MAME_DIR .. "src/mame/audio/circus.cpp",
	MAME_DIR .. "src/mame/video/circus.cpp",
	MAME_DIR .. "src/hbmame/drivers/exidy.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/exidy.h",
	MAME_DIR .. "src/mame/audio/exidy.cpp",
--	MAME_DIR .. "src/mame/audio/exidy.h",
	MAME_DIR .. "src/mame/video/exidy.cpp",
	MAME_DIR .. "src/mame/drivers/exidy440.cpp",
--	MAME_DIR .. "src/mame/includes/exidy440.h",
	MAME_DIR .. "src/mame/audio/exidy440.cpp",
--	MAME_DIR .. "src/mame/audio/exidy440.h",
	MAME_DIR .. "src/mame/video/exidy440.cpp",
	MAME_DIR .. "src/mame/drivers/exidyttl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/maxaflex.cpp",
	MAME_DIR .. "src/mame/machine/atari400.cpp",
--	MAME_DIR .. "src/mame/includes/atari400.h",
	MAME_DIR .. "src/mame/video/atari400.cpp",
	MAME_DIR .. "src/mame/video/antic.cpp",
--	MAME_DIR .. "src/mame/video/antic.h",
	MAME_DIR .. "src/mame/video/gtia.cpp",
--	MAME_DIR .. "src/mame/video/gtia.h",
--	MAME_DIR .. "src/mame/audio/nl_fireone.h",
	MAME_DIR .. "src/mame/audio/nl_fireone.cpp",
--	MAME_DIR .. "src/mame/audio/nl_starfire.h",
	MAME_DIR .. "src/mame/audio/nl_starfire.cpp",
	MAME_DIR .. "src/mame/drivers/starfire.cpp",
--	MAME_DIR .. "src/mame/includes/starfire.h",
	MAME_DIR .. "src/mame/video/starfire.cpp",
	MAME_DIR .. "src/mame/drivers/vertigo.cpp",
--	MAME_DIR .. "src/mame/includes/vertigo.h",
	MAME_DIR .. "src/mame/machine/vertigo.cpp",
	MAME_DIR .. "src/mame/video/vertigo.cpp",
	MAME_DIR .. "src/mame/drivers/victory.cpp",
--	MAME_DIR .. "src/mame/includes/victory.h",
	MAME_DIR .. "src/mame/video/victory.cpp",
}

createHBMAMEProjects(_target, _subtarget, "f32")
files {
	MAME_DIR .. "src/mame/drivers/crospang.cpp",
--	MAME_DIR .. "src/mame/includes/crospang.h",
	MAME_DIR .. "src/mame/video/crospang.cpp",
	MAME_DIR .. "src/mame/drivers/silvmil.cpp",
	MAME_DIR .. "src/mame/drivers/f-32.cpp",
}

createHBMAMEProjects(_target, _subtarget, "funworld")
files {
	MAME_DIR .. "src/mame/drivers/4roses.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/funworld.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/funworld.h",
	MAME_DIR .. "src/mame/video/funworld.cpp",
--	MAME_DIR .. "src/mame/drivers/photoply.cpp",
--	MAME_DIR .. "src/mame/drivers/photoplys.cpp",
--	MAME_DIR .. "src/mame/drivers/photoplysx.cpp",
	MAME_DIR .. "src/mame/drivers/snookr10.cpp",
--	MAME_DIR .. "src/mame/includes/snookr10.h",
	MAME_DIR .. "src/mame/video/snookr10.cpp",
}

createHBMAMEProjects(_target, _subtarget, "fuuki")
files {
	MAME_DIR .. "src/mame/drivers/fuukifg2.cpp",
--	MAME_DIR .. "src/mame/includes/fuukifg2.h",
	MAME_DIR .. "src/mame/video/fuukifg2.cpp",
	MAME_DIR .. "src/hbmame/drivers/fuukifg3.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/fuukifg3.h",
	MAME_DIR .. "src/mame/video/fuukifg3.cpp",
	MAME_DIR .. "src/mame/video/fuukifg.cpp",
--	MAME_DIR .. "src/mame/video/fuukifg.h",
}

createHBMAMEProjects(_target, _subtarget, "gaelco")
files {
	MAME_DIR .. "src/mame/drivers/atvtrack.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/gaelco.cpp",
--	MAME_DIR .. "src/mame/includes/gaelco.h",
	MAME_DIR .. "src/mame/video/gaelco.cpp",
	MAME_DIR .. "src/mame/machine/gaelcrpt.cpp",
--	MAME_DIR .. "src/mame/includes/gaelcrpt.h",
	MAME_DIR .. "src/mame/drivers/gaelco2.cpp",
--	MAME_DIR .. "src/mame/includes/gaelco2.h",
	MAME_DIR .. "src/mame/machine/gaelco2.cpp",
	MAME_DIR .. "src/mame/video/gaelco2.cpp",
	MAME_DIR .. "src/mame/drivers/gaelco3d.cpp",
--	MAME_DIR .. "src/mame/includes/gaelco3d.h",
	MAME_DIR .. "src/mame/video/gaelco3d.cpp",
	MAME_DIR .. "src/mame/machine/gaelco3d.cpp",
--	MAME_DIR .. "src/mame/machine/gaelco3d.h",
    MAME_DIR .. "src/mame/drivers/gaelcof3.cpp",
	MAME_DIR .. "src/mame/drivers/gaelcopc.cpp",
	MAME_DIR .. "src/mame/drivers/goldart.cpp",
	MAME_DIR .. "src/mame/drivers/glass.cpp",
--	MAME_DIR .. "src/mame/includes/glass.h",
	MAME_DIR .. "src/mame/video/glass.cpp",
	MAME_DIR .. "src/mame/drivers/mastboy.cpp",
	MAME_DIR .. "src/mame/drivers/mastboyo.cpp",
	MAME_DIR .. "src/mame/drivers/rollext.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/splash.cpp",
--	MAME_DIR .. "src/mame/includes/splash.h",
    MAME_DIR .. "src/mame/drivers/splash_ms.cpp",
	MAME_DIR .. "src/mame/video/splash.cpp",
	MAME_DIR .. "src/mame/drivers/targeth.cpp",
--	MAME_DIR .. "src/mame/includes/targeth.h",
	MAME_DIR .. "src/mame/video/targeth.cpp",
	MAME_DIR .. "src/mame/drivers/thoop2.cpp",
--	MAME_DIR .. "src/mame/includes/thoop2.h",
	MAME_DIR .. "src/mame/video/thoop2.cpp",
	MAME_DIR .. "src/mame/drivers/wrally.cpp",
--	MAME_DIR .. "src/mame/includes/wrally.h",
	MAME_DIR .. "src/mame/video/wrally.cpp",
	MAME_DIR .. "src/mame/drivers/blmbycar.cpp",
--	MAME_DIR .. "src/mame/includes/blmbycar.h",
	MAME_DIR .. "src/mame/video/blmbycar.cpp",
	MAME_DIR .. "src/mame/video/gaelco_wrally_sprites.cpp",
--	MAME_DIR .. "src/mame/video/gaelco_wrally_sprites.h",
	MAME_DIR .. "src/mame/drivers/xorworld.cpp",
--	MAME_DIR .. "src/mame/includes/xorworld.h",
	MAME_DIR .. "src/mame/video/xorworld.cpp",
	MAME_DIR .. "src/mame/machine/gaelco_ds5002fp.cpp",
--	MAME_DIR .. "src/mame/machine/gaelco_ds5002fp.h",
	MAME_DIR .. "src/mame/drivers/bigkarnk_ms.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gameplan")
files {
	MAME_DIR .. "src/mame/drivers/enigma2.cpp",
	MAME_DIR .. "src/mame/drivers/gameplan.cpp",
--	MAME_DIR .. "src/mame/includes/gameplan.h",
	MAME_DIR .. "src/mame/video/gameplan.cpp",
	MAME_DIR .. "src/mame/drivers/toratora.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gametron")
files {
	MAME_DIR .. "src/mame/drivers/gatron.cpp",
--	MAME_DIR .. "src/mame/includes/gatron.h",
	MAME_DIR .. "src/mame/video/gatron.cpp",
	MAME_DIR .. "src/mame/drivers/gotya.cpp",
--	MAME_DIR .. "src/mame/includes/gotya.h",
	MAME_DIR .. "src/mame/audio/gotya.cpp",
	MAME_DIR .. "src/mame/video/gotya.cpp",
	MAME_DIR .. "src/mame/drivers/sbugger.cpp",
--	MAME_DIR .. "src/mame/includes/sbugger.h",
	MAME_DIR .. "src/mame/video/sbugger.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gottlieb")
files {
	MAME_DIR .. "src/mame/drivers/exterm.cpp",
--	MAME_DIR .. "src/mame/includes/exterm.h",
	MAME_DIR .. "src/mame/video/exterm.cpp",
	MAME_DIR .. "src/hbmame/drivers/gottlieb.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/gottlieb.h",
	MAME_DIR .. "src/mame/audio/gottlieb.cpp",
--	MAME_DIR .. "src/mame/audio/gottlieb.h",
	MAME_DIR .. "src/mame/video/gottlieb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ibmpc")
files {
	MAME_DIR .. "src/mame/drivers/calchase.cpp",
	MAME_DIR .. "src/mame/drivers/fruitpc.cpp",
	MAME_DIR .. "src/mame/drivers/pangofun.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/pcat_dyn.cpp",
	MAME_DIR .. "src/mame/drivers/pcat_nit.cpp",
	MAME_DIR .. "src/mame/drivers/pcxt.cpp",
	MAME_DIR .. "src/mame/drivers/quakeat.cpp",
	MAME_DIR .. "src/mame/drivers/queen.cpp",
	MAME_DIR .. "src/mame/drivers/igspc.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "igs")
files {
	MAME_DIR .. "src/mame/drivers/cabaret.cpp",
	MAME_DIR .. "src/mame/drivers/dunhuang.cpp",
	MAME_DIR .. "src/mame/drivers/goldstar.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/goldstar.h",
	MAME_DIR .. "src/mame/video/goldstar.cpp",
	MAME_DIR .. "src/mame/drivers/funtech.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jackie.cpp",
	MAME_DIR .. "src/mame/drivers/igspoker.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/igs009.cpp",
	MAME_DIR .. "src/hbmame/drivers/igs011.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/igs017.cpp",
	MAME_DIR .. "src/mame/video/igs017_igs031.cpp",
--	MAME_DIR .. "src/mame/video/igs017_igs031.h",
	MAME_DIR .. "src/mame/drivers/igs_fear.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/igs_m027.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/igs_m036.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/iqblock.cpp",
--	MAME_DIR .. "src/mame/includes/iqblock.h",
	MAME_DIR .. "src/mame/video/iqblock.cpp",
	MAME_DIR .. "src/hbmame/drivers/lordgun.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/lordgun.h",
	MAME_DIR .. "src/mame/video/lordgun.cpp",
	MAME_DIR .. "src/hbmame/drivers/pgm.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/pgm.h",
	MAME_DIR .. "src/mame/video/pgm.cpp",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type1.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type1.h",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type2.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type2.h",
	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type3.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs027a_type3.h",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs012.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs012.h",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs022.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs022.h",
	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs028.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_igs025_igs028.h",
	MAME_DIR .. "src/mame/machine/pgmprot_orlegend.cpp",
--	MAME_DIR .. "src/mame/machine/pgmprot_orlegend.h",
	MAME_DIR .. "src/mame/drivers/pgm2.cpp",
	MAME_DIR .. "src/mame/video/pgm2.cpp",
--	MAME_DIR .. "src/mame/includes/pgm2.h",
	MAME_DIR .. "src/mame/machine/pgm2_memcard.cpp",
--	MAME_DIR .. "src/mame/machine/pgm2_memcard.h",
	MAME_DIR .. "src/mame/drivers/pgm3.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/spoker.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/machine/igs036crypt.cpp",
--	MAME_DIR .. "src/mame/machine/igs036crypt.h",
	MAME_DIR .. "src/mame/machine/pgmcrypt.cpp",
--	MAME_DIR .. "src/mame/machine/pgmcrypt.h",
	MAME_DIR .. "src/mame/machine/igs025.cpp",
--	MAME_DIR .. "src/mame/machine/igs025.h",
	MAME_DIR .. "src/mame/machine/igs022.cpp",
--	MAME_DIR .. "src/mame/machine/igs022.h",
	MAME_DIR .. "src/mame/machine/igs028.cpp",
--	MAME_DIR .. "src/mame/machine/igs028.h",
}

createHBMAMEProjects(_target, _subtarget, "igt")
files {
--	MAME_DIR .. "src/mame/drivers/drw80pkr.cpp",
--	MAME_DIR .. "src/mame/drivers/gkigt.cpp",
--	MAME_DIR .. "src/mame/drivers/peplus.cpp",
--	MAME_DIR .. "src/mame/drivers/splus.cpp",
--	MAME_DIR .. "src/mame/drivers/videopkr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "irem")
files {
	MAME_DIR .. "src/mame/drivers/m10.cpp",
--	MAME_DIR .. "src/mame/includes/m10.h",
	MAME_DIR .. "src/mame/video/m10.cpp",
	MAME_DIR .. "src/mame/drivers/m14.cpp",
	MAME_DIR .. "src/hbmame/drivers/m52.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/m52.h",
	MAME_DIR .. "src/mame/video/m52.cpp",
	MAME_DIR .. "src/mame/drivers/m57.cpp",
--	MAME_DIR .. "src/mame/includes/m57.h",
	MAME_DIR .. "src/mame/video/m57.cpp",
	MAME_DIR .. "src/mame/drivers/m58.cpp",
--	MAME_DIR .. "src/mame/includes/m58.h",
	MAME_DIR .. "src/mame/video/m58.cpp",
	MAME_DIR .. "src/mame/drivers/m62.cpp",
--	MAME_DIR .. "src/mame/includes/m62.h",
	MAME_DIR .. "src/mame/video/m62.cpp",
	MAME_DIR .. "src/mame/drivers/spartanxtec.cpp",
	MAME_DIR .. "src/mame/drivers/m63.cpp",
	MAME_DIR .. "src/mame/drivers/m72.cpp",
--	MAME_DIR .. "src/mame/includes/m72.h",
	MAME_DIR .. "src/mame/audio/m72.cpp",
--	MAME_DIR .. "src/mame/audio/m72.h",
	MAME_DIR .. "src/mame/video/m72.cpp",
	MAME_DIR .. "src/mame/drivers/m90.cpp",
--	MAME_DIR .. "src/mame/includes/m90.h",
	MAME_DIR .. "src/mame/video/m90.cpp",
	MAME_DIR .. "src/hbmame/drivers/m92.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/m92.h",
	MAME_DIR .. "src/mame/video/m92.cpp",
	MAME_DIR .. "src/mame/drivers/m107.cpp",
--	MAME_DIR .. "src/mame/includes/m107.h",
	MAME_DIR .. "src/mame/video/m107.cpp",
--	MAME_DIR .. "src/mame/includes/iremipt.h",
	MAME_DIR .. "src/mame/drivers/olibochu.cpp",
	MAME_DIR .. "src/mame/drivers/redalert.cpp",
--	MAME_DIR .. "src/mame/includes/redalert.h",
	MAME_DIR .. "src/mame/audio/redalert.cpp",
	MAME_DIR .. "src/mame/video/redalert.cpp",
	MAME_DIR .. "src/mame/drivers/shisen.cpp",
--	MAME_DIR .. "src/mame/includes/shisen.h",
	MAME_DIR .. "src/mame/video/shisen.cpp",
	MAME_DIR .. "src/mame/drivers/travrusa.cpp",
--	MAME_DIR .. "src/mame/includes/travrusa.h",
	MAME_DIR .. "src/mame/video/travrusa.cpp",
	MAME_DIR .. "src/mame/drivers/vigilant.cpp",
--	MAME_DIR .. "src/mame/includes/vigilant.h",
	MAME_DIR .. "src/mame/video/vigilant.cpp",
	MAME_DIR .. "src/mame/machine/irem_cpu.cpp",
--	MAME_DIR .. "src/mame/machine/irem_cpu.h",
	MAME_DIR .. "src/mame/audio/irem.cpp",
--	MAME_DIR .. "src/mame/audio/irem.h",
	MAME_DIR .. "src/mame/audio/nl_kidniki.cpp",
--	MAME_DIR .. "src/mame/audio/nl_kidniki.h",
}

createHBMAMEProjects(_target, _subtarget, "itech")
files {
	MAME_DIR .. "src/mame/drivers/capbowl.cpp",
--	MAME_DIR .. "src/mame/includes/capbowl.h",
	MAME_DIR .. "src/mame/video/capbowl.cpp",
	MAME_DIR .. "src/hbmame/drivers/itech8.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/itech8.h",
	MAME_DIR .. "src/mame/machine/itech8.cpp",
	MAME_DIR .. "src/mame/video/itech8.cpp",
	MAME_DIR .. "src/mame/drivers/itech32.cpp",
--	MAME_DIR .. "src/mame/includes/itech32.h",
	MAME_DIR .. "src/mame/video/itech32.cpp",
	MAME_DIR .. "src/mame/drivers/iteagle.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/machine/iteagle_fpga.cpp",
--	MAME_DIR .. "src/mame/machine/iteagle_fpga.h",
}

createHBMAMEProjects(_target, _subtarget, "jaleco")
files {
	MAME_DIR .. "src/mame/drivers/aeroboto.cpp",
--	MAME_DIR .. "src/mame/includes/aeroboto.h",
	MAME_DIR .. "src/mame/video/aeroboto.cpp",
	MAME_DIR .. "src/mame/drivers/argus.cpp",
--	MAME_DIR .. "src/mame/includes/argus.h",
	MAME_DIR .. "src/mame/video/argus.cpp",
	MAME_DIR .. "src/mame/drivers/bestleag.cpp",
	MAME_DIR .. "src/mame/drivers/bigstrkb.cpp",
--	MAME_DIR .. "src/mame/includes/bigstrkb.h",
	MAME_DIR .. "src/mame/video/bigstrkb.cpp",
	MAME_DIR .. "src/mame/drivers/blueprnt.cpp",
--	MAME_DIR .. "src/mame/includes/blueprnt.h",
	MAME_DIR .. "src/mame/video/blueprnt.cpp",
	MAME_DIR .. "src/mame/drivers/bnstars.cpp",
	MAME_DIR .. "src/mame/drivers/cischeat.cpp",
--	MAME_DIR .. "src/mame/includes/cischeat.h",
	MAME_DIR .. "src/mame/video/cischeat.cpp",
	MAME_DIR .. "src/mame/drivers/citycon.cpp",
--	MAME_DIR .. "src/mame/includes/citycon.h",
	MAME_DIR .. "src/mame/video/citycon.cpp",
	MAME_DIR .. "src/mame/drivers/ddayjlc.cpp",
	MAME_DIR .. "src/hbmame/drivers/exerion.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/exerion.h",
	MAME_DIR .. "src/mame/video/exerion.cpp",
	MAME_DIR .. "src/mame/drivers/fcombat.cpp",
--	MAME_DIR .. "src/mame/includes/fcombat.h",
	MAME_DIR .. "src/mame/video/fcombat.cpp",
	MAME_DIR .. "src/hbmame/drivers/ginganin.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/ginganin.h",
	MAME_DIR .. "src/mame/video/ginganin.cpp",
	MAME_DIR .. "src/mame/drivers/homerun.cpp",
--	MAME_DIR .. "src/mame/includes/homerun.h",
	MAME_DIR .. "src/mame/video/homerun.cpp",
	MAME_DIR .. "src/mame/drivers/megasys1.cpp",
--	MAME_DIR .. "src/mame/includes/megasys1.h",
	MAME_DIR .. "src/mame/video/megasys1.cpp",
	MAME_DIR .. "src/mame/drivers/momoko.cpp",
--	MAME_DIR .. "src/mame/includes/momoko.h",
	MAME_DIR .. "src/mame/video/momoko.cpp",
	MAME_DIR .. "src/mame/drivers/ms32.cpp",
--	MAME_DIR .. "src/mame/includes/ms32.h",
	MAME_DIR .. "src/mame/video/ms32.cpp",
	MAME_DIR .. "src/mame/drivers/psychic5.cpp",
--	MAME_DIR .. "src/mame/includes/psychic5.h",
	MAME_DIR .. "src/mame/video/psychic5.cpp",
	MAME_DIR .. "src/mame/drivers/pturn.cpp",
	MAME_DIR .. "src/mame/drivers/skyfox.cpp",
--	MAME_DIR .. "src/mame/includes/skyfox.h",
	MAME_DIR .. "src/mame/video/skyfox.cpp",
	MAME_DIR .. "src/mame/drivers/tetrisp2.cpp",
--	MAME_DIR .. "src/mame/includes/tetrisp2.h",
	MAME_DIR .. "src/mame/video/tetrisp2.cpp",
	MAME_DIR .. "src/mame/machine/jalcrpt.cpp",
--	MAME_DIR .. "src/mame/machine/jalcrpt.h",
	MAME_DIR .. "src/mame/video/jalblend.cpp",
--	MAME_DIR .. "src/mame/video/jalblend.h",
	MAME_DIR .. "src/mame/video/ms1_tmap.cpp",
--	MAME_DIR .. "src/mame/video/ms1_tmap.h",
	MAME_DIR .. "src/mame/video/ms32_sprite.cpp",
--	MAME_DIR .. "src/mame/video/ms32_sprite.h",
	MAME_DIR .. "src/mame/machine/jaleco_ms32_sysctrl.cpp",
--	MAME_DIR .. "src/mame/machine/jaleco_ms32_sysctrl.h",
}

createHBMAMEProjects(_target, _subtarget, "jpm")
files {
	MAME_DIR .. "src/mame/drivers/guab.cpp",
	MAME_DIR .. "src/mame/drivers/jpmsys5.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/jpmsys5.h",
	MAME_DIR .. "src/mame/drivers/jpmsys5sw.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jpmmps.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jpms80.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jpmsru.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jpmimpct.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/jpmimpct.h",
	MAME_DIR .. "src/mame/video/jpmimpct.cpp",
	MAME_DIR .. "src/mame/drivers/jpmimpctsw.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/pluto5.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/jpmsys7.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "kaneko")
files {
	MAME_DIR .. "src/mame/drivers/airbustr.cpp",
--	MAME_DIR .. "src/mame/includes/airbustr.h",
	MAME_DIR .. "src/mame/video/airbustr.cpp",
	MAME_DIR .. "src/mame/drivers/djboy.cpp",
--	MAME_DIR .. "src/mame/includes/djboy.h",
	MAME_DIR .. "src/mame/video/djboy.cpp",
	MAME_DIR .. "src/mame/drivers/expro02.cpp",
	MAME_DIR .. "src/mame/drivers/galpanic.cpp",
	MAME_DIR .. "src/mame/drivers/galpanic_ms.cpp",
--	MAME_DIR .. "src/mame/includes/galpnipt.h",
--	MAME_DIR .. "src/mame/includes/galpanic.h",
	MAME_DIR .. "src/mame/video/galpanic.cpp",
	MAME_DIR .. "src/mame/drivers/galpani2.cpp",
--	MAME_DIR .. "src/mame/includes/galpani2.h",
	MAME_DIR .. "src/mame/video/galpani2.cpp",
	MAME_DIR .. "src/mame/drivers/galpani3.cpp",
	MAME_DIR .. "src/mame/video/kaneko_grap2.cpp",
--	MAME_DIR .. "src/mame/video/kaneko_grap2.h",
	MAME_DIR .. "src/mame/drivers/hvyunit.cpp",
	MAME_DIR .. "src/mame/drivers/jchan.cpp",
	MAME_DIR .. "src/hbmame/drivers/kaneko16.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/kaneko16.h",
	MAME_DIR .. "src/mame/video/kaneko16.cpp",
	MAME_DIR .. "src/mame/video/kaneko_tmap.cpp",
--	MAME_DIR .. "src/mame/video/kaneko_tmap.h",
	MAME_DIR .. "src/mame/video/kaneko_spr.cpp",
--	MAME_DIR .. "src/mame/video/kaneko_spr.h",
	MAME_DIR .. "src/mame/machine/kaneko_hit.cpp",
--	MAME_DIR .. "src/mame/machine/kaneko_hit.h",
	MAME_DIR .. "src/mame/machine/kaneko_calc3.cpp",
--	MAME_DIR .. "src/mame/machine/kaneko_calc3.h",
	MAME_DIR .. "src/mame/machine/kaneko_toybox.cpp",
--	MAME_DIR .. "src/mame/machine/kaneko_toybox.h",
	MAME_DIR .. "src/mame/drivers/sandscrp.cpp",
	MAME_DIR .. "src/mame/drivers/suprnova.cpp",
--	MAME_DIR .. "src/mame/includes/suprnova.h",
	MAME_DIR .. "src/mame/video/suprnova.cpp",
	MAME_DIR .. "src/mame/video/sknsspr.cpp",
--	MAME_DIR .. "src/mame/video/sknsspr.h",
}

createHBMAMEProjects(_target, _subtarget, "kiwako")
files {
	MAME_DIR .. "src/mame/drivers/jongkyo.cpp",
	MAME_DIR .. "src/mame/drivers/koikoi.cpp",
	MAME_DIR .. "src/mame/drivers/mrjong.cpp",
--	MAME_DIR .. "src/mame/includes/mrjong.h",
	MAME_DIR .. "src/mame/video/mrjong.cpp",
}

createHBMAMEProjects(_target, _subtarget, "konami")
files {
	MAME_DIR .. "src/mame/drivers/88games.cpp",
--	MAME_DIR .. "src/mame/includes/88games.h",
	MAME_DIR .. "src/mame/video/88games.cpp",
	MAME_DIR .. "src/mame/drivers/ajax.cpp",
--	MAME_DIR .. "src/mame/includes/ajax.h",
	MAME_DIR .. "src/mame/machine/ajax.cpp",
	MAME_DIR .. "src/mame/video/ajax.cpp",
	MAME_DIR .. "src/mame/drivers/aliens.cpp",
--	MAME_DIR .. "src/mame/includes/aliens.h",
	MAME_DIR .. "src/mame/video/aliens.cpp",
	MAME_DIR .. "src/mame/drivers/asterix.cpp",
--	MAME_DIR .. "src/mame/includes/asterix.h",
	MAME_DIR .. "src/mame/video/asterix.cpp",
	MAME_DIR .. "src/mame/drivers/battlnts.cpp",
--	MAME_DIR .. "src/mame/includes/battlnts.h",
	MAME_DIR .. "src/mame/video/battlnts.cpp",
	MAME_DIR .. "src/mame/drivers/bishi.cpp",
--	MAME_DIR .. "src/mame/includes/bishi.h",
	MAME_DIR .. "src/mame/video/bishi.cpp",
	MAME_DIR .. "src/mame/drivers/bladestl.cpp",
--	MAME_DIR .. "src/mame/includes/bladestl.h",
	MAME_DIR .. "src/mame/video/bladestl.cpp",
	MAME_DIR .. "src/mame/drivers/blockhl.cpp",
	MAME_DIR .. "src/mame/drivers/bottom9.cpp",
--	MAME_DIR .. "src/mame/includes/bottom9.h",
	MAME_DIR .. "src/mame/video/bottom9.cpp",
	MAME_DIR .. "src/mame/drivers/chqflag.cpp",
--	MAME_DIR .. "src/mame/includes/chqflag.h",
	MAME_DIR .. "src/mame/video/chqflag.cpp",
	MAME_DIR .. "src/mame/drivers/circusc.cpp",
--	MAME_DIR .. "src/mame/includes/circusc.h",
	MAME_DIR .. "src/mame/video/circusc.cpp",
	MAME_DIR .. "src/mame/drivers/cobra.cpp",
	MAME_DIR .. "src/mame/drivers/combatsc.cpp",
--	MAME_DIR .. "src/mame/includes/combatsc.h",
	MAME_DIR .. "src/mame/video/combatsc.cpp",
	MAME_DIR .. "src/hbmame/drivers/contra.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/contra.h",
	MAME_DIR .. "src/mame/video/contra.cpp",
	MAME_DIR .. "src/mame/drivers/crimfght.cpp",
--	MAME_DIR .. "src/mame/includes/crimfght.h",
	MAME_DIR .. "src/mame/video/crimfght.cpp",
	MAME_DIR .. "src/hbmame/drivers/dbz.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/dbz.h",
	MAME_DIR .. "src/mame/video/dbz.cpp",
	MAME_DIR .. "src/mame/drivers/ddribble.cpp",
--	MAME_DIR .. "src/mame/includes/ddribble.h",
	MAME_DIR .. "src/mame/video/ddribble.cpp",
	MAME_DIR .. "src/mame/drivers/divebomb.cpp",
--	MAME_DIR .. "src/mame/includes/divebomb.h",
	MAME_DIR .. "src/mame/video/divebomb.cpp",
	MAME_DIR .. "src/mame/drivers/djmain.cpp",
--	MAME_DIR .. "src/mame/includes/djmain.h",
	MAME_DIR .. "src/mame/video/djmain.cpp",
	MAME_DIR .. "src/mame/drivers/fastfred.cpp",
--	MAME_DIR .. "src/mame/includes/fastfred.h",
	MAME_DIR .. "src/mame/video/fastfred.cpp",
	MAME_DIR .. "src/mame/drivers/fastlane.cpp",
--	MAME_DIR .. "src/mame/includes/fastlane.h",
	MAME_DIR .. "src/mame/video/fastlane.cpp",
	MAME_DIR .. "src/mame/drivers/finalizr.cpp",
--	MAME_DIR .. "src/mame/includes/finalizr.h",
	MAME_DIR .. "src/mame/video/finalizr.cpp",
	MAME_DIR .. "src/mame/drivers/firebeat.cpp",
	MAME_DIR .. "src/mame/machine/midikbd.cpp",
--	MAME_DIR .. "src/mame/machine/midikbd.h",
	MAME_DIR .. "src/mame/drivers/flkatck.cpp",
--	MAME_DIR .. "src/mame/includes/flkatck.h",
	MAME_DIR .. "src/mame/video/flkatck.cpp",
	MAME_DIR .. "src/mame/drivers/gberet.cpp",
--	MAME_DIR .. "src/mame/includes/gberet.h",
	MAME_DIR .. "src/mame/video/gberet.cpp",
	MAME_DIR .. "src/mame/drivers/giclassic.cpp",
	MAME_DIR .. "src/mame/drivers/gijoe.cpp",
--	MAME_DIR .. "src/mame/includes/gijoe.h",
	MAME_DIR .. "src/mame/video/gijoe.cpp",
	MAME_DIR .. "src/hbmame/drivers/gradius3.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/gradius3.h",
	MAME_DIR .. "src/mame/video/gradius3.cpp",
	MAME_DIR .. "src/mame/drivers/gticlub.cpp",
	MAME_DIR .. "src/mame/drivers/gyruss.cpp",
--	MAME_DIR .. "src/mame/includes/gyruss.h",
	MAME_DIR .. "src/mame/video/gyruss.cpp",
	MAME_DIR .. "src/mame/drivers/hcastle.cpp",
--	MAME_DIR .. "src/mame/includes/hcastle.h",
	MAME_DIR .. "src/mame/video/hcastle.cpp",
	MAME_DIR .. "src/mame/drivers/hexion.cpp",
--	MAME_DIR .. "src/mame/includes/hexion.h",
	MAME_DIR .. "src/mame/video/hexion.cpp",
	MAME_DIR .. "src/mame/drivers/hornet.cpp",
	MAME_DIR .. "src/mame/machine/konppc.cpp",
--	MAME_DIR .. "src/mame/machine/konppc.h",
	MAME_DIR .. "src/mame/machine/konami_gn676_lan.cpp",
--	MAME_DIR .. "src/mame/machine/konami_gn676_lan.h",
	MAME_DIR .. "src/mame/drivers/hyperspt.cpp",
--	MAME_DIR .. "src/mame/includes/hyperspt.h",
	MAME_DIR .. "src/mame/audio/hyprolyb.cpp",
--	MAME_DIR .. "src/mame/audio/hyprolyb.h",
	MAME_DIR .. "src/mame/video/hyperspt.cpp",
	MAME_DIR .. "src/mame/drivers/ironhors.cpp",
--	MAME_DIR .. "src/mame/includes/ironhors.h",
	MAME_DIR .. "src/mame/video/ironhors.cpp",
	MAME_DIR .. "src/mame/drivers/jackal.cpp",
--	MAME_DIR .. "src/mame/includes/jackal.h",
	MAME_DIR .. "src/mame/video/jackal.cpp",
	MAME_DIR .. "src/mame/drivers/jailbrek.cpp",
--	MAME_DIR .. "src/mame/includes/jailbrek.h",
	MAME_DIR .. "src/mame/video/jailbrek.cpp",
	MAME_DIR .. "src/mame/drivers/junofrst.cpp",
	MAME_DIR .. "src/mame/drivers/konamigq.cpp",
	MAME_DIR .. "src/mame/drivers/konamigs.cpp",
	MAME_DIR .. "src/mame/drivers/konamigv.cpp",
	MAME_DIR .. "src/hbmame/drivers/konamigx.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/konamigx.h",
	MAME_DIR .. "src/mame/machine/konamigx.cpp",
	MAME_DIR .. "src/mame/video/konamigx.cpp",
	MAME_DIR .. "src/mame/drivers/konamim2.cpp",
	MAME_DIR .. "src/mame/machine/3dom2.cpp",
--	MAME_DIR .. "src/mame/machine/3dom2.h",
	MAME_DIR .. "src/mame/video/3dom2_te.cpp",
--	MAME_DIR .. "src/mame/video/3dom2_te.h",
--	MAME_DIR .. "src/mame/drivers/konblands.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/kongs470.cpp",
--	MAME_DIR .. "src/mame/drivers/konmedal.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/konmedal68k.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/kontest.cpp",
--	MAME_DIR .. "src/mame/drivers/konendev.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/kpontoon.cpp",
	MAME_DIR .. "src/mame/drivers/kpython.cpp",
	MAME_DIR .. "src/mame/drivers/ksys573.cpp",
	MAME_DIR .. "src/mame/machine/k573cass.cpp",
--	MAME_DIR .. "src/mame/machine/k573cass.h",
	MAME_DIR .. "src/mame/machine/k573dio.cpp",
--	MAME_DIR .. "src/mame/machine/k573dio.h",
	MAME_DIR .. "src/mame/machine/k573fpga.cpp",
--	MAME_DIR .. "src/mame/machine/k573fpga.h",
	MAME_DIR .. "src/mame/machine/k573kara.cpp",
--	MAME_DIR .. "src/mame/machine/k573kara.h",
	MAME_DIR .. "src/mame/machine/k573mcr.cpp",
--	MAME_DIR .. "src/mame/machine/k573mcr.h",
	MAME_DIR .. "src/mame/machine/k573msu.cpp",
--	MAME_DIR .. "src/mame/machine/k573msu.h",
	MAME_DIR .. "src/mame/machine/k573npu.cpp",
--	MAME_DIR .. "src/mame/machine/k573npu.h",
	MAME_DIR .. "src/mame/machine/k007452.cpp",
--	MAME_DIR .. "src/mame/machine/k007452.h",
	MAME_DIR .. "src/mame/machine/zs01.cpp",
--	MAME_DIR .. "src/mame/machine/zs01.h",
	MAME_DIR .. "src/mame/drivers/labyrunr.cpp",
--	MAME_DIR .. "src/mame/includes/labyrunr.h",
	MAME_DIR .. "src/mame/video/labyrunr.cpp",
	MAME_DIR .. "src/mame/drivers/lethal.cpp",
--	MAME_DIR .. "src/mame/includes/lethal.h",
	MAME_DIR .. "src/mame/video/lethal.cpp",
	MAME_DIR .. "src/mame/drivers/mainevt.cpp",
--	MAME_DIR .. "src/mame/includes/mainevt.h",
	MAME_DIR .. "src/mame/video/mainevt.cpp",
	MAME_DIR .. "src/mame/drivers/megazone.cpp",
--	MAME_DIR .. "src/mame/includes/megazone.h",
	MAME_DIR .. "src/mame/video/megazone.cpp",
	MAME_DIR .. "src/mame/drivers/mikie.cpp",
--	MAME_DIR .. "src/mame/includes/mikie.h",
	MAME_DIR .. "src/mame/video/mikie.cpp",
	MAME_DIR .. "src/mame/drivers/mogura.cpp",
	MAME_DIR .. "src/mame/drivers/moo.cpp",
--	MAME_DIR .. "src/mame/includes/moo.h",
	MAME_DIR .. "src/mame/video/moo.cpp",
	MAME_DIR .. "src/hbmame/drivers/mystwarr.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mystwarr.h",
	MAME_DIR .. "src/mame/video/mystwarr.cpp",
	MAME_DIR .. "src/hbmame/drivers/nemesis.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/nemesis.h",
	MAME_DIR .. "src/mame/video/nemesis.cpp",
	MAME_DIR .. "src/mame/drivers/nwk-tr.cpp",
	MAME_DIR .. "src/mame/drivers/otomedius.cpp",
	MAME_DIR .. "src/mame/drivers/overdriv.cpp",
--	MAME_DIR .. "src/mame/includes/overdriv.h",
	MAME_DIR .. "src/mame/video/overdriv.cpp",
	MAME_DIR .. "src/mame/drivers/pandoras.cpp",
--	MAME_DIR .. "src/mame/includes/pandoras.h",
	MAME_DIR .. "src/mame/video/pandoras.cpp",
	MAME_DIR .. "src/mame/drivers/parodius.cpp",
--	MAME_DIR .. "src/mame/includes/parodius.h",
	MAME_DIR .. "src/mame/video/parodius.cpp",
	MAME_DIR .. "src/mame/drivers/pingpong.cpp",
--	MAME_DIR .. "src/mame/includes/pingpong.h",
	MAME_DIR .. "src/mame/video/pingpong.cpp",
	MAME_DIR .. "src/mame/drivers/piratesh.cpp",
--	MAME_DIR .. "src/mame/drivers/plygonet.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/plygonet.h",
--	MAME_DIR .. "src/mame/video/plygonet.cpp",
	MAME_DIR .. "src/hbmame/drivers/pooyan.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/pooyan.h",
	MAME_DIR .. "src/mame/video/pooyan.cpp",
	MAME_DIR .. "src/mame/drivers/qdrmfgp.cpp",
--	MAME_DIR .. "src/mame/includes/qdrmfgp.h",
	MAME_DIR .. "src/mame/video/qdrmfgp.cpp",
	MAME_DIR .. "src/mame/drivers/quickpick5.cpp",
	MAME_DIR .. "src/mame/drivers/rockrage.cpp",
--	MAME_DIR .. "src/mame/includes/rockrage.h",
	MAME_DIR .. "src/mame/video/rockrage.cpp",
	MAME_DIR .. "src/mame/drivers/rocnrope.cpp",
--	MAME_DIR .. "src/mame/includes/rocnrope.h",
	MAME_DIR .. "src/mame/video/rocnrope.cpp",
	MAME_DIR .. "src/mame/drivers/rollerg.cpp",
--	MAME_DIR .. "src/mame/includes/rollerg.h",
	MAME_DIR .. "src/mame/video/rollerg.cpp",
	MAME_DIR .. "src/mame/drivers/rungun.cpp",
--	MAME_DIR .. "src/mame/includes/rungun.h",
	MAME_DIR .. "src/mame/video/rungun.cpp",
	MAME_DIR .. "src/mame/drivers/sbasketb.cpp",
--	MAME_DIR .. "src/mame/includes/sbasketb.h",
	MAME_DIR .. "src/mame/video/sbasketb.cpp",
	MAME_DIR .. "src/mame/drivers/scobra.cpp",
	MAME_DIR .. "src/mame/drivers/scotrsht.cpp",
--	MAME_DIR .. "src/mame/includes/scotrsht.h",
	MAME_DIR .. "src/mame/video/scotrsht.cpp",
	MAME_DIR .. "src/hbmame/drivers/scramble.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/scramble.h",
	MAME_DIR .. "src/mame/machine/scramble.cpp",
	MAME_DIR .. "src/mame/audio/scramble.cpp",
	MAME_DIR .. "src/hbmame/drivers/shaolins.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/shaolins.h",
	MAME_DIR .. "src/mame/video/shaolins.cpp",
	MAME_DIR .. "src/mame/drivers/simpsons.cpp",
--	MAME_DIR .. "src/mame/includes/simpsons.h",
	MAME_DIR .. "src/mame/machine/simpsons.cpp",
	MAME_DIR .. "src/mame/video/simpsons.cpp",
	MAME_DIR .. "src/mame/drivers/spy.cpp",
--	MAME_DIR .. "src/mame/includes/spy.h",
	MAME_DIR .. "src/mame/video/spy.cpp",
	MAME_DIR .. "src/mame/drivers/surpratk.cpp",
--	MAME_DIR .. "src/mame/includes/surpratk.h",
	MAME_DIR .. "src/mame/video/surpratk.cpp",
	MAME_DIR .. "src/mame/drivers/tasman.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/tgtpanic.cpp",
	MAME_DIR .. "src/mame/drivers/thunderx.cpp",
--	MAME_DIR .. "src/mame/includes/thunderx.h",
	MAME_DIR .. "src/mame/video/thunderx.cpp",
	MAME_DIR .. "src/hbmame/drivers/timeplt.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/timeplt.h",
	MAME_DIR .. "src/mame/audio/timeplt.cpp",
--	MAME_DIR .. "src/mame/audio/timeplt.h",
	MAME_DIR .. "src/mame/video/timeplt.cpp",
	MAME_DIR .. "src/hbmame/drivers/tmnt.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tmnt.h",
	MAME_DIR .. "src/mame/video/tmnt.cpp",
	MAME_DIR .. "src/mame/drivers/tp84.cpp",
--	MAME_DIR .. "src/mame/includes/tp84.h",
	MAME_DIR .. "src/mame/video/tp84.cpp",
	MAME_DIR .. "src/hbmame/drivers/trackfld.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/trackfld.h",
	MAME_DIR .. "src/mame/machine/konami1.cpp",
--	MAME_DIR .. "src/mame/machine/konami1.h",
	MAME_DIR .. "src/mame/audio/trackfld.cpp",
--	MAME_DIR .. "src/mame/audio/trackfld.h",
	MAME_DIR .. "src/mame/video/trackfld.cpp",
	MAME_DIR .. "src/mame/drivers/tutankhm.cpp",
--	MAME_DIR .. "src/mame/includes/tutankhm.h",
	MAME_DIR .. "src/mame/video/tutankhm.cpp",
	MAME_DIR .. "src/mame/drivers/twin16.cpp",
--	MAME_DIR .. "src/mame/includes/twin16.h",
	MAME_DIR .. "src/mame/video/twin16.cpp",
	MAME_DIR .. "src/mame/drivers/twinkle.cpp",
	MAME_DIR .. "src/mame/drivers/ultrsprt.cpp",
	MAME_DIR .. "src/mame/drivers/ultraman.cpp",
--	MAME_DIR .. "src/mame/includes/ultraman.h",
	MAME_DIR .. "src/mame/video/ultraman.cpp",
	MAME_DIR .. "src/mame/drivers/vendetta.cpp",
--	MAME_DIR .. "src/mame/includes/vendetta.h",
	MAME_DIR .. "src/mame/video/vendetta.cpp",
	MAME_DIR .. "src/mame/drivers/viper.cpp",
	MAME_DIR .. "src/mame/drivers/wecleman.cpp",
--	MAME_DIR .. "src/mame/includes/wecleman.h",
	MAME_DIR .. "src/mame/video/wecleman.cpp",
	MAME_DIR .. "src/mame/drivers/xexex.cpp",
--	MAME_DIR .. "src/mame/includes/xexex.h",
	MAME_DIR .. "src/mame/video/xexex.cpp",
	MAME_DIR .. "src/mame/drivers/xmen.cpp",
--	MAME_DIR .. "src/mame/includes/xmen.h",
	MAME_DIR .. "src/mame/video/xmen.cpp",
	MAME_DIR .. "src/hbmame/drivers/yiear.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/yiear.h",
	MAME_DIR .. "src/mame/video/yiear.cpp",
	MAME_DIR .. "src/mame/drivers/zr107.cpp",
--	MAME_DIR .. "src/mame/includes/konamipt.h",
	MAME_DIR .. "src/mame/video/konami_helper.cpp",
--	MAME_DIR .. "src/mame/video/konami_helper.h",
	MAME_DIR .. "src/mame/video/k007121.cpp",
--	MAME_DIR .. "src/mame/video/k007121.h",
	MAME_DIR .. "src/mame/video/k007342.cpp",
--	MAME_DIR .. "src/mame/video/k007342.h",
	MAME_DIR .. "src/mame/video/k007420.cpp",
--	MAME_DIR .. "src/mame/video/k007420.h",
	MAME_DIR .. "src/mame/video/k037122.cpp",
--	MAME_DIR .. "src/mame/video/k037122.h",
	MAME_DIR .. "src/mame/video/k051316.cpp",
--	MAME_DIR .. "src/mame/video/k051316.h",
	MAME_DIR .. "src/mame/video/k051733.cpp",
--	MAME_DIR .. "src/mame/video/k051733.h",
	MAME_DIR .. "src/mame/video/k051960.cpp",
--	MAME_DIR .. "src/mame/video/k051960.h",
	MAME_DIR .. "src/mame/video/k052109.cpp",
--	MAME_DIR .. "src/mame/video/k052109.h",
	MAME_DIR .. "src/mame/video/k053250.cpp",
--	MAME_DIR .. "src/mame/video/k053250.h",
	MAME_DIR .. "src/mame/video/k053250_ps.cpp",
--	MAME_DIR .. "src/mame/video/k053250_ps.h",
	MAME_DIR .. "src/mame/video/k053251.cpp",
--	MAME_DIR .. "src/mame/video/k053251.h",
	MAME_DIR .. "src/mame/video/k054156_k054157_k056832.cpp",
--	MAME_DIR .. "src/mame/video/k054156_k054157_k056832.h",
	MAME_DIR .. "src/mame/video/k053244_k053245.cpp",
--	MAME_DIR .. "src/mame/video/k053244_k053245.h",
	MAME_DIR .. "src/mame/video/k053246_k053247_k055673.cpp",
--	MAME_DIR .. "src/mame/video/k053246_k053247_k055673.h",
	MAME_DIR .. "src/mame/video/k055555.cpp",
--	MAME_DIR .. "src/mame/video/k055555.h",
	MAME_DIR .. "src/mame/video/k054000.cpp",
--	MAME_DIR .. "src/mame/video/k054000.h",
	MAME_DIR .. "src/mame/video/k054338.cpp",
--	MAME_DIR .. "src/mame/video/k054338.h",
	MAME_DIR .. "src/mame/video/k053936.cpp",
--	MAME_DIR .. "src/mame/video/k053936.h",
	MAME_DIR .. "src/mame/video/k001006.cpp",
--	MAME_DIR .. "src/mame/video/k001006.h",
	MAME_DIR .. "src/mame/video/k001005.cpp",
--	MAME_DIR .. "src/mame/video/k001005.h",
	MAME_DIR .. "src/mame/video/k001604.cpp",
--	MAME_DIR .. "src/mame/video/k001604.h",
	MAME_DIR .. "src/mame/video/k057714.cpp",
--	MAME_DIR .. "src/mame/video/k057714.h",
}

createHBMAMEProjects(_target, _subtarget, "matic")
files {
	MAME_DIR .. "src/mame/drivers/barata.cpp",
}

createHBMAMEProjects(_target, _subtarget, "maygay")
files {
--	MAME_DIR .. "src/mame/includes/maygay1b.h",
--	MAME_DIR .. "src/mame/drivers/maygay1b.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/maygay1bsw.cpp",  --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/maygayv1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/maygayep.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/maygayew.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mmm.cpp",
}

createHBMAMEProjects(_target, _subtarget, "meadows")
files {
	MAME_DIR .. "src/mame/drivers/lazercmd.cpp",
--	MAME_DIR .. "src/mame/includes/lazercmd.h",
	MAME_DIR .. "src/mame/video/lazercmd.cpp",
	MAME_DIR .. "src/mame/drivers/meadwttl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/meadows.cpp",
--	MAME_DIR .. "src/mame/includes/meadows.h",
	MAME_DIR .. "src/mame/audio/meadows.cpp",
	MAME_DIR .. "src/mame/video/meadows.cpp",
	MAME_DIR .. "src/mame/drivers/warpsped.cpp",
}

createHBMAMEProjects(_target, _subtarget, "merit")
files {
	MAME_DIR .. "src/mame/drivers/mgames.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/merit.cpp",
	MAME_DIR .. "src/mame/drivers/merit3xx.cpp",
	MAME_DIR .. "src/mame/drivers/meritm.cpp",
	MAME_DIR .. "src/mame/drivers/merits.cpp",
	MAME_DIR .. "src/mame/drivers/meritsdx.cpp",
	MAME_DIR .. "src/mame/drivers/mtouchxl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/pubtimed.cpp",
--	MAME_DIR .. "src/mame/machine/at.h",
	MAME_DIR .. "src/mame/machine/at.cpp",
}

createHBMAMEProjects(_target, _subtarget, "metro")
files {
	MAME_DIR .. "src/mame/drivers/hyprduel.cpp",
	MAME_DIR .. "src/mame/drivers/metro.cpp",
--	MAME_DIR .. "src/mame/includes/metro.h",
	MAME_DIR .. "src/mame/video/metro.cpp",
	MAME_DIR .. "src/hbmame/drivers/rabbit.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/tmmjprd.cpp",
}

createHBMAMEProjects(_target, _subtarget, "midcoin")
files {
	MAME_DIR .. "src/mame/drivers/wallc.cpp",
	MAME_DIR .. "src/mame/drivers/wink.cpp",
	MAME_DIR .. "src/mame/drivers/24cdjuke.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "midw8080")
files {
	MAME_DIR .. "src/hbmame/drivers/8080bw.cpp", --HBMAME (midway)
--	MAME_DIR .. "src/mame/includes/8080bw.h",
	MAME_DIR .. "src/mame/audio/8080bw.cpp",
--	MAME_DIR .. "src/mame/audio/8080bw.h",
	MAME_DIR .. "src/mame/video/8080bw.cpp",
	MAME_DIR .. "src/mame/drivers/m79amb.cpp",
--	MAME_DIR .. "src/mame/includes/m79amb.h",
	MAME_DIR .. "src/mame/audio/m79amb.cpp",
	MAME_DIR .. "src/mame/drivers/mw8080bw.cpp", --(midway)
--	MAME_DIR .. "src/mame/includes/mw8080bw.h",
	MAME_DIR .. "src/mame/machine/mw8080bw.cpp",
	MAME_DIR .. "src/mame/audio/mw8080bw.cpp",
--	MAME_DIR .. "src/mame/audio/mw8080bw.h",
	MAME_DIR .. "src/mame/audio/nl_gunfight.cpp",
--	MAME_DIR .. "src/mame/audio/nl_gunfight.h",
	MAME_DIR .. "src/mame/audio/nl_280zzzap.cpp",
--	MAME_DIR .. "src/mame/audio/nl_280zzzap.h",
	MAME_DIR .. "src/mame/video/mw8080bw.cpp",
	MAME_DIR .. "src/mame/drivers/rotaryf.cpp",
}

createHBMAMEProjects(_target, _subtarget, "midway")
files {
	MAME_DIR .. "src/hbmame/drivers/astrocde.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/astrocde.h",
	MAME_DIR .. "src/mame/video/astrocde.cpp",
	MAME_DIR .. "src/mame/drivers/atlantis.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/balsente.cpp",
--	MAME_DIR .. "src/mame/includes/balsente.h",
	MAME_DIR .. "src/mame/machine/balsente.cpp",
	MAME_DIR .. "src/mame/video/balsente.cpp",
	MAME_DIR .. "src/mame/drivers/gridlee.cpp",
--	MAME_DIR .. "src/mame/includes/gridlee.h",
	MAME_DIR .. "src/mame/audio/gridlee.cpp",
	MAME_DIR .. "src/mame/video/gridlee.cpp",
	MAME_DIR .. "src/hbmame/drivers/mcr.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mcr.h",
	MAME_DIR .. "src/mame/machine/mcr.cpp",
	MAME_DIR .. "src/mame/video/mcr.cpp",
	MAME_DIR .. "src/hbmame/drivers/mcr3.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mcr3.h",
	MAME_DIR .. "src/mame/video/mcr3.cpp",
	MAME_DIR .. "src/mame/drivers/spyhuntertec.cpp",
	MAME_DIR .. "src/mame/drivers/mcr68.cpp",
--	MAME_DIR .. "src/mame/includes/mcr68.h",
	MAME_DIR .. "src/mame/machine/mcr68.cpp",
	MAME_DIR .. "src/mame/video/mcr68.cpp",
	MAME_DIR .. "src/mame/drivers/zwackery.cpp",
	MAME_DIR .. "src/mame/drivers/midqslvr.cpp",
	MAME_DIR .. "src/hbmame/drivers/midtunit.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/midtunit.h",
	MAME_DIR .. "src/mame/machine/midtunit.cpp",
	MAME_DIR .. "src/mame/video/midtunit.cpp",
	MAME_DIR .. "src/mame/drivers/midvunit.cpp",
--	MAME_DIR .. "src/mame/includes/midvunit.h",
	MAME_DIR .. "src/mame/video/midvunit.cpp",
	MAME_DIR .. "src/hbmame/drivers/midwunit.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/midwunit.h",
	MAME_DIR .. "src/mame/machine/midwunit.cpp",
	MAME_DIR .. "src/mame/drivers/midxunit.cpp",
--	MAME_DIR .. "src/mame/includes/midxunit.h",
	MAME_DIR .. "src/mame/machine/midxunit.cpp",
	MAME_DIR .. "src/hbmame/drivers/midyunit.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/midyunit.h",
	MAME_DIR .. "src/mame/machine/midyunit.cpp",
	MAME_DIR .. "src/mame/video/midyunit.cpp",
	MAME_DIR .. "src/mame/drivers/midzeus.cpp",
--	MAME_DIR .. "src/mame/includes/midzeus.h",
	MAME_DIR .. "src/mame/video/midzeus.cpp",
	MAME_DIR .. "src/mame/drivers/mw18w.cpp",
	MAME_DIR .. "src/mame/drivers/mwsub.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/omegrace.cpp",
--	MAME_DIR .. "src/mame/drivers/pinball2k.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/seattle.cpp",
	MAME_DIR .. "src/mame/drivers/sspeedr.cpp",
--	MAME_DIR .. "src/mame/includes/sspeedr.h",
	MAME_DIR .. "src/mame/audio/nl_sspeedr.cpp",
--	MAME_DIR .. "src/mame/audio/nl_sspeedr.h",
	MAME_DIR .. "src/mame/video/sspeedr.cpp",
	MAME_DIR .. "src/mame/drivers/starrider.cpp",
	MAME_DIR .. "src/mame/drivers/tmaster.cpp",
	MAME_DIR .. "src/mame/drivers/vegas.cpp",
	MAME_DIR .. "src/mame/drivers/wmg.cpp",
	MAME_DIR .. "src/hbmame/drivers/williams.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/williams.h",
	MAME_DIR .. "src/mame/machine/williams.cpp",
	MAME_DIR .. "src/mame/audio/williams.cpp",
--	MAME_DIR .. "src/mame/audio/williams.h",
	MAME_DIR .. "src/mame/video/williams.cpp",
	MAME_DIR .. "src/mame/machine/midwayic.cpp",
--	MAME_DIR .. "src/mame/machine/midwayic.h",
	MAME_DIR .. "src/mame/audio/midway.cpp",
--	MAME_DIR .. "src/mame/audio/midway.h",
	MAME_DIR .. "src/mame/audio/csd.cpp",
--	MAME_DIR .. "src/mame/audio/csd.h",
	MAME_DIR .. "src/mame/audio/sente6vb.cpp",
--	MAME_DIR .. "src/mame/audio/sente6vb.h",
}

createHBMAMEProjects(_target, _subtarget, "mr")
files {
	MAME_DIR .. "src/mame/drivers/dribling.cpp",
--	MAME_DIR .. "src/mame/includes/dribling.h",
	MAME_DIR .. "src/mame/video/dribling.cpp",
	MAME_DIR .. "src/mame/drivers/sshot.cpp",
--	MAME_DIR .. "src/mame/drivers/subhuntr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "namco")
files {
	MAME_DIR .. "src/mame/drivers/20pacgal.cpp",
--	MAME_DIR .. "src/mame/includes/20pacgal.h",
	MAME_DIR .. "src/mame/video/20pacgal.cpp",
	MAME_DIR .. "src/mame/drivers/30test.cpp",
	MAME_DIR .. "src/mame/drivers/baraduke.cpp",
--	MAME_DIR .. "src/mame/includes/baraduke.h",
	MAME_DIR .. "src/mame/video/baraduke.cpp",
	MAME_DIR .. "src/mame/drivers/cgang.cpp",
	MAME_DIR .. "src/mame/drivers/cswat.cpp",
	MAME_DIR .. "src/mame/drivers/dambustr.cpp",
	MAME_DIR .. "src/mame/drivers/dangbar.cpp",
	MAME_DIR .. "src/mame/drivers/dkmb.cpp",
	MAME_DIR .. "src/mame/drivers/gal3.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/galaga.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/galaga.h",
	MAME_DIR .. "src/mame/audio/galaga.cpp",
	MAME_DIR .. "src/mame/video/galaga.cpp",
	MAME_DIR .. "src/mame/video/bosco.cpp",
--	MAME_DIR .. "src/mame/includes/bosco.h",
	MAME_DIR .. "src/mame/video/starfield_05xx.cpp",
--	MAME_DIR .. "src/mame/video/starfield_05xx.h",
	MAME_DIR .. "src/mame/video/digdug.cpp",
--	MAME_DIR .. "src/mame/includes/digdug.h",
	MAME_DIR .. "src/mame/machine/xevious.cpp",
--	MAME_DIR .. "src/mame/includes/xevious.h",
	MAME_DIR .. "src/mame/video/xevious.cpp",
	MAME_DIR .. "src/hbmame/drivers/galaxian.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/galaxian.h",
    MAME_DIR .. "src/mame/drivers/galaxian_rockclim.cpp",
	MAME_DIR .. "src/mame/audio/galaxian.cpp",
--	MAME_DIR .. "src/mame/audio/galaxian.h",
	MAME_DIR .. "src/mame/video/galaxian.cpp",
--	MAME_DIR .. "src/mame/audio/nl_konami.h",
	MAME_DIR .. "src/mame/audio/nl_konami.cpp",
	MAME_DIR .. "src/mame/drivers/galaxold.cpp",
--	MAME_DIR .. "src/mame/includes/galaxold.h",
	MAME_DIR .. "src/mame/machine/galaxold.cpp",
	MAME_DIR .. "src/mame/video/galaxold.cpp",
	MAME_DIR .. "src/mame/drivers/gaplus.cpp",
--	MAME_DIR .. "src/mame/includes/gaplus.h",
	MAME_DIR .. "src/mame/machine/gaplus.cpp",
	MAME_DIR .. "src/mame/video/gaplus.cpp",
	MAME_DIR .. "src/mame/drivers/kungfur.cpp",
	MAME_DIR .. "src/hbmame/drivers/mappy.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mappy.h",
	MAME_DIR .. "src/mame/video/mappy.cpp",
	MAME_DIR .. "src/mame/drivers/namcofl.cpp",
--	MAME_DIR .. "src/mame/includes/namcofl.h",
	MAME_DIR .. "src/mame/video/namcofl.cpp",
	MAME_DIR .. "src/hbmame/drivers/namcona1.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/namcona1.h",
	MAME_DIR .. "src/mame/video/namcona1.cpp",
	MAME_DIR .. "src/mame/drivers/namconb1.cpp",
--	MAME_DIR .. "src/mame/includes/namconb1.h",
	MAME_DIR .. "src/mame/video/namconb1.cpp",
	MAME_DIR .. "src/mame/drivers/namcond1.cpp",
--	MAME_DIR .. "src/mame/includes/namcond1.h",
	MAME_DIR .. "src/mame/machine/namcond1.cpp",
	MAME_DIR .. "src/mame/video/ygv608.cpp",
--	MAME_DIR .. "src/mame/video/ygv608.h",
	MAME_DIR .. "src/mame/drivers/namcops2.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/namcos1.cpp",
--	MAME_DIR .. "src/mame/includes/namcos1.h",
	MAME_DIR .. "src/mame/machine/namcos1.cpp",
	MAME_DIR .. "src/mame/video/namcos1.cpp",
	MAME_DIR .. "src/mame/drivers/namcos1b.cpp",
	MAME_DIR .. "src/mame/drivers/namcos10.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/machine/ns10crypt.cpp",
--	MAME_DIR .. "src/mame/machine/ns10crypt.h",
	MAME_DIR .. "src/mame/drivers/namcos11.cpp",
	MAME_DIR .. "src/mame/machine/ns11prot.cpp",
--	MAME_DIR .. "src/mame/machine/ns11prot.h",
	MAME_DIR .. "src/mame/drivers/namcos12.cpp",
	MAME_DIR .. "src/mame/machine/namco_settings.cpp",
--	MAME_DIR .. "src/mame/machine/namco_settings.h",
	MAME_DIR .. "src/hbmame/drivers/namcos2.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/namcos2.h",
	MAME_DIR .. "src/mame/machine/namcos2.cpp",
	MAME_DIR .. "src/mame/video/namcos2.cpp",
    MAME_DIR .. "src/mame/video/namco_c45road.cpp",
--	MAME_DIR .. "src/mame/video/namco_c45road.h",
	MAME_DIR .. "src/mame/video/namco_c169roz.cpp",
--	MAME_DIR .. "src/mame/video/namco_c169roz.h",
	MAME_DIR .. "src/mame/video/namco_c355spr.cpp",
--	MAME_DIR .. "src/mame/video/namco_c355spr.h",
	MAME_DIR .. "src/mame/video/namco_c123tmap.cpp",
--	MAME_DIR .. "src/mame/video/namco_c123tmap.h",
	MAME_DIR .. "src/mame/video/namcos2_sprite.cpp",
--	MAME_DIR .. "src/mame/video/namcos2_sprite.h",
	MAME_DIR .. "src/mame/video/namcos2_roz.cpp",
--	MAME_DIR .. "src/mame/video/namcos2_roz.h",
	MAME_DIR .. "src/mame/drivers/namcos21.cpp",
	MAME_DIR .. "src/mame/drivers/namcos21_de.cpp",
	MAME_DIR .. "src/mame/drivers/namcos21_c67.cpp",
	MAME_DIR .. "src/mame/video/namcos21_3d.cpp",
--	MAME_DIR .. "src/mame/video/namcos21_3d.h",
	MAME_DIR .. "src/mame/machine/namcos21_dsp.cpp",
--	MAME_DIR .. "src/mame/machine/namcos21_dsp.h",
	MAME_DIR .. "src/mame/machine/namcos21_dsp_c67.cpp",
--	MAME_DIR .. "src/mame/machine/namcos21_dsp_c67.h",
	MAME_DIR .. "src/mame/machine/namco_c67.cpp",
--	MAME_DIR .. "src/mame/machine/namco_c67.h",
	MAME_DIR .. "src/mame/drivers/namcos22.cpp",
--	MAME_DIR .. "src/mame/includes/namcos22.h",
	MAME_DIR .. "src/mame/video/namcos22.cpp",
	MAME_DIR .. "src/mame/drivers/namcos23.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/namcos86.cpp",
--	MAME_DIR .. "src/mame/includes/namcos86.h",
	MAME_DIR .. "src/mame/video/namcos86.cpp",
	MAME_DIR .. "src/hbmame/drivers/pacland.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/pacland.h",
	MAME_DIR .. "src/mame/video/pacland.cpp",
	MAME_DIR .. "src/hbmame/drivers/polepos.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/polepos.h",
	MAME_DIR .. "src/mame/audio/polepos.cpp",
--	MAME_DIR .. "src/mame/audio/polepos.h",
	MAME_DIR .. "src/mame/video/polepos.cpp",
	MAME_DIR .. "src/hbmame/drivers/rallyx.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/rallyx.h",
	MAME_DIR .. "src/mame/video/rallyx.cpp",
	MAME_DIR .. "src/mame/drivers/shootaway2.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/skykid.cpp",
--	MAME_DIR .. "src/mame/includes/skykid.h",
	MAME_DIR .. "src/mame/video/skykid.cpp",
	MAME_DIR .. "src/mame/drivers/sweetland.cpp",
--	MAME_DIR .. "src/mame/audio/nl_tankbatt.h",
	MAME_DIR .. "src/mame/audio/nl_tankbatt.cpp",
	MAME_DIR .. "src/mame/drivers/tankbatt.cpp",
--	MAME_DIR .. "src/mame/includes/tankbatt.h",
	MAME_DIR .. "src/mame/video/tankbatt.cpp",
	MAME_DIR .. "src/mame/drivers/tceptor.cpp",
--	MAME_DIR .. "src/mame/includes/tceptor.h",
	MAME_DIR .. "src/mame/video/tceptor.cpp",
	MAME_DIR .. "src/mame/drivers/toypop.cpp",
	MAME_DIR .. "src/mame/drivers/turrett.cpp",
--	MAME_DIR .. "src/mame/includes/turrett.h",
	MAME_DIR .. "src/mame/audio/turrett.cpp",
	MAME_DIR .. "src/mame/video/turrett.cpp",
	MAME_DIR .. "src/mame/drivers/wacky_gator.cpp",
	MAME_DIR .. "src/mame/drivers/warpwarp.cpp",
--	MAME_DIR .. "src/mame/includes/warpwarp.h",
	MAME_DIR .. "src/mame/audio/geebee.cpp",
--	MAME_DIR .. "src/mame/audio/geebee.h",
	MAME_DIR .. "src/mame/audio/warpwarp.cpp",
--	MAME_DIR .. "src/mame/audio/warpwarp.h",
	MAME_DIR .. "src/mame/video/warpwarp.cpp",
	MAME_DIR .. "src/mame/machine/c117.cpp",
--	MAME_DIR .. "src/mame/machine/c117.h",
	MAME_DIR .. "src/mame/machine/namcoio.cpp",
--	MAME_DIR .. "src/mame/machine/namcoio.h",
	MAME_DIR .. "src/mame/machine/namco06.cpp",
--	MAME_DIR .. "src/mame/machine/namco06.h",
	MAME_DIR .. "src/mame/machine/namco50.cpp",
--	MAME_DIR .. "src/mame/machine/namco50.h",
	MAME_DIR .. "src/mame/machine/namco51.cpp",
--	MAME_DIR .. "src/mame/machine/namco51.h",
	MAME_DIR .. "src/mame/machine/namco53.cpp",
--	MAME_DIR .. "src/mame/machine/namco53.h",
	MAME_DIR .. "src/mame/machine/namco62.cpp",
--	MAME_DIR .. "src/mame/machine/namco62.h",
	MAME_DIR .. "src/mame/machine/namco65.cpp",
--	MAME_DIR .. "src/mame/machine/namco65.h",
	MAME_DIR .. "src/mame/machine/namco68.cpp",
--	MAME_DIR .. "src/mame/machine/namco68.h",
	MAME_DIR .. "src/mame/machine/namcomcu.cpp",
--	MAME_DIR .. "src/mame/machine/namcomcu.h",
	MAME_DIR .. "src/mame/machine/namcoio_gearbox.cpp",
--	MAME_DIR .. "src/mame/machine/namcoio_gearbox.h",
	MAME_DIR .. "src/mame/machine/namco_c148.cpp",
--	MAME_DIR .. "src/mame/machine/namco_c148.h",
	MAME_DIR .. "src/mame/machine/namco_c139.cpp",
--	MAME_DIR .. "src/mame/machine/namco_c139.h",
	MAME_DIR .. "src/mame/audio/namco52.cpp",
--	MAME_DIR .. "src/mame/audio/namco52.h",
	MAME_DIR .. "src/mame/audio/namco54.cpp",
--	MAME_DIR .. "src/mame/audio/namco54.h",
	MAME_DIR .. "src/mame/video/namco_c116.cpp",
--	MAME_DIR .. "src/mame/video/namco_c116.h",
}

createHBMAMEProjects(_target, _subtarget, "nasco")
files {
	MAME_DIR .. "src/mame/drivers/crgolf.cpp",
--	MAME_DIR .. "src/mame/includes/crgolf.h",
	MAME_DIR .. "src/mame/video/crgolf.cpp",
	MAME_DIR .. "src/mame/drivers/himesiki.cpp",
--	MAME_DIR .. "src/mame/includes/himesiki.h",
	MAME_DIR .. "src/mame/video/himesiki.cpp",
	MAME_DIR .. "src/mame/drivers/suprgolf.cpp",
}

createHBMAMEProjects(_target, _subtarget, "neogeo")
files {
	MAME_DIR .. "src/hbmame/drivers/neogeo.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/neogeohb.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/neogeo1.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof94.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof95.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof96.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof97.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof98.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof99.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof2000.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof2001.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof2002.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/kof2003.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mgd2.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslug.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslug2.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslug3.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslug4.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslug5.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/mslugx.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngdoubledr.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/nggaroup.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngkofmisc.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/nglastblade.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngrbff.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngrotd.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngsamsho.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngsengoku.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngsvc.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/ngwh.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/video/neogeo.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/neogeo_noslot.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/video/neogeo_spr.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/machine/ng_memcard.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo/prot.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo/banked_cart.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/ctrl.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/joystick.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/mahjong.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/dial.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/irrmaze.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/bus/neogeo_ctrl/kizuna4p.cpp", --HBMAME
}

createHBMAMEProjects(_target, _subtarget, "nichibut")
files {
	MAME_DIR .. "src/mame/drivers/armedf.cpp",
--	MAME_DIR .. "src/mame/includes/armedf.h",
	MAME_DIR .. "src/mame/video/armedf.cpp",
	MAME_DIR .. "src/hbmame/drivers/cclimber.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cclimber.h",
	MAME_DIR .. "src/mame/machine/cclimber.cpp",
	MAME_DIR .. "src/mame/audio/cclimber.cpp",
--	MAME_DIR .. "src/mame/audio/cclimber.h",
	MAME_DIR .. "src/mame/video/cclimber.cpp",
	MAME_DIR .. "src/mame/drivers/clshroad.cpp",
--	MAME_DIR .. "src/mame/includes/clshroad.h",
	MAME_DIR .. "src/mame/video/clshroad.cpp",
	MAME_DIR .. "src/mame/drivers/csplayh5.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/cop01.cpp",
--	MAME_DIR .. "src/mame/includes/cop01.h",
	MAME_DIR .. "src/mame/video/cop01.cpp",
	MAME_DIR .. "src/mame/drivers/dacholer.cpp",
	MAME_DIR .. "src/mame/drivers/galivan.cpp",
--	MAME_DIR .. "src/mame/includes/galivan.h",
	MAME_DIR .. "src/mame/video/galivan.cpp",
	MAME_DIR .. "src/mame/drivers/gomoku.cpp",
--	MAME_DIR .. "src/mame/includes/gomoku.h",
	MAME_DIR .. "src/mame/audio/gomoku.cpp",
--	MAME_DIR .. "src/mame/audio/gomoku.h",
	MAME_DIR .. "src/mame/video/gomoku.cpp",
	MAME_DIR .. "src/mame/drivers/hyhoo.cpp",
--	MAME_DIR .. "src/mame/includes/hyhoo.h",
	MAME_DIR .. "src/mame/video/hyhoo.cpp",
	MAME_DIR .. "src/mame/drivers/jangou.cpp",
	MAME_DIR .. "src/mame/drivers/magmax.cpp",
--	MAME_DIR .. "src/mame/includes/magmax.h",
	MAME_DIR .. "src/mame/video/magmax.cpp",
	MAME_DIR .. "src/mame/drivers/nbmj8688.cpp",
--	MAME_DIR .. "src/mame/includes/nbmj8688.h",
	MAME_DIR .. "src/mame/video/nbmj8688.cpp",
	MAME_DIR .. "src/mame/drivers/nbmj8891.cpp",
--	MAME_DIR .. "src/mame/includes/nbmj8891.h",
	MAME_DIR .. "src/mame/video/nbmj8891.cpp",
	MAME_DIR .. "src/mame/drivers/nbmj8900.cpp",
--	MAME_DIR .. "src/mame/includes/nbmj8900.h",
	MAME_DIR .. "src/mame/video/nbmj8900.cpp",
	MAME_DIR .. "src/mame/drivers/nbmj8991.cpp",
--	MAME_DIR .. "src/mame/includes/nbmj8991.h",
	MAME_DIR .. "src/mame/video/nbmj8991.cpp",
	MAME_DIR .. "src/mame/drivers/nbmj9195.cpp",
--	MAME_DIR .. "src/mame/includes/nbmj9195.h",
	MAME_DIR .. "src/mame/video/nbmj9195.cpp",
	MAME_DIR .. "src/mame/drivers/nightgal.cpp",
	MAME_DIR .. "src/mame/drivers/nichild.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/audio/nichisnd.cpp",
--	MAME_DIR .. "src/mame/audio/nichisnd.h",
	MAME_DIR .. "src/mame/drivers/niyanpai.cpp",
--	MAME_DIR .. "src/mame/includes/niyanpai.h",
	MAME_DIR .. "src/mame/video/niyanpai.cpp",
	MAME_DIR .. "src/mame/drivers/pastelg.cpp",
--	MAME_DIR .. "src/mame/includes/pastelg.h",
	MAME_DIR .. "src/mame/video/pastelg.cpp",
	MAME_DIR .. "src/mame/drivers/seicross.cpp",
--	MAME_DIR .. "src/mame/includes/seicross.h",
	MAME_DIR .. "src/mame/video/seicross.cpp",
	MAME_DIR .. "src/hbmame/drivers/terracre.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/terracre.h",
	MAME_DIR .. "src/mame/video/terracre.cpp",
	MAME_DIR .. "src/mame/drivers/tubep.cpp",
--	MAME_DIR .. "src/mame/includes/tubep.h",
	MAME_DIR .. "src/mame/video/tubep.cpp",
	MAME_DIR .. "src/mame/drivers/wiping.cpp",
--	MAME_DIR .. "src/mame/includes/wiping.h",
	MAME_DIR .. "src/mame/audio/wiping.cpp",
--	MAME_DIR .. "src/mame/audio/wiping.h",
	MAME_DIR .. "src/mame/video/wiping.cpp",
	MAME_DIR .. "src/mame/machine/nb1412m2.cpp",
--	MAME_DIR .. "src/mame/machine/nb1412m2.h",
	MAME_DIR .. "src/mame/machine/nb1413m3.cpp",
--	MAME_DIR .. "src/mame/machine/nb1413m3.h",
	MAME_DIR .. "src/mame/machine/nb1414m4.cpp",
--	MAME_DIR .. "src/mame/machine/nb1414m4.h",
}

createHBMAMEProjects(_target, _subtarget, "nintendo")
files {
	MAME_DIR .. "src/mame/drivers/cham24.cpp",
	MAME_DIR .. "src/hbmame/drivers/dkong.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/dkong.h",
	MAME_DIR .. "src/mame/audio/dkong.cpp",
	MAME_DIR .. "src/mame/video/dkong.cpp",
	MAME_DIR .. "src/hbmame/drivers/mario.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mario.h",
	MAME_DIR .. "src/mame/audio/nl_mario.cpp",
--	MAME_DIR .. "src/mame/audio/nl_mario.h",
	MAME_DIR .. "src/mame/audio/mario.cpp",
	MAME_DIR .. "src/mame/video/mario.cpp",
	MAME_DIR .. "src/mame/drivers/mmagic.cpp",
	MAME_DIR .. "src/mame/drivers/multigam.cpp",
	MAME_DIR .. "src/mame/drivers/n8080.cpp",
--	MAME_DIR .. "src/mame/includes/n8080.h",
	MAME_DIR .. "src/mame/audio/n8080.cpp",
	MAME_DIR .. "src/mame/video/n8080.cpp",
	MAME_DIR .. "src/mame/drivers/nss.cpp",
	MAME_DIR .. "src/mame/machine/snes.cpp",
	MAME_DIR .. "src/hbmame/drivers/playch10.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/playch10.h",
	MAME_DIR .. "src/mame/machine/playch10.cpp",
	MAME_DIR .. "src/mame/video/playch10.cpp",
	MAME_DIR .. "src/mame/drivers/popeye.cpp",
--	MAME_DIR .. "src/mame/includes/popeye.h",
	MAME_DIR .. "src/mame/video/popeye.cpp",
	MAME_DIR .. "src/mame/audio/nl_popeye.cpp",
--  MAME_DIR .. "src/mame/audio/nl_popeye.h",
	MAME_DIR .. "src/mame/drivers/punchout.cpp",
--	MAME_DIR .. "src/mame/includes/punchout.h",
	MAME_DIR .. "src/mame/video/punchout.cpp",
	MAME_DIR .. "src/mame/drivers/famibox.cpp",
	MAME_DIR .. "src/mame/drivers/sfcbox.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/snesb51.cpp",
	MAME_DIR .. "src/hbmame/drivers/snesb.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/spacefb.cpp",
--	MAME_DIR .. "src/mame/includes/spacefb.h",
	MAME_DIR .. "src/mame/audio/spacefb.cpp",
	MAME_DIR .. "src/mame/video/spacefb.cpp",
	MAME_DIR .. "src/hbmame/drivers/vsnes.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/vsnes.h",
	MAME_DIR .. "src/mame/machine/vsnes.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nix")
files {
	MAME_DIR .. "src/mame/drivers/fitfight.cpp",
--	MAME_DIR .. "src/mame/includes/fitfight.h",
	MAME_DIR .. "src/mame/video/fitfight.cpp",
	MAME_DIR .. "src/mame/drivers/pirates.cpp",
--	MAME_DIR .. "src/mame/includes/pirates.h",
	MAME_DIR .. "src/mame/video/pirates.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nmk")
files {
	MAME_DIR .. "src/mame/drivers/acommand.cpp",
	MAME_DIR .. "src/mame/drivers/cultures.cpp",
	MAME_DIR .. "src/mame/drivers/ddealer.cpp",
	MAME_DIR .. "src/mame/drivers/jalmah.cpp",
	MAME_DIR .. "src/mame/drivers/macrossp.cpp",
--	MAME_DIR .. "src/mame/includes/macrossp.h",
	MAME_DIR .. "src/mame/video/macrossp.cpp",
	MAME_DIR .. "src/hbmame/drivers/nmk16.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/nmk16.h",
	MAME_DIR .. "src/mame/machine/nmk004.cpp",
--	MAME_DIR .. "src/mame/machine/nmk004.h",
	MAME_DIR .. "src/mame/video/nmk16.cpp",
	MAME_DIR .. "src/mame/video/nmk16spr.cpp",
--	MAME_DIR .. "src/mame/video/nmk16spr.h",
	MAME_DIR .. "src/mame/drivers/nmkmedal.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/powerins.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/powerins.h",
	MAME_DIR .. "src/mame/video/powerins.cpp",
	MAME_DIR .. "src/mame/drivers/quizdna.cpp",
--	MAME_DIR .. "src/mame/includes/quizdna.h",
	MAME_DIR .. "src/mame/video/quizdna.cpp",
	MAME_DIR .. "src/mame/drivers/quizpani.cpp",
--	MAME_DIR .. "src/mame/includes/quizpani.h",
	MAME_DIR .. "src/mame/video/quizpani.cpp",
}

createHBMAMEProjects(_target, _subtarget, "olympia")
files {
	MAME_DIR .. "src/mame/drivers/dday.cpp",
--	MAME_DIR .. "src/mame/includes/dday.h",
	MAME_DIR .. "src/mame/video/dday.cpp",
	MAME_DIR .. "src/mame/drivers/lbeach.cpp",
	MAME_DIR .. "src/mame/drivers/monzagp.cpp",
	MAME_DIR .. "src/mame/drivers/portrait.cpp",
--	MAME_DIR .. "src/mame/includes/portrait.h",
	MAME_DIR .. "src/mame/video/portrait.cpp",
	MAME_DIR .. "src/mame/drivers/vega.cpp",
}

createHBMAMEProjects(_target, _subtarget, "omori")
files {
	MAME_DIR .. "src/mame/drivers/battlex.cpp",
--	MAME_DIR .. "src/mame/includes/battlex.h",
	MAME_DIR .. "src/mame/video/battlex.cpp",
	MAME_DIR .. "src/mame/drivers/carjmbre.cpp",
	MAME_DIR .. "src/mame/drivers/popper.cpp",
	MAME_DIR .. "src/mame/drivers/spaceg.cpp",
}

createHBMAMEProjects(_target, _subtarget, "orca")
files {
	MAME_DIR .. "src/mame/drivers/espial.cpp",
--	MAME_DIR .. "src/mame/includes/espial.h",
	MAME_DIR .. "src/mame/video/espial.cpp",
	MAME_DIR .. "src/mame/drivers/funkybee.cpp",
--	MAME_DIR .. "src/mame/includes/funkybee.h",
	MAME_DIR .. "src/mame/video/funkybee.cpp",
	MAME_DIR .. "src/mame/drivers/marineb.cpp",
--	MAME_DIR .. "src/mame/includes/marineb.h",
	MAME_DIR .. "src/mame/video/marineb.cpp",
	MAME_DIR .. "src/mame/video/orca40c.cpp",
--	MAME_DIR .. "src/mame/video/orca40c.h",
	MAME_DIR .. "src/mame/drivers/vastar.cpp",
--	MAME_DIR .. "src/mame/includes/vastar.h",
	MAME_DIR .. "src/mame/video/vastar.cpp",
	MAME_DIR .. "src/mame/drivers/zodiack.cpp",
--	MAME_DIR .. "src/mame/includes/zodiack.h",
}

createHBMAMEProjects(_target, _subtarget, "pacific")
files {
	MAME_DIR .. "src/mame/drivers/mrflea.cpp",
--	MAME_DIR .. "src/mame/includes/mrflea.h",
	MAME_DIR .. "src/mame/video/mrflea.cpp",
	MAME_DIR .. "src/mame/drivers/thief.cpp",
--	MAME_DIR .. "src/mame/includes/thief.h",
	MAME_DIR .. "src/mame/video/thief.cpp",
}

createHBMAMEProjects(_target, _subtarget, "puckman")
files {
	MAME_DIR .. "src/hbmame/drivers/jrpacman.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/puckman.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/video/puckman.cpp", --HBMAME
--  MAME_DIR .. "src/mame/machine/pacman.cpp",
--	MAME_DIR .. "src/mame/machine/jumpshot.cpp", --I don't know what it is for
--	MAME_DIR .. "src/mame/machine/jumpshot.h",
--	MAME_DIR .. "src/mame/machine/pacplus.cpp", --I don't know what it is for
--	MAME_DIR .. "src/mame/machine/pacplus.h",
	MAME_DIR .. "src/hbmame/drivers/pengo.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/schick.cpp",
}

createHBMAMEProjects(_target, _subtarget, "pce")
files {
	MAME_DIR .. "src/mame/drivers/ggconnie.cpp",
	MAME_DIR .. "src/mame/drivers/paranoia.cpp",
	MAME_DIR .. "src/mame/drivers/tourvis.cpp",
	MAME_DIR .. "src/mame/drivers/uapce.cpp",
	MAME_DIR .. "src/mame/machine/pcecommn.cpp",
--	MAME_DIR .. "src/mame/machine/pcecommn.h",
}

createHBMAMEProjects(_target, _subtarget, "phoenix")
files {
	MAME_DIR .. "src/mame/drivers/naughtyb.cpp",
--	MAME_DIR .. "src/mame/includes/naughtyb.h",
	MAME_DIR .. "src/mame/video/naughtyb.cpp",
	MAME_DIR .. "src/hbmame/drivers/phoenix.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/phoenix.h",
	MAME_DIR .. "src/mame/audio/phoenix.cpp",
--	MAME_DIR .. "src/mame/audio/phoenix.h",
	MAME_DIR .. "src/mame/video/phoenix.cpp",
	MAME_DIR .. "src/mame/drivers/safarir.cpp",
	MAME_DIR .. "src/mame/audio/pleiads.cpp",
--	MAME_DIR .. "src/mame/audio/pleiads.h",
}

createHBMAMEProjects(_target, _subtarget, "playmark")
files {
	MAME_DIR .. "src/mame/drivers/drtomy.cpp",
	MAME_DIR .. "src/mame/drivers/playmark.cpp",
--	MAME_DIR .. "src/mame/includes/playmark.h",
	MAME_DIR .. "src/mame/video/playmark.cpp",
	MAME_DIR .. "src/mame/drivers/powerbal.cpp",
	MAME_DIR .. "src/mame/drivers/sderby.cpp",
--	MAME_DIR .. "src/mame/includes/sderby.h",
	MAME_DIR .. "src/mame/video/sderby.cpp",
	MAME_DIR .. "src/mame/drivers/sslam.cpp",
--	MAME_DIR .. "src/mame/includes/sslam.h",
	MAME_DIR .. "src/mame/video/sslam.cpp",
}

createHBMAMEProjects(_target, _subtarget, "promat")
files {
	MAME_DIR .. "src/mame/drivers/1945kiii.cpp",
	MAME_DIR .. "src/mame/drivers/3x3puzzl.cpp",
	MAME_DIR .. "src/mame/drivers/gstream.cpp",
}

createHBMAMEProjects(_target, _subtarget, "psikyo")
files {
	MAME_DIR .. "src/hbmame/drivers/psikyo.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/psikyo.h",
	MAME_DIR .. "src/mame/video/psikyo.cpp",
	MAME_DIR .. "src/mame/drivers/psikyo4.cpp",
--	MAME_DIR .. "src/mame/includes/psikyo4.h",
	MAME_DIR .. "src/mame/video/psikyo4.cpp",
	MAME_DIR .. "src/hbmame/drivers/psikyosh.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/psikyosh.h",
	MAME_DIR .. "src/mame/video/psikyosh.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ramtek")
files {
	MAME_DIR .. "src/mame/drivers/hitme.cpp",
--	MAME_DIR .. "src/mame/includes/hitme.h",
	MAME_DIR .. "src/mame/audio/hitme.cpp",
	MAME_DIR .. "src/mame/drivers/ramtek.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/starcrus.cpp",
--	MAME_DIR .. "src/mame/includes/starcrus.h",
	MAME_DIR .. "src/mame/video/starcrus.cpp",
	MAME_DIR .. "src/mame/audio/nl_starcrus.cpp",
--	MAME_DIR .. "src/mame/audio/nl_starcrus.h",
}

createHBMAMEProjects(_target, _subtarget, "rare")
files {
	MAME_DIR .. "src/mame/drivers/btoads.cpp",
--	MAME_DIR .. "src/mame/includes/btoads.h",
	MAME_DIR .. "src/mame/video/btoads.cpp",
	MAME_DIR .. "src/mame/drivers/kinst.cpp",
	MAME_DIR .. "src/mame/drivers/xtheball.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sanritsu")
files {
	MAME_DIR .. "src/mame/drivers/appoooh.cpp",
--	MAME_DIR .. "src/mame/includes/appoooh.h",
	MAME_DIR .. "src/mame/video/appoooh.cpp",
	MAME_DIR .. "src/mame/drivers/bankp.cpp",
--	MAME_DIR .. "src/mame/includes/bankp.h",
	MAME_DIR .. "src/mame/video/bankp.cpp",
	MAME_DIR .. "src/mame/drivers/chinsan.cpp",
	MAME_DIR .. "src/mame/drivers/drmicro.cpp",
--	MAME_DIR .. "src/mame/includes/drmicro.h",
	MAME_DIR .. "src/mame/video/drmicro.cpp",
	MAME_DIR .. "src/mame/drivers/jantotsu.cpp",
	MAME_DIR .. "src/mame/drivers/mermaid.cpp",
--	MAME_DIR .. "src/mame/includes/mermaid.h",
	MAME_DIR .. "src/mame/video/mermaid.cpp",
	MAME_DIR .. "src/mame/drivers/mjkjidai.cpp",
--	MAME_DIR .. "src/mame/includes/mjkjidai.h",
	MAME_DIR .. "src/mame/video/mjkjidai.cpp",
	MAME_DIR .. "src/mame/drivers/ron.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sega")
files {
	MAME_DIR .. "src/mame/drivers/angelkds.cpp",
--	MAME_DIR .. "src/mame/includes/angelkds.h",
	MAME_DIR .. "src/mame/video/angelkds.cpp",
	MAME_DIR .. "src/mame/drivers/bingoc.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/blockade.cpp",
	MAME_DIR .. "src/mame/drivers/calorie.cpp",
	MAME_DIR .. "src/mame/drivers/chihiro.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/xbox_nv2a.h",
	MAME_DIR .. "src/mame/video/xbox_nv2a.cpp",
	MAME_DIR .. "src/mame/drivers/coolridr.cpp",
	MAME_DIR .. "src/mame/drivers/deniam.cpp",
--	MAME_DIR .. "src/mame/includes/deniam.h",
	MAME_DIR .. "src/mame/video/deniam.cpp",
	MAME_DIR .. "src/hbmame/drivers/dotrikun.cpp", --HBMAME (misc)
--	MAME_DIR .. "src/mame/drivers/fwheel.cpp",
	MAME_DIR .. "src/mame/drivers/gpworld.cpp",
	MAME_DIR .. "src/mame/drivers/hikaru.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/hshavoc.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/kopunch.cpp",
--	MAME_DIR .. "src/mame/includes/kopunch.h",
	MAME_DIR .. "src/mame/video/kopunch.cpp",
	MAME_DIR .. "src/mame/drivers/lindbergh.cpp",
	MAME_DIR .. "src/mame/drivers/sderby2.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/machine/segabb.cpp",
--	MAME_DIR .. "src/mame/machine/segabb.h",
	MAME_DIR .. "src/mame/machine/megadriv.cpp",
--	MAME_DIR .. "src/mame/includes/megadriv.h",
	MAME_DIR .. "src/mame/drivers/megadriv_acbl.cpp",
--	MAME_DIR .. "src/mame/includes/megadriv_acbl.h",
	MAME_DIR .. "src/mame/drivers/megaplay.cpp",
	MAME_DIR .. "src/mame/drivers/megatech.cpp",
	MAME_DIR .. "src/mame/drivers/calcune.cpp",
	MAME_DIR .. "src/mame/drivers/model1.cpp",
--	MAME_DIR .. "src/mame/includes/model1.h",
	MAME_DIR .. "src/mame/machine/model1.cpp",
	MAME_DIR .. "src/mame/video/model1.cpp",
	MAME_DIR .. "src/mame/machine/s32comm.cpp",
--	MAME_DIR .. "src/mame/machine/s32comm.h",
	MAME_DIR .. "src/mame/machine/m1comm.cpp",
--	MAME_DIR .. "src/mame/machine/m1comm.h",
	MAME_DIR .. "src/mame/machine/m2comm.cpp",
--	MAME_DIR .. "src/mame/machine/m2comm.h",
	MAME_DIR .. "src/mame/audio/dsbz80.cpp",
--	MAME_DIR .. "src/mame/audio/dsbz80.h",
	MAME_DIR .. "src/hbmame/drivers/model2.cpp", --HBMAME
	MAME_DIR .. "src/mame/machine/model2.cpp",
--	MAME_DIR .. "src/mame/includes/model2.h",
	MAME_DIR .. "src/mame/video/model2rd.hxx",
	MAME_DIR .. "src/mame/video/model2.cpp",
	MAME_DIR .. "src/mame/drivers/model3.cpp",
--	MAME_DIR .. "src/mame/includes/model3.h",
	MAME_DIR .. "src/mame/video/model3.cpp",
	MAME_DIR .. "src/mame/machine/model3.cpp",
	MAME_DIR .. "src/mame/drivers/monacogp.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/naomi.cpp",
--	MAME_DIR .. "src/mame/includes/naomi.h",
--	MAME_DIR .. "src/mame/includes/dc.h",
	MAME_DIR .. "src/mame/drivers/segasp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/segasp.h",
	MAME_DIR .. "src/mame/machine/dc.cpp",
	MAME_DIR .. "src/mame/drivers/y2.cpp",
	MAME_DIR .. "src/mame/video/powervr2.cpp",
--	MAME_DIR .. "src/mame/video/powervr2.h",
	MAME_DIR .. "src/mame/machine/gunsense.cpp",
--	MAME_DIR .. "src/mame/machine/gunsense.h",
	MAME_DIR .. "src/mame/machine/naomi.cpp",
	MAME_DIR .. "src/mame/machine/naomig1.cpp",
--	MAME_DIR .. "src/mame/machine/naomig1.h",
	MAME_DIR .. "src/mame/machine/naomibd.cpp",
--	MAME_DIR .. "src/mame/machine/naomibd.h",
	MAME_DIR .. "src/mame/machine/naomirom.cpp",
--	MAME_DIR .. "src/mame/machine/naomirom.h",
	MAME_DIR .. "src/mame/machine/naomigd.cpp",
--	MAME_DIR .. "src/mame/machine/naomigd.h",
	MAME_DIR .. "src/mame/machine/naomim1.cpp",
--	MAME_DIR .. "src/mame/machine/naomim1.h",
	MAME_DIR .. "src/mame/machine/naomim2.cpp",
--	MAME_DIR .. "src/mame/machine/naomim2.h",
	MAME_DIR .. "src/mame/machine/naomim4.cpp",
--	MAME_DIR .. "src/mame/machine/naomim4.h",
	MAME_DIR .. "src/mame/machine/gdrom.cpp",
--	MAME_DIR .. "src/mame/machine/gdrom.h",
	MAME_DIR .. "src/mame/machine/m3comm.cpp",
--	MAME_DIR .. "src/mame/machine/m3comm.h",
	MAME_DIR .. "src/mame/machine/315-5881_crypt.cpp",
--	MAME_DIR .. "src/mame/machine/315-5881_crypt.h",
	MAME_DIR .. "src/mame/machine/315-6154.cpp",
--	MAME_DIR .. "src/mame/machine/315-6154.h",
	MAME_DIR .. "src/mame/machine/awboard.cpp",
--	MAME_DIR .. "src/mame/machine/awboard.h",
	MAME_DIR .. "src/mame/machine/mie.cpp",
--	MAME_DIR .. "src/mame/machine/mie.h",
	MAME_DIR .. "src/mame/machine/maple-dc.cpp",
--	MAME_DIR .. "src/mame/machine/maple-dc.h",
	MAME_DIR .. "src/mame/machine/mapledev.cpp",
--	MAME_DIR .. "src/mame/machine/mapledev.h",
	MAME_DIR .. "src/mame/machine/dc-ctrl.cpp",
--	MAME_DIR .. "src/mame/machine/dc-ctrl.h",
	MAME_DIR .. "src/mame/machine/jvs13551.cpp",
--	MAME_DIR .. "src/mame/machine/jvs13551.h",
	MAME_DIR .. "src/mame/machine/segashiobd.cpp",
--	MAME_DIR .. "src/mame/machine/segashiobd.h",
	MAME_DIR .. "src/mame/drivers/triforce.cpp",
	MAME_DIR .. "src/mame/drivers/puckpkmn.cpp",
	MAME_DIR .. "src/hbmame/drivers/segac2.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/segae.cpp",
	MAME_DIR .. "src/mame/drivers/sms.cpp",
--	MAME_DIR .. "src/mame/includes/sms.h",
	MAME_DIR .. "src/mame/machine/sms.cpp",
	MAME_DIR .. "src/mame/drivers/sms_bootleg.cpp",
	MAME_DIR .. "src/mame/drivers/shtzone.cpp",
	MAME_DIR .. "src/mame/drivers/segacoin.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/segag80r.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segag80r.h",
	MAME_DIR .. "src/mame/machine/segag80.cpp",
--	MAME_DIR .. "src/mame/machine/segag80.h",
	MAME_DIR .. "src/mame/audio/segag80r.cpp",
--	MAME_DIR .. "src/mame/audio/segag80r.h",
	MAME_DIR .. "src/mame/video/segag80r.cpp",
	MAME_DIR .. "src/mame/drivers/segag80v.cpp",
--	MAME_DIR .. "src/mame/includes/segag80v.h",
	MAME_DIR .. "src/mame/audio/segag80.cpp",
--	MAME_DIR .. "src/mame/audio/segag80.h",
	MAME_DIR .. "src/mame/audio/nl_astrob.cpp",
--	MAME_DIR .. "src/mame/audio/nl_astrob.h",
	MAME_DIR .. "src/mame/audio/nl_elim.cpp",
--	MAME_DIR .. "src/mame/audio/nl_elim.h",
	MAME_DIR .. "src/mame/audio/nl_spacfury.cpp",
--	MAME_DIR .. "src/mame/audio/nl_spacfury.h",
	MAME_DIR .. "src/mame/video/segag80v.cpp",
	MAME_DIR .. "src/hbmame/drivers/segahang.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segahang.h",
	MAME_DIR .. "src/mame/video/segahang.cpp",
	MAME_DIR .. "src/mame/drivers/segajw.cpp",
	MAME_DIR .. "src/mame/drivers/segald.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/segaorun.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segaorun.h",
	MAME_DIR .. "src/mame/video/segaorun.cpp",
	MAME_DIR .. "src/mame/drivers/segas16a.cpp",
--	MAME_DIR .. "src/mame/includes/segas16a.h",
	MAME_DIR .. "src/mame/video/segas16a.cpp",
	MAME_DIR .. "src/hbmame/drivers/segas16b.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segas16b.h",
	MAME_DIR .. "src/mame/video/segas16b.cpp",
	MAME_DIR .. "src/mame/audio/nl_segas16b.cpp",
--	MAME_DIR .. "src/mame/audio/nl_segas16b.h",
	MAME_DIR .. "src/mame/drivers/segas18.cpp",
--	MAME_DIR .. "src/mame/includes/segas18.h",
	MAME_DIR .. "src/mame/video/segas18.cpp",
	MAME_DIR .. "src/mame/drivers/segas18_astormbl.cpp",
	MAME_DIR .. "src/hbmame/drivers/segas24.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segas24.h",
	MAME_DIR .. "src/mame/video/segas24.cpp",
	MAME_DIR .. "src/mame/drivers/segam1.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/segas32.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/segas32.h",
	MAME_DIR .. "src/mame/machine/segas32.cpp",
	MAME_DIR .. "src/mame/video/segas32.cpp",
	MAME_DIR .. "src/mame/drivers/segattl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/segaufo.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/segaxbd.cpp",
--	MAME_DIR .. "src/mame/includes/segaxbd.h",
	MAME_DIR .. "src/mame/video/segaxbd.cpp",
	MAME_DIR .. "src/mame/drivers/segaybd.cpp",
--	MAME_DIR .. "src/mame/includes/segaybd.h",
	MAME_DIR .. "src/mame/video/segaybd.cpp",
--	MAME_DIR .. "src/mame/includes/segaipt.h",
	MAME_DIR .. "src/mame/drivers/sg1000a.cpp",
	MAME_DIR .. "src/mame/drivers/stactics.cpp",
--	MAME_DIR .. "src/mame/includes/stactics.h",
	MAME_DIR .. "src/mame/video/stactics.cpp",
	MAME_DIR .. "src/hbmame/drivers/stv.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/saturn.h", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/saturn.cpp",
	MAME_DIR .. "src/mame/machine/saturn.cpp",
	MAME_DIR .. "src/mame/machine/saturn_cdb.cpp",
--	MAME_DIR .. "src/mame/machine/saturn_cdb.h",
--	MAME_DIR .. "src/mame/includes/stv.h",
	MAME_DIR .. "src/mame/machine/315-5838_317-0229_comp.cpp",
--	MAME_DIR .. "src/mame/machine/315-5838_317-0229_comp.h",
	MAME_DIR .. "src/mame/drivers/suprloco.cpp",
--	MAME_DIR .. "src/mame/includes/suprloco.h",
	MAME_DIR .. "src/mame/video/suprloco.cpp",
	MAME_DIR .. "src/hbmame/drivers/system1.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/system1.h",
	MAME_DIR .. "src/mame/machine/segacrp2_device.cpp",
--	MAME_DIR .. "src/mame/machine/segacrp2_device.h",
	MAME_DIR .. "src/mame/video/system1.cpp",
	MAME_DIR .. "src/hbmame/drivers/system16.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/system16.h",
	MAME_DIR .. "src/mame/video/system16.cpp",
	MAME_DIR .. "src/mame/drivers/timetrv.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/turbo.cpp",
--	MAME_DIR .. "src/mame/includes/turbo.h",
	MAME_DIR .. "src/mame/audio/turbo.cpp",
	MAME_DIR .. "src/mame/video/turbo.cpp",
	MAME_DIR .. "src/mame/drivers/vicdual.cpp",
--	MAME_DIR .. "src/mame/includes/vicdual.h",
	MAME_DIR .. "src/mame/audio/vicdual.cpp",
--	MAME_DIR .. "src/mame/audio/vicdual.h",
	MAME_DIR .. "src/mame/audio/nl_brdrline.cpp",
--	MAME_DIR .. "src/mame/audio/nl_brdrline.h",
	MAME_DIR .. "src/mame/audio/nl_frogs.cpp",
--	MAME_DIR .. "src/mame/audio/nl_frogs.h",	
	MAME_DIR .. "src/mame/audio/vicdual-97271p.cpp",
--	MAME_DIR .. "src/mame/audio/vicdual-97271p.h",
	MAME_DIR .. "src/mame/video/vicdual.cpp",
	MAME_DIR .. "src/mame/video/vicdual-97269pb.cpp",
--	MAME_DIR .. "src/mame/video/vicdual-97269pb.h",
	MAME_DIR .. "src/mame/audio/carnival.cpp",
	MAME_DIR .. "src/mame/audio/depthch.cpp",
	MAME_DIR .. "src/mame/audio/invinco.cpp",
	MAME_DIR .. "src/mame/audio/pulsar.cpp",
	MAME_DIR .. "src/mame/drivers/zaxxon.cpp",
--	MAME_DIR .. "src/mame/includes/zaxxon.h",
	MAME_DIR .. "src/mame/audio/zaxxon.cpp",
	MAME_DIR .. "src/mame/video/zaxxon.cpp",
	MAME_DIR .. "src/mame/machine/315_5195.cpp",
	MAME_DIR .. "src/mame/machine/315_5195.h",
	MAME_DIR .. "src/mame/machine/315_5296.cpp",
--	MAME_DIR .. "src/mame/machine/315_5296.h",
	MAME_DIR .. "src/mame/machine/315_5338a.cpp",
--	MAME_DIR .. "src/mame/machine/315_5338a.h",
	MAME_DIR .. "src/mame/machine/315_5649.cpp",
--	MAME_DIR .. "src/mame/machine/315_5649.h",
	MAME_DIR .. "src/mame/machine/bingoct.cpp",
--	MAME_DIR .. "src/mame/machine/bingoct.h",
	MAME_DIR .. "src/mame/machine/model1io.cpp",
--	MAME_DIR .. "src/mame/machine/model1io.h",
	MAME_DIR .. "src/mame/machine/model1io2.cpp",
--	MAME_DIR .. "src/mame/machine/model1io2.h",
	MAME_DIR .. "src/mame/machine/fd1089.cpp",
--	MAME_DIR .. "src/mame/machine/fd1089.h",
	MAME_DIR .. "src/mame/machine/fd1094.cpp",
--	MAME_DIR .. "src/mame/machine/fd1094.h",
	MAME_DIR .. "src/mame/machine/mc8123.cpp",
--	MAME_DIR .. "src/mame/machine/mc8123.h",
	MAME_DIR .. "src/mame/machine/segaic16.cpp",
--	MAME_DIR .. "src/mame/machine/segaic16.h",
	MAME_DIR .. "src/mame/machine/segabill.cpp",
--	MAME_DIR .. "src/mame/machine/segabill.h",
	MAME_DIR .. "src/mame/audio/segaspeech.cpp",
--	MAME_DIR .. "src/mame/audio/segaspeech.h",
	MAME_DIR .. "src/mame/audio/segausb.cpp",
--	MAME_DIR .. "src/mame/audio/segausb.h",
	MAME_DIR .. "src/mame/audio/nl_segausb.cpp",
--	MAME_DIR .. "src/mame/audio/nl_segausb.h",
	MAME_DIR .. "src/mame/audio/nl_segaspeech.cpp",
--	MAME_DIR .. "src/mame/audio/nl_segaspeech.h",
	MAME_DIR .. "src/mame/video/segaic16.cpp",
--	MAME_DIR .. "src/mame/video/segaic16.h",
	MAME_DIR .. "src/mame/video/segaic16_road.cpp",
--	MAME_DIR .. "src/mame/video/segaic16_road.h",
	MAME_DIR .. "src/mame/video/sega16sp.cpp",
--	MAME_DIR .. "src/mame/video/sega16sp.h",
	MAME_DIR .. "src/mame/video/segaic24.cpp",
--	MAME_DIR .. "src/mame/video/segaic24.h",
	MAME_DIR .. "src/mame/machine/xbox.cpp",
	MAME_DIR .. "src/mame/machine/xbox_usb.cpp",
	MAME_DIR .. "src/mame/machine/xbox_pci.cpp",
	MAME_DIR .. "src/mame/drivers/flashbeats.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/segaatom.cpp",
}

createHBMAMEProjects(_target, _subtarget, "seibu")
files {
--	MAME_DIR .. "src/mame/drivers/airraid.cpp",
--	MAME_DIR .. "src/mame/drivers/banprestoms.cpp",
	MAME_DIR .. "src/hbmame/drivers/bloodbro.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/bloodbro.h",
	MAME_DIR .. "src/mame/video/bloodbro.cpp",
	MAME_DIR .. "src/mame/drivers/bloodbro_ms.cpp",
	MAME_DIR .. "src/hbmame/drivers/cabal.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cabal.h",
	MAME_DIR .. "src/mame/video/cabal.cpp",
	MAME_DIR .. "src/mame/drivers/darkmist.cpp",
--	MAME_DIR .. "src/mame/includes/darkmist.h",
	MAME_DIR .. "src/mame/video/darkmist.cpp",
	MAME_DIR .. "src/mame/drivers/dcon.cpp",
--	MAME_DIR .. "src/mame/includes/dcon.h",
	MAME_DIR .. "src/mame/video/dcon.cpp",
	MAME_DIR .. "src/mame/drivers/deadang.cpp",
--	MAME_DIR .. "src/mame/includes/deadang.h",
	MAME_DIR .. "src/mame/video/deadang.cpp",
	MAME_DIR .. "src/mame/drivers/dynduke.cpp",
--	MAME_DIR .. "src/mame/includes/dynduke.h",
	MAME_DIR .. "src/mame/video/dynduke.cpp",
	MAME_DIR .. "src/mame/drivers/feversoc.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/goal92.cpp",
--	MAME_DIR .. "src/mame/includes/goal92.h",
	MAME_DIR .. "src/mame/video/goal92.cpp",
	MAME_DIR .. "src/mame/drivers/goodejan.cpp",
	MAME_DIR .. "src/mame/drivers/kncljoe.cpp",
--	MAME_DIR .. "src/mame/includes/kncljoe.h",
	MAME_DIR .. "src/mame/video/kncljoe.cpp",
	MAME_DIR .. "src/mame/drivers/legionna.cpp",
--	MAME_DIR .. "src/mame/includes/legionna.h",
	MAME_DIR .. "src/mame/video/legionna.cpp",
	MAME_DIR .. "src/mame/drivers/seicupbl.cpp",
	MAME_DIR .. "src/mame/drivers/metlfrzr.cpp",
	MAME_DIR .. "src/mame/drivers/mustache.cpp",
--	MAME_DIR .. "src/mame/includes/mustache.h",
	MAME_DIR .. "src/mame/video/mustache.cpp",
	MAME_DIR .. "src/mame/drivers/panicr.cpp",
	MAME_DIR .. "src/mame/drivers/raiden.cpp",
--	MAME_DIR .. "src/mame/includes/raiden.h",
	MAME_DIR .. "src/mame/video/raiden.cpp",
	MAME_DIR .. "src/mame/drivers/raiden_ms.cpp",
	MAME_DIR .. "src/hbmame/drivers/raiden2.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/raiden2.h",
	MAME_DIR .. "src/mame/video/raiden2.cpp",
	MAME_DIR .. "src/mame/machine/r2crypt.cpp",
--	MAME_DIR .. "src/mame/machine/r2crypt.h",
	MAME_DIR .. "src/mame/machine/seibucop.cpp",
	MAME_DIR .. "src/mame/machine/seibucop_dma.hxx",
	MAME_DIR .. "src/mame/machine/seibucop_cmd.hxx",
--	MAME_DIR .. "src/mame/machine/seibucop.h",	
	MAME_DIR .. "src/hbmame/drivers/r2dx_v33.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/seibuspi.cpp",
--	MAME_DIR .. "src/mame/includes/seibuspi.h",
	MAME_DIR .. "src/mame/video/seibuspi.cpp",
	MAME_DIR .. "src/mame/drivers/seibucats.cpp",
	MAME_DIR .. "src/mame/drivers/sengokmj.cpp",
	MAME_DIR .. "src/mame/drivers/stfight.cpp",
	MAME_DIR .. "src/mame/video/stfight_dev.cpp",
--	MAME_DIR .. "src/mame/video/stfight_dev.h",
	MAME_DIR .. "src/mame/video/airraid_dev.cpp",
--	MAME_DIR .. "src/mame/video/airraid_dev.h",
--	MAME_DIR .. "src/mame/includes/stfight.h",
	MAME_DIR .. "src/mame/machine/stfight.cpp",
	MAME_DIR .. "src/mame/drivers/toki.cpp",
--	MAME_DIR .. "src/mame/includes/toki.h",
	MAME_DIR .. "src/mame/drivers/toki_ms.cpp",
	MAME_DIR .. "src/mame/video/toki.cpp",
	MAME_DIR .. "src/hbmame/drivers/wiz.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/wiz.h",
	MAME_DIR .. "src/mame/video/wiz.cpp",
	MAME_DIR .. "src/mame/machine/seicopbl.cpp",
--	MAME_DIR .. "src/mame/machine/seicopbl.h",
	MAME_DIR .. "src/mame/machine/seibuspi.cpp",
--	MAME_DIR .. "src/mame/machine/seibuspi.h",
	MAME_DIR .. "src/mame/audio/seibu.cpp", --(nmk)
--	MAME_DIR .. "src/mame/audio/seibu.h",
	MAME_DIR .. "src/mame/audio/t5182.cpp",
--	MAME_DIR .. "src/mame/audio/t5182.h",
	MAME_DIR .. "src/mame/video/seibu_crtc.cpp",
--	MAME_DIR .. "src/mame/video/seibu_crtc.h",
}

createHBMAMEProjects(_target, _subtarget, "seta")
files {
	MAME_DIR .. "src/mame/drivers/aleck64.cpp",
	MAME_DIR .. "src/mame/machine/n64.cpp",
	MAME_DIR .. "src/mame/video/n64.cpp",
--	MAME_DIR .. "src/mame/video/n64types.h",
	MAME_DIR .. "src/mame/video/rdpfiltr.hxx",
--	MAME_DIR .. "src/mame/video/n64.h",
	MAME_DIR .. "src/mame/video/rdpblend.cpp",
--	MAME_DIR .. "src/mame/video/rdpblend.h",
	MAME_DIR .. "src/mame/video/rdptpipe.cpp",
--	MAME_DIR .. "src/mame/video/rdptpipe.h",
	MAME_DIR .. "src/mame/video/pin64.cpp",
--	MAME_DIR .. "src/mame/video/pin64.h",
	MAME_DIR .. "src/mame/drivers/hanaawas.cpp",
--	MAME_DIR .. "src/mame/includes/hanaawas.h",
	MAME_DIR .. "src/mame/video/hanaawas.cpp",
	MAME_DIR .. "src/mame/drivers/jclub2.cpp",
	MAME_DIR .. "src/mame/drivers/macs.cpp",
	MAME_DIR .. "src/hbmame/drivers/seta.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/seta.h",
	MAME_DIR .. "src/mame/video/seta.cpp",
	MAME_DIR .. "src/hbmame/drivers/seta2.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/seta2.h",
	MAME_DIR .. "src/mame/video/seta2.cpp",
	MAME_DIR .. "src/mame/drivers/speedatk.cpp",
--	MAME_DIR .. "src/mame/includes/speedatk.h",
	MAME_DIR .. "src/mame/video/speedatk.cpp",
	MAME_DIR .. "src/mame/drivers/speglsht.cpp",
	MAME_DIR .. "src/mame/drivers/srmp2.cpp",
--	MAME_DIR .. "src/mame/includes/srmp2.h",
	MAME_DIR .. "src/mame/video/srmp2.cpp",
	MAME_DIR .. "src/mame/drivers/srmp5.cpp",
	MAME_DIR .. "src/mame/drivers/srmp6.cpp",
	MAME_DIR .. "src/hbmame/drivers/ssv.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/ssv.h",
	MAME_DIR .. "src/mame/video/ssv.cpp",
	MAME_DIR .. "src/mame/video/st0020.cpp",
--	MAME_DIR .. "src/mame/video/st0020.h",
	MAME_DIR .. "src/mame/machine/st0016.cpp",
--	MAME_DIR .. "src/mame/machine/st0016.h",
	MAME_DIR .. "src/hbmame/drivers/simple_st0016.cpp", --HBMAME
	MAME_DIR .. "src/mame/video/seta001.cpp",
--	MAME_DIR .. "src/mame/video/seta001.h",
	MAME_DIR .. "src/mame/video/x1_012.cpp",
--	MAME_DIR .. "src/mame/video/x1_012.h",
	MAME_DIR .. "src/mame/drivers/thedealr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sigma")
files {
	MAME_DIR .. "src/mame/drivers/nyny.cpp",
	MAME_DIR .. "src/mame/drivers/r2dtank.cpp",
--	MAME_DIR .. "src/mame/drivers/sigma21.cpp",
--	MAME_DIR .. "src/mame/drivers/sigmab31.cpp",
--	MAME_DIR .. "src/mame/drivers/sigmab52.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/sigmab98.cpp",
	MAME_DIR .. "src/mame/drivers/spiders.cpp",
--	MAME_DIR .. "src/mame/includes/spiders.h",
	MAME_DIR .. "src/mame/audio/spiders.cpp",
	MAME_DIR .. "src/mame/drivers/sub.cpp",
--	MAME_DIR .. "src/mame/includes/sub.h",
	MAME_DIR .. "src/mame/video/sub.cpp",
}

createHBMAMEProjects(_target, _subtarget, "snk")
files {
	MAME_DIR .. "src/mame/drivers/bbusters.cpp",
	MAME_DIR .. "src/mame/drivers/mechatt.cpp",
	MAME_DIR .. "src/mame/video/snk_bbusters_spr.cpp",
--	MAME_DIR .. "src/mame/video/snk_bbusters_spr.h",
	MAME_DIR .. "src/mame/drivers/dmndrby.cpp",
	MAME_DIR .. "src/mame/drivers/hng64.cpp",
--	MAME_DIR .. "src/mame/includes/hng64.h",
	MAME_DIR .. "src/mame/video/hng64.cpp",
	MAME_DIR .. "src/mame/audio/hng64.cpp",
	MAME_DIR .. "src/mame/machine/hng64_net.cpp",
	MAME_DIR .. "src/mame/video/hng64_3d.hxx",
	MAME_DIR .. "src/mame/video/hng64_sprite.hxx",
	MAME_DIR .. "src/mame/drivers/lasso.cpp",
--	MAME_DIR .. "src/mame/includes/lasso.h",
	MAME_DIR .. "src/mame/video/lasso.cpp",
	MAME_DIR .. "src/mame/drivers/mainsnk.cpp",
--	MAME_DIR .. "src/mame/includes/mainsnk.h",
	MAME_DIR .. "src/mame/video/mainsnk.cpp",
	MAME_DIR .. "src/mame/drivers/munchmo.cpp",
--	MAME_DIR .. "src/mame/includes/munchmo.h",
	MAME_DIR .. "src/mame/video/munchmo.cpp",
	MAME_DIR .. "src/mame/drivers/prehisle.cpp",
--	MAME_DIR .. "src/mame/includes/prehisle.h",
	MAME_DIR .. "src/mame/video/prehisle.cpp",
	MAME_DIR .. "src/hbmame/drivers/snk6502.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/snk6502.h",
	MAME_DIR .. "src/mame/audio/snk6502.cpp",
--	MAME_DIR .. "src/mame/audio/snk6502.h",
	MAME_DIR .. "src/mame/video/snk6502.cpp",
	MAME_DIR .. "src/mame/drivers/snk.cpp",
--	MAME_DIR .. "src/mame/includes/snk.h",
	MAME_DIR .. "src/mame/video/snk.cpp",
	MAME_DIR .. "src/mame/drivers/snk68.cpp",
--	MAME_DIR .. "src/mame/includes/snk68.h",
	MAME_DIR .. "src/mame/video/snk68.cpp",
	MAME_DIR .. "src/mame/video/snk68_spr.cpp",
--	MAME_DIR .. "src/mame/video/snk68_spr.h",
	MAME_DIR .. "src/mame/video/alpha68k_palette.cpp",
--	MAME_DIR .. "src/mame/video/alpha68k_palette.h",

}

createHBMAMEProjects(_target, _subtarget, "sony")
files {
	MAME_DIR .. "src/hbmame/drivers/zn.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/zn.h",
	MAME_DIR .. "src/mame/machine/znmcu.cpp",
--	MAME_DIR .. "src/mame/machine/znmcu.h",
	MAME_DIR .. "src/mame/machine/cat702.cpp",
--	MAME_DIR .. "src/mame/machine/cat702.h",
}

createHBMAMEProjects(_target, _subtarget, "stern")
files {
	MAME_DIR .. "src/mame/drivers/astinvad.cpp",
	MAME_DIR .. "src/mame/drivers/berzerk.cpp",
	MAME_DIR .. "src/mame/drivers/cliffhgr.cpp",
	MAME_DIR .. "src/mame/audio/cliffhgr.cpp",
--	MAME_DIR .. "src/mame/audio/cliffhgr.h",
	MAME_DIR .. "src/mame/drivers/mazerbla.cpp",
	MAME_DIR .. "src/mame/drivers/supdrapo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "subsino")
files {
	MAME_DIR .. "src/mame/drivers/lastfght.cpp",
	MAME_DIR .. "src/mame/drivers/subsino.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/subsino2.cpp",
	MAME_DIR .. "src/mame/machine/subsino.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/subsino.h",
}

createHBMAMEProjects(_target, _subtarget, "suna")
files {
	MAME_DIR .. "src/mame/drivers/go2000.cpp",
	MAME_DIR .. "src/mame/drivers/goindol.cpp",
--	MAME_DIR .. "src/mame/includes/goindol.h",
	MAME_DIR .. "src/mame/video/goindol.cpp",
	MAME_DIR .. "src/mame/drivers/suna8.cpp",
--	MAME_DIR .. "src/mame/includes/suna8.h",
	MAME_DIR .. "src/mame/audio/suna8.cpp",
	MAME_DIR .. "src/mame/video/suna8.cpp",
	MAME_DIR .. "src/mame/drivers/suna16.cpp",
--	MAME_DIR .. "src/mame/includes/suna16.h",
	MAME_DIR .. "src/mame/video/suna16.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sunelect")
files {
	MAME_DIR .. "src/mame/drivers/arabian.cpp",
--	MAME_DIR .. "src/mame/includes/arabian.h",
	MAME_DIR .. "src/mame/video/arabian.cpp",
	MAME_DIR .. "src/mame/drivers/blockch.cpp",
	MAME_DIR .. "src/mame/drivers/dai3wksi.cpp",
	MAME_DIR .. "src/mame/drivers/ikki.cpp",
--	MAME_DIR .. "src/mame/includes/ikki.h",
	MAME_DIR .. "src/mame/video/ikki.cpp",
	MAME_DIR .. "src/mame/drivers/kangaroo.cpp",
--	MAME_DIR .. "src/mame/includes/kangaroo.h",
	MAME_DIR .. "src/mame/video/kangaroo.cpp",
	MAME_DIR .. "src/mame/drivers/markham.cpp",
--	MAME_DIR .. "src/mame/includes/markham.h",
	MAME_DIR .. "src/mame/video/markham.cpp",
	MAME_DIR .. "src/mame/drivers/route16.cpp",
--	MAME_DIR .. "src/mame/includes/route16.h",
	MAME_DIR .. "src/mame/video/route16.cpp",
	MAME_DIR .. "src/mame/drivers/shanghai.cpp",
	MAME_DIR .. "src/mame/drivers/shangha3.cpp",
--	MAME_DIR .. "src/mame/includes/shangha3.h",
	MAME_DIR .. "src/mame/video/shangha3.cpp",
	MAME_DIR .. "src/mame/drivers/tonton.cpp",
}

createHBMAMEProjects(_target, _subtarget, "taito")
files {
	MAME_DIR .. "src/mame/drivers/2mindril.cpp",
	MAME_DIR .. "src/mame/drivers/40love.cpp",
--	MAME_DIR .. "src/mame/includes/40love.h",
	MAME_DIR .. "src/mame/video/40love.cpp",
	MAME_DIR .. "src/hbmame/drivers/arkanoid.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/arkanoid.h",
	MAME_DIR .. "src/mame/machine/arkanoid.cpp",
	MAME_DIR .. "src/mame/video/arkanoid.cpp",
	MAME_DIR .. "src/mame/drivers/ashnojoe.cpp",
--	MAME_DIR .. "src/mame/includes/ashnojoe.h",
	MAME_DIR .. "src/mame/video/ashnojoe.cpp",
	MAME_DIR .. "src/hbmame/drivers/asuka.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/asuka.h",
	MAME_DIR .. "src/mame/video/asuka.cpp",
	MAME_DIR .. "src/mame/drivers/bigevglf.cpp",
--	MAME_DIR .. "src/mame/includes/bigevglf.h",
	MAME_DIR .. "src/mame/video/bigevglf.cpp",
	MAME_DIR .. "src/mame/drivers/bingowav.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/bking.cpp",
--	MAME_DIR .. "src/mame/includes/bking.h",
	MAME_DIR .. "src/mame/video/bking.cpp",
	MAME_DIR .. "src/hbmame/drivers/bublbobl.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/bublbobl.h",
	MAME_DIR .. "src/mame/machine/bublbobl.cpp",
	MAME_DIR .. "src/mame/video/bublbobl.cpp",
	MAME_DIR .. "src/mame/drivers/buggychl.cpp",
--	MAME_DIR .. "src/mame/includes/buggychl.h",
	MAME_DIR .. "src/mame/machine/taito68705interface.cpp",
--	MAME_DIR .. "src/mame/machine/taito68705interface.h",
	MAME_DIR .. "src/mame/machine/taitosjsec.cpp",
--	MAME_DIR .. "src/mame/machine/taitosjsec.h",
	MAME_DIR .. "src/mame/video/buggychl.cpp",
	MAME_DIR .. "src/mame/drivers/capr1.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/caprcyc.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/cchance.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/chaknpop.cpp",
--	MAME_DIR .. "src/mame/includes/chaknpop.h",
	MAME_DIR .. "src/mame/video/chaknpop.cpp",
	MAME_DIR .. "src/mame/drivers/champbwl.cpp",
	MAME_DIR .. "src/mame/drivers/changela.cpp",
--	MAME_DIR .. "src/mame/includes/changela.h",
	MAME_DIR .. "src/mame/video/changela.cpp",
	MAME_DIR .. "src/mame/drivers/cpzodiac.cpp",
	MAME_DIR .. "src/mame/drivers/crbaloon.cpp",
--	MAME_DIR .. "src/mame/includes/crbaloon.h",
	MAME_DIR .. "src/mame/video/crbaloon.cpp",
	MAME_DIR .. "src/mame/audio/crbaloon.cpp",
	MAME_DIR .. "src/mame/drivers/cyclemb.cpp",
	MAME_DIR .. "src/mame/drivers/darius.cpp",
--	MAME_DIR .. "src/mame/includes/darius.h",
	MAME_DIR .. "src/mame/video/darius.cpp",
	MAME_DIR .. "src/mame/drivers/dinoking.cpp",
	MAME_DIR .. "src/mame/drivers/exzisus.cpp",
--	MAME_DIR .. "src/mame/includes/exzisus.h",
	MAME_DIR .. "src/mame/video/exzisus.cpp",
	MAME_DIR .. "src/mame/drivers/fgoal.cpp",
--	MAME_DIR .. "src/mame/includes/fgoal.h",
	MAME_DIR .. "src/mame/video/fgoal.cpp",
	MAME_DIR .. "src/hbmame/drivers/flstory.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/flstory.h",
	MAME_DIR .. "src/mame/video/flstory.cpp",
	MAME_DIR .. "src/mame/drivers/galastrm.cpp",
--	MAME_DIR .. "src/mame/includes/galastrm.h",
	MAME_DIR .. "src/mame/video/galastrm.cpp",
	MAME_DIR .. "src/mame/drivers/gladiatr.cpp",
--	MAME_DIR .. "src/mame/includes/gladiatr.h",
	MAME_DIR .. "src/mame/video/gladiatr.cpp",
	MAME_DIR .. "src/mame/drivers/gokidetor.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/grchamp.cpp",
--	MAME_DIR .. "src/mame/includes/grchamp.h",
	MAME_DIR .. "src/mame/audio/grchamp.cpp",
	MAME_DIR .. "src/mame/video/grchamp.cpp",
	MAME_DIR .. "src/mame/drivers/groundfx.cpp",
--	MAME_DIR .. "src/mame/includes/groundfx.h",
	MAME_DIR .. "src/mame/video/groundfx.cpp",
	MAME_DIR .. "src/mame/drivers/gsword.cpp",
--	MAME_DIR .. "src/mame/includes/gsword.h",
	MAME_DIR .. "src/mame/machine/tait8741.cpp",
--	MAME_DIR .. "src/mame/machine/tait8741.h",
	MAME_DIR .. "src/mame/video/gsword.cpp",
	MAME_DIR .. "src/mame/drivers/gunbustr.cpp",
--	MAME_DIR .. "src/mame/includes/gunbustr.h",
	MAME_DIR .. "src/mame/video/gunbustr.cpp",
	MAME_DIR .. "src/mame/drivers/halleys.cpp",
	MAME_DIR .. "src/mame/drivers/heromem.cpp",
	MAME_DIR .. "src/mame/drivers/invqix.cpp",
	MAME_DIR .. "src/mame/drivers/jollyjgr.cpp",
	MAME_DIR .. "src/mame/drivers/ksayakyu.cpp",
--	MAME_DIR .. "src/mame/includes/ksayakyu.h",
	MAME_DIR .. "src/mame/video/ksayakyu.cpp",
	MAME_DIR .. "src/mame/drivers/lgp.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/ikage.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/lkage.h",
	MAME_DIR .. "src/mame/video/lkage.cpp",
	MAME_DIR .. "src/mame/drivers/lsasquad.cpp",
--	MAME_DIR .. "src/mame/includes/lsasquad.h",
	MAME_DIR .. "src/mame/machine/lsasquad.cpp",
	MAME_DIR .. "src/mame/video/lsasquad.cpp",
	MAME_DIR .. "src/mame/drivers/marinedt.cpp",	
	MAME_DIR .. "src/hbmame/drivers/kikikai.cpp",
--	MAME_DIR .. "src/mame/includes/kikikai.h",
	MAME_DIR .. "src/mame/machine/kikikai.cpp",
	MAME_DIR .. "src/mame/video/kikikai.cpp",
	MAME_DIR .. "src/mame/drivers/minivadr.cpp",
	MAME_DIR .. "src/mame/drivers/missb2.cpp",
	MAME_DIR .. "src/mame/drivers/mlanding.cpp",
	MAME_DIR .. "src/mame/drivers/msisaac.cpp",
--	MAME_DIR .. "src/mame/includes/msisaac.h",
	MAME_DIR .. "src/mame/video/msisaac.cpp",
	MAME_DIR .. "src/mame/drivers/ninjaw.cpp",
--	MAME_DIR .. "src/mame/includes/ninjaw.h",
	MAME_DIR .. "src/mame/video/ninjaw.cpp",
	MAME_DIR .. "src/mame/drivers/nycaptor.cpp",
--	MAME_DIR .. "src/mame/includes/nycaptor.h",
	MAME_DIR .. "src/mame/video/nycaptor.cpp",
	MAME_DIR .. "src/mame/drivers/opwolf.cpp",
	MAME_DIR .. "src/mame/drivers/othunder.cpp",
--	MAME_DIR .. "src/mame/includes/othunder.h",
	MAME_DIR .. "src/mame/video/othunder.cpp",
	MAME_DIR .. "src/mame/drivers/pitnrun.cpp",
--	MAME_DIR .. "src/mame/includes/pitnrun.h",
	MAME_DIR .. "src/mame/machine/pitnrun.cpp",
	MAME_DIR .. "src/mame/video/pitnrun.cpp",
	MAME_DIR .. "src/mame/drivers/qix.cpp",
--	MAME_DIR .. "src/mame/includes/qix.h",
	MAME_DIR .. "src/mame/machine/qix.cpp",
	MAME_DIR .. "src/mame/audio/qix.cpp",
	MAME_DIR .. "src/mame/video/qix.cpp",
	MAME_DIR .. "src/mame/drivers/rbisland.cpp",
--	MAME_DIR .. "src/mame/includes/rbisland.h",
	MAME_DIR .. "src/mame/video/rbisland.cpp",
	MAME_DIR .. "src/hbmame/drivers/rastan.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/rastan.h",
	MAME_DIR .. "src/mame/video/rastan.cpp",
	MAME_DIR .. "src/hbmame/drivers/retofinv.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/retofinv.h",
	MAME_DIR .. "src/mame/video/retofinv.cpp",
	MAME_DIR .. "src/mame/drivers/rollrace.cpp",
--	MAME_DIR .. "src/mame/includes/rollrace.h",
	MAME_DIR .. "src/mame/video/rollrace.cpp",
	MAME_DIR .. "src/mame/drivers/sbmjb.cpp",
	MAME_DIR .. "src/mame/drivers/sbowling.cpp",
	MAME_DIR .. "src/mame/drivers/scyclone.cpp",
	MAME_DIR .. "src/mame/drivers/slapshot.cpp",
--	MAME_DIR .. "src/mame/includes/slapshot.h",
	MAME_DIR .. "src/mame/video/slapshot.cpp",
	MAME_DIR .. "src/mame/drivers/spdheat.cpp",
--	MAME_DIR .. "src/mame/includes/spdheat.h",
	MAME_DIR .. "src/mame/drivers/ssrj.cpp",
--	MAME_DIR .. "src/mame/includes/ssrj.h",
	MAME_DIR .. "src/mame/video/ssrj.cpp",
	MAME_DIR .. "src/mame/drivers/superchs.cpp",
--	MAME_DIR .. "src/mame/includes/superchs.h",
	MAME_DIR .. "src/mame/video/superchs.cpp",
	MAME_DIR .. "src/mame/drivers/superqix.cpp",
--	MAME_DIR .. "src/mame/includes/superqix.h",
	MAME_DIR .. "src/mame/video/superqix.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_b.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taito_b.h",
	MAME_DIR .. "src/mame/video/taito_b.cpp",
--	MAME_DIR .. "src/mame/includes/taitoipt.h",
	MAME_DIR .. "src/hbmame/drivers/taito_f2.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taito_f2.h",
	MAME_DIR .. "src/mame/video/taito_f2.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_f3.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taito_f3.h",
	MAME_DIR .. "src/mame/video/taito_f3.cpp",
	MAME_DIR .. "src/mame/audio/taito_en.cpp",
--	MAME_DIR .. "src/mame/audio/taito_en.h",
	MAME_DIR .. "src/mame/drivers/taito_h.cpp",
--	MAME_DIR .. "src/mame/includes/taito_h.h",
	MAME_DIR .. "src/mame/video/taito_h.cpp",
	MAME_DIR .. "src/hbmame/drivers/taito_l.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taito_l.h",
	MAME_DIR .. "src/mame/video/taito_l.cpp",
	MAME_DIR .. "src/mame/drivers/taito_x.cpp",
--	MAME_DIR .. "src/mame/includes/taito_x.h",
	MAME_DIR .. "src/mame/machine/taitocchip.cpp",
--	MAME_DIR .. "src/mame/machine/taitocchip.h",
	MAME_DIR .. "src/mame/drivers/taito_z.cpp",
--	MAME_DIR .. "src/mame/includes/taito_z.h",
	MAME_DIR .. "src/mame/video/taito_z.cpp",
	MAME_DIR .. "src/mame/drivers/taito_o.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/taito_o.h",
	MAME_DIR .. "src/mame/video/taito_o.cpp",
	MAME_DIR .. "src/mame/drivers/taitoair.cpp",
--	MAME_DIR .. "src/mame/includes/taitoair.h",
	MAME_DIR .. "src/mame/video/taitoair.cpp",
	MAME_DIR .. "src/mame/drivers/taitogn.cpp",
	MAME_DIR .. "src/mame/drivers/taitojc.cpp",
--	MAME_DIR .. "src/mame/includes/taitojc.h",
	MAME_DIR .. "src/mame/video/taitojc.cpp",
	MAME_DIR .. "src/mame/drivers/taitopjc.cpp",
	MAME_DIR .. "src/hbmame/drivers/taitosj.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taitosj.h",
	MAME_DIR .. "src/mame/machine/taitosj.cpp",
	MAME_DIR .. "src/mame/video/taitosj.cpp",
	MAME_DIR .. "src/mame/drivers/taitottl.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/taitotz.cpp",
	MAME_DIR .. "src/mame/drivers/taitotx.cpp",
	MAME_DIR .. "src/mame/drivers/taitowlf.cpp", --It is not necessary to include it
	MAME_DIR .. "src/hbmame/drivers/tnzs.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tnzs.h",
	MAME_DIR .. "src/mame/machine/tnzs.cpp",
	MAME_DIR .. "src/mame/video/tnzs.cpp",
	MAME_DIR .. "src/mame/drivers/topspeed.cpp",
--	MAME_DIR .. "src/mame/includes/topspeed.h",
	MAME_DIR .. "src/mame/video/topspeed.cpp",
	MAME_DIR .. "src/mame/drivers/tsamurai.cpp",
--	MAME_DIR .. "src/mame/includes/tsamurai.h",
	MAME_DIR .. "src/mame/video/tsamurai.cpp",
	MAME_DIR .. "src/mame/drivers/undrfire.cpp",
--	MAME_DIR .. "src/mame/includes/undrfire.h",
	MAME_DIR .. "src/mame/video/undrfire.cpp",
	MAME_DIR .. "src/hbmame/drivers/volfied.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/volfied.h",
	MAME_DIR .. "src/mame/video/volfied.cpp",
	MAME_DIR .. "src/hbmame/drivers/warriorb.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/warriorb.h",
	MAME_DIR .. "src/mame/video/warriorb.cpp",
	MAME_DIR .. "src/mame/drivers/wgp.cpp",
--	MAME_DIR .. "src/mame/includes/wgp.h",
	MAME_DIR .. "src/mame/video/wgp.cpp",
	MAME_DIR .. "src/mame/drivers/wyvernf0.cpp",
	MAME_DIR .. "src/mame/audio/taitosnd.cpp",
--	MAME_DIR .. "src/mame/audio/taitosnd.h",
	MAME_DIR .. "src/mame/audio/taito_zm.cpp",
--	MAME_DIR .. "src/mame/audio/taito_zm.h",
	MAME_DIR .. "src/mame/machine/taitoio.cpp",
--	MAME_DIR .. "src/mame/machine/taitoio.h",
	MAME_DIR .. "src/mame/machine/taitoio_yoke.cpp",
--	MAME_DIR .. "src/mame/machine/taitoio_yoke.h",
	MAME_DIR .. "src/mame/video/taito_helper.cpp",
--	MAME_DIR .. "src/mame/video/taito_helper.h",
	MAME_DIR .. "src/mame/video/pc080sn.cpp",
--	MAME_DIR .. "src/mame/video/pc080sn.h",
	MAME_DIR .. "src/mame/video/pc090oj.cpp",
--	MAME_DIR .. "src/mame/video/pc090oj.h",
	MAME_DIR .. "src/mame/video/tc0080vco.cpp",
--	MAME_DIR .. "src/mame/video/tc0080vco.h",
	MAME_DIR .. "src/mame/video/tc0100scn.cpp",
--	MAME_DIR .. "src/mame/video/tc0100scn.h",
	MAME_DIR .. "src/mame/video/tc0150rod.cpp",
--	MAME_DIR .. "src/mame/video/tc0150rod.h",
	MAME_DIR .. "src/mame/video/tc0280grd.cpp",
--	MAME_DIR .. "src/mame/video/tc0280grd.h",
	MAME_DIR .. "src/mame/video/tc0360pri.cpp",
--	MAME_DIR .. "src/mame/video/tc0360pri.h",
	MAME_DIR .. "src/mame/video/tc0480scp.cpp",
--	MAME_DIR .. "src/mame/video/tc0480scp.h",
	MAME_DIR .. "src/mame/video/tc0110pcr.cpp",
--	MAME_DIR .. "src/mame/video/tc0110pcr.h",
	MAME_DIR .. "src/mame/video/tc0180vcu.cpp",
--	MAME_DIR .. "src/mame/video/tc0180vcu.h",
	MAME_DIR .. "src/mame/video/tc0780fpa.cpp",
--	MAME_DIR .. "src/mame/video/tc0780fpa.h",
}

createHBMAMEProjects(_target, _subtarget, "tatsumi")
files {
	MAME_DIR .. "src/mame/drivers/kingdrby.cpp",
	MAME_DIR .. "src/mame/drivers/lockon.cpp",
--	MAME_DIR .. "src/mame/includes/lockon.h",
	MAME_DIR .. "src/mame/video/lockon.cpp",
	MAME_DIR .. "src/mame/drivers/tatsumi.cpp",
--	MAME_DIR .. "src/mame/includes/tatsumi.h",
	MAME_DIR .. "src/mame/machine/tatsumi.cpp",
	MAME_DIR .. "src/mame/video/tatsumi.cpp",
	MAME_DIR .. "src/mame/drivers/tx1.cpp",
--	MAME_DIR .. "src/mame/includes/tx1.h",
	MAME_DIR .. "src/mame/machine/tx1.cpp",
	MAME_DIR .. "src/mame/audio/tx1.cpp",
--	MAME_DIR .. "src/mame/audio/tx1.h",
	MAME_DIR .. "src/mame/video/tx1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tch")
files {
	MAME_DIR .. "src/mame/drivers/kickgoal.cpp",
--	MAME_DIR .. "src/mame/includes/kickgoal.h",
	MAME_DIR .. "src/mame/video/kickgoal.cpp",
	MAME_DIR .. "src/mame/drivers/littlerb.cpp",
	MAME_DIR .. "src/mame/drivers/rltennis.cpp",
--	MAME_DIR .. "src/mame/includes/rltennis.h",
	MAME_DIR .. "src/mame/video/rltennis.cpp",
	MAME_DIR .. "src/mame/drivers/speedspn.cpp",
--	MAME_DIR .. "src/mame/includes/speedspn.h",
	MAME_DIR .. "src/mame/video/speedspn.cpp",
	MAME_DIR .. "src/mame/drivers/wheelfir.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tecfri")
files {
	MAME_DIR .. "src/mame/drivers/ambush.cpp",
	MAME_DIR .. "src/mame/drivers/holeland.cpp",
--	MAME_DIR .. "src/mame/includes/holeland.h",
	MAME_DIR .. "src/mame/video/holeland.cpp",
	MAME_DIR .. "src/mame/drivers/sauro.cpp",
--	MAME_DIR .. "src/mame/includes/sauro.h",
	MAME_DIR .. "src/mame/video/sauro.cpp",
	MAME_DIR .. "src/mame/drivers/speedbal.cpp",
--	MAME_DIR .. "src/mame/includes/speedbal.h",
	MAME_DIR .. "src/mame/video/speedbal.cpp",
}

createHBMAMEProjects(_target, _subtarget, "technos")
files {
	MAME_DIR .. "src/mame/drivers/battlane.cpp",
--	MAME_DIR .. "src/mame/includes/battlane.h",
	MAME_DIR .. "src/mame/video/battlane.cpp",
	MAME_DIR .. "src/mame/drivers/blockout.cpp",
--	MAME_DIR .. "src/mame/includes/blockout.h",
	MAME_DIR .. "src/mame/video/blockout.cpp",
	MAME_DIR .. "src/mame/drivers/bogeyman.cpp",
--	MAME_DIR .. "src/mame/includes/bogeyman.h",
	MAME_DIR .. "src/mame/video/bogeyman.cpp",
	MAME_DIR .. "src/mame/drivers/chinagat.cpp",
	MAME_DIR .. "src/hbmame/drivers/ddragon.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/ddragon.h",
	MAME_DIR .. "src/mame/video/ddragon.cpp",
	MAME_DIR .. "src/mame/drivers/ddragon3.cpp",
--	MAME_DIR .. "src/mame/includes/ddragon3.h",
	MAME_DIR .. "src/mame/video/ddragon3.cpp",
	MAME_DIR .. "src/mame/drivers/dogfgt.cpp",
--	MAME_DIR .. "src/mame/includes/dogfgt.h",
	MAME_DIR .. "src/mame/video/dogfgt.cpp",
	MAME_DIR .. "src/mame/drivers/matmania.cpp",
--	MAME_DIR .. "src/mame/includes/matmania.h",
	MAME_DIR .. "src/mame/video/matmania.cpp",
	MAME_DIR .. "src/mame/drivers/mystston.cpp",
--	MAME_DIR .. "src/mame/includes/mystston.h",
	MAME_DIR .. "src/mame/video/mystston.cpp",
	MAME_DIR .. "src/mame/drivers/renegade.cpp",
--	MAME_DIR .. "src/mame/includes/renegade.h",
	MAME_DIR .. "src/mame/video/renegade.cpp",
	MAME_DIR .. "src/mame/drivers/scregg.cpp",
	MAME_DIR .. "src/hbmame/drivers/shadfrce.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/shadfrce.h",
	MAME_DIR .. "src/mame/video/shadfrce.cpp",
	MAME_DIR .. "src/mame/drivers/spdodgeb.cpp",
--	MAME_DIR .. "src/mame/includes/spdodgeb.h",
	MAME_DIR .. "src/mame/video/spdodgeb.cpp",
	MAME_DIR .. "src/mame/drivers/ssozumo.cpp",
--	MAME_DIR .. "src/mame/includes/ssozumo.h",
	MAME_DIR .. "src/mame/video/ssozumo.cpp",
	MAME_DIR .. "src/mame/drivers/tagteam.cpp",
--	MAME_DIR .. "src/mame/includes/tagteam.h",
	MAME_DIR .. "src/mame/video/tagteam.cpp",
	MAME_DIR .. "src/mame/drivers/vball.cpp",
--	MAME_DIR .. "src/mame/includes/vball.h",
	MAME_DIR .. "src/mame/video/vball.cpp",
	MAME_DIR .. "src/mame/drivers/wwfsstar.cpp",
--	MAME_DIR .. "src/mame/includes/wwfsstar.h",
	MAME_DIR .. "src/mame/video/wwfsstar.cpp",
	MAME_DIR .. "src/mame/drivers/xain.cpp",
--	MAME_DIR .. "src/mame/includes/xain.h",
	MAME_DIR .. "src/mame/video/xain.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tehkan")
files {
	MAME_DIR .. "src/mame/video/tecmo_spr.cpp",
--	MAME_DIR .. "src/mame/video/tecmo_spr.h",
	MAME_DIR .. "src/mame/video/tecmo_mix.cpp",
--	MAME_DIR .. "src/mame/video/tecmo_mix.h",
	MAME_DIR .. "src/hbmame/drivers/bombjack.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/bombjack.h",
	MAME_DIR .. "src/mame/video/bombjack.cpp",
	MAME_DIR .. "src/mame/drivers/gaiden.cpp",
--	MAME_DIR .. "src/mame/includes/gaiden.h",
	MAME_DIR .. "src/mame/video/gaiden.cpp",
	MAME_DIR .. "src/mame/drivers/lvcards.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/lvcards.h",
	MAME_DIR .. "src/mame/video/lvcards.cpp",
	MAME_DIR .. "src/mame/drivers/pbaction.cpp",
--	MAME_DIR .. "src/mame/includes/pbaction.h",
	MAME_DIR .. "src/mame/video/pbaction.cpp",
	MAME_DIR .. "src/mame/drivers/senjyo.cpp",
--	MAME_DIR .. "src/mame/includes/senjyo.h",
	MAME_DIR .. "src/mame/audio/senjyo.cpp",
	MAME_DIR .. "src/mame/video/senjyo.cpp",
	MAME_DIR .. "src/hbmame/drivers/solomon.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/solomon.h",
	MAME_DIR .. "src/mame/video/solomon.cpp",
	MAME_DIR .. "src/mame/drivers/spbactn.cpp",
--	MAME_DIR .. "src/mame/includes/spbactn.h",
	MAME_DIR .. "src/mame/video/spbactn.cpp",
	MAME_DIR .. "src/mame/drivers/tbowl.cpp",
--	MAME_DIR .. "src/mame/includes/tbowl.h",
	MAME_DIR .. "src/mame/video/tbowl.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmo.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tecmo.h",
	MAME_DIR .. "src/mame/video/tecmo.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmo16.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tecmo16.h",
	MAME_DIR .. "src/mame/video/tecmo16.cpp",
	MAME_DIR .. "src/hbmame/drivers/tecmosys.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tecmosys.h",
	MAME_DIR .. "src/mame/machine/tecmosys.cpp",
	MAME_DIR .. "src/mame/video/tecmosys.cpp",
	MAME_DIR .. "src/hbmame/drivers/tehkanwc.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/tehkanwc.h",
	MAME_DIR .. "src/mame/video/tehkanwc.cpp",
	MAME_DIR .. "src/mame/drivers/wc90.cpp",
--	MAME_DIR .. "src/mame/includes/wc90.h",
	MAME_DIR .. "src/mame/video/wc90.cpp",
	MAME_DIR .. "src/hbmame/drivers/wc90b.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/wc90b.h",
	MAME_DIR .. "src/mame/video/wc90b.cpp",
}

createHBMAMEProjects(_target, _subtarget, "terminal")
files {
	MAME_DIR .. "src/mame/drivers/istrebiteli.cpp",
	MAME_DIR .. "src/mame/drivers/tiamc1.cpp",
--	MAME_DIR .. "src/mame/includes/tiamc1.h",
	MAME_DIR .. "src/mame/video/tiamc1.cpp",
	MAME_DIR .. "src/mame/audio/tiamc1.cpp",
--	MAME_DIR .. "src/mame/audio/tiamc1.h",
}

createHBMAMEProjects(_target, _subtarget, "thepit")
files {
	MAME_DIR .. "src/mame/drivers/thepit.cpp",
--	MAME_DIR .. "src/mame/includes/thepit.h",
	MAME_DIR .. "src/mame/video/thepit.cpp",
	MAME_DIR .. "src/hbmame/drivers/timelimit.cpp", --HBMAME (misc)
--	MAME_DIR .. "src/mame/includes/timelimt.h",
	MAME_DIR .. "src/mame/video/timelimt.cpp",
}

createHBMAMEProjects(_target, _subtarget, "toaplan")
files {
	MAME_DIR .. "src/mame/drivers/mjsister.cpp",
	MAME_DIR .. "src/mame/drivers/slapfght.cpp",
--	MAME_DIR .. "src/mame/includes/slapfght.h",
	MAME_DIR .. "src/mame/machine/slapfght.cpp",
	MAME_DIR .. "src/mame/video/slapfght.cpp",
	MAME_DIR .. "src/hbmame/drivers/snowbros.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/snowbros.h",
	MAME_DIR .. "src/mame/video/snowbros.cpp",
	MAME_DIR .. "src/mame/video/kan_pand.cpp", --(Kaneko?)
--	MAME_DIR .. "src/mame/video/kan_pand.h",
	MAME_DIR .. "src/mame/drivers/toaplan1.cpp",
--	MAME_DIR .. "src/mame/includes/toaplan1.h",
	MAME_DIR .. "src/mame/machine/toaplan1.cpp",
	MAME_DIR .. "src/mame/video/toaplan1.cpp",
--	MAME_DIR .. "src/mame/includes/toaplipt.h",
	MAME_DIR .. "src/hbmame/drivers/toaplan2.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/toaplan2.h",
	MAME_DIR .. "src/mame/video/toaplan2.cpp",
	MAME_DIR .. "src/mame/video/gp9001.cpp",
--	MAME_DIR .. "src/mame/video/gp9001.h",
	MAME_DIR .. "src/hbmame/drivers/twincobr.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/twincobr.h",
	MAME_DIR .. "src/mame/machine/twincobr.cpp",
	MAME_DIR .. "src/mame/video/twincobr.cpp",
	MAME_DIR .. "src/mame/drivers/wardner.cpp",
	MAME_DIR .. "src/mame/video/toaplan_scu.cpp",
--	MAME_DIR .. "src/mame/video/toaplan_scu.h",
}

createHBMAMEProjects(_target, _subtarget, "unico")
files {
	MAME_DIR .. "src/mame/drivers/drgnmst.cpp",
--	MAME_DIR .. "src/mame/includes/drgnmst.h",
	MAME_DIR .. "src/mame/video/drgnmst.cpp",
	MAME_DIR .. "src/hbmame/drivers/silkroad.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/silkroad.h",
	MAME_DIR .. "src/mame/video/silkroad.cpp",
	MAME_DIR .. "src/mame/drivers/unianapc.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/unico.cpp",
--	MAME_DIR .. "src/mame/includes/unico.h",
	MAME_DIR .. "src/mame/video/unico.cpp",
	MAME_DIR .. "src/mame/drivers/goori.cpp",
}

createHBMAMEProjects(_target, _subtarget, "univers")
files {
	MAME_DIR .. "src/mame/audio/cheekyms.cpp",
--	MAME_DIR .. "src/mame/audio/cheekyms.h",
	MAME_DIR .. "src/mame/audio/nl_cheekyms.cpp",
--	MAME_DIR .. "src/mame/audio/nl_cheekyms.h",
	MAME_DIR .. "src/mame/drivers/cheekyms.cpp",
--	MAME_DIR .. "src/mame/includes/cheekyms.h",
	MAME_DIR .. "src/mame/video/cheekyms.cpp",
	MAME_DIR .. "src/mame/drivers/cosmic.cpp",
--	MAME_DIR .. "src/mame/includes/cosmic.h",
	MAME_DIR .. "src/mame/video/cosmic.cpp",
	MAME_DIR .. "src/mame/drivers/cosmicg.cpp",
	MAME_DIR .. "src/hbmame/drivers/docastle.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/docastle.h",
	MAME_DIR .. "src/mame/machine/docastle.cpp",
	MAME_DIR .. "src/mame/video/docastle.cpp",
	MAME_DIR .. "src/mame/drivers/getaway.cpp",
	MAME_DIR .. "src/mame/drivers/ladybug.cpp",
--	MAME_DIR .. "src/mame/includes/ladybug.h",
	MAME_DIR .. "src/mame/video/ladybug.cpp",
--	MAME_DIR .. "src/mame/video/ladybug.h",
	MAME_DIR .. "src/hbmame/drivers/mrdo.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/mrdo.h",
	MAME_DIR .. "src/mame/video/mrdo.cpp",
	MAME_DIR .. "src/mame/drivers/redclash.cpp",
--	MAME_DIR .. "src/mame/includes/redclash.h",
	MAME_DIR .. "src/mame/video/redclash.cpp",
	MAME_DIR .. "src/mame/drivers/superdq.cpp", --It is not necessary to include it
}

createHBMAMEProjects(_target, _subtarget, "upl")
files {
	MAME_DIR .. "src/mame/drivers/mouser.cpp",
--	MAME_DIR .. "src/mame/includes/mouser.h",
	MAME_DIR .. "src/mame/video/mouser.cpp",
	MAME_DIR .. "src/mame/drivers/ninjakd2.cpp",
--	MAME_DIR .. "src/mame/includes/ninjakd2.h",
	MAME_DIR .. "src/mame/video/ninjakd2.cpp",
	MAME_DIR .. "src/mame/drivers/nova2001.cpp",
--	MAME_DIR .. "src/mame/includes/nova2001.h",
	MAME_DIR .. "src/mame/video/nova2001.cpp",
	MAME_DIR .. "src/mame/drivers/xxmissio.cpp",
--	MAME_DIR .. "src/mame/includes/xxmissio.h",
	MAME_DIR .. "src/mame/video/xxmissio.cpp",
}

createHBMAMEProjects(_target, _subtarget, "valadon")
files {
	MAME_DIR .. "src/hbmame/drivers/bagman.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/bagman.h",
	MAME_DIR .. "src/mame/machine/bagman.cpp",
	MAME_DIR .. "src/mame/video/bagman.cpp",
	MAME_DIR .. "src/mame/drivers/tankbust.cpp",
--	MAME_DIR .. "src/mame/includes/tankbust.h",
	MAME_DIR .. "src/mame/video/tankbust.cpp",
}

createHBMAMEProjects(_target, _subtarget, "venture")
files {
	MAME_DIR .. "src/mame/drivers/looping.cpp",
	MAME_DIR .. "src/mame/drivers/spcforce.cpp",
--	MAME_DIR .. "src/mame/includes/spcforce.h",
	MAME_DIR .. "src/mame/video/spcforce.cpp",
	MAME_DIR .. "src/mame/drivers/suprridr.cpp",
--	MAME_DIR .. "src/mame/includes/suprridr.h",
	MAME_DIR .. "src/mame/video/suprridr.cpp",
}

createHBMAMEProjects(_target, _subtarget, "vsystem")
files {
	MAME_DIR .. "src/mame/machine/vs9209.cpp",
--	MAME_DIR .. "src/mame/machine/vs9209.h",
	MAME_DIR .. "src/mame/video/vsystem_gga.cpp",
--	MAME_DIR .. "src/mame/video/vsystem_gga.h",
	MAME_DIR .. "src/mame/video/vsystem_spr.cpp",
--	MAME_DIR .. "src/mame/video/vsystem_spr.h",
	MAME_DIR .. "src/mame/video/vsystem_spr2.cpp",
--	MAME_DIR .. "src/mame/video/vsystem_spr2.h",
	MAME_DIR .. "src/hbmame/drivers/aerofgt.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/aerofgt.h",
	MAME_DIR .. "src/mame/video/aerofgt.cpp",
	MAME_DIR .. "src/mame/drivers/crshrace.cpp",
--	MAME_DIR .. "src/mame/includes/crshrace.h",
	MAME_DIR .. "src/mame/video/crshrace.cpp",
	MAME_DIR .. "src/mame/drivers/f1gp.cpp",
--	MAME_DIR .. "src/mame/includes/f1gp.h",
	MAME_DIR .. "src/mame/video/f1gp.cpp",
	MAME_DIR .. "src/mame/drivers/fromance.cpp",
--	MAME_DIR .. "src/mame/includes/fromance.h",
	MAME_DIR .. "src/mame/video/fromance.cpp",
	MAME_DIR .. "src/mame/drivers/fromanc2.cpp",
--	MAME_DIR .. "src/mame/includes/fromanc2.h",
	MAME_DIR .. "src/mame/video/fromanc2.cpp",
	MAME_DIR .. "src/mame/drivers/gstriker.cpp",
--	MAME_DIR .. "src/mame/includes/gstriker.h",
	MAME_DIR .. "src/mame/video/gstriker.cpp",
	MAME_DIR .. "src/mame/video/mb60553.cpp",
--	MAME_DIR .. "src/mame/video/mb60553.h",
	MAME_DIR .. "src/mame/video/vs920a.cpp",
--	MAME_DIR .. "src/mame/video/vs920a.h",
	MAME_DIR .. "src/mame/drivers/inufuku.cpp",
	MAME_DIR .. "src/mame/drivers/ojankohs.cpp",
--	MAME_DIR .. "src/mame/includes/ojankohs.h",
	MAME_DIR .. "src/mame/video/ojankohs.cpp",
	MAME_DIR .. "src/mame/drivers/pipedrm.cpp",
	MAME_DIR .. "src/mame/drivers/rpunch.cpp",
--	MAME_DIR .. "src/mame/includes/rpunch.h",
	MAME_DIR .. "src/mame/video/rpunch.cpp",
	MAME_DIR .. "src/mame/drivers/suprslam.cpp",
--	MAME_DIR .. "src/mame/includes/suprslam.h",
	MAME_DIR .. "src/mame/video/suprslam.cpp",
	MAME_DIR .. "src/mame/drivers/tail2nos.cpp",
--	MAME_DIR .. "src/mame/includes/tail2nos.h",
	MAME_DIR .. "src/mame/video/tail2nos.cpp",
	MAME_DIR .. "src/hbmame/drivers/taotaido.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/taotaido.h",
	MAME_DIR .. "src/mame/video/taotaido.cpp",
	MAME_DIR .. "src/mame/drivers/welltris.cpp",
--	MAME_DIR .. "src/mame/includes/welltris.h",
	MAME_DIR .. "src/mame/video/welltris.cpp",
}

createHBMAMEProjects(_target, _subtarget, "wing")
files {
	MAME_DIR .. "src/mame/drivers/lucky37.cpp",
	MAME_DIR .. "src/mame/drivers/lucky74.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/lucky74.h",
	MAME_DIR .. "src/mame/video/lucky74.cpp",
	MAME_DIR .. "src/mame/drivers/luckgrln.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/pinkiri8.cpp",
	MAME_DIR .. "src/mame/drivers/slotcarn.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/superwng.cpp",
}

createHBMAMEProjects(_target, _subtarget, "yunsung")
files {
	MAME_DIR .. "src/mame/drivers/nmg5.cpp",
	MAME_DIR .. "src/mame/drivers/paradise.cpp",
--	MAME_DIR .. "src/mame/includes/paradise.h",
	MAME_DIR .. "src/mame/video/paradise.cpp",
	MAME_DIR .. "src/mame/drivers/yunsung8.cpp",
--	MAME_DIR .. "src/mame/includes/yunsung8.h",
	MAME_DIR .. "src/mame/video/yunsung8.cpp",
	MAME_DIR .. "src/mame/drivers/yunsun16.cpp",
--	MAME_DIR .. "src/mame/includes/yunsun16.h",
	MAME_DIR .. "src/mame/video/yunsun16.cpp",
}

createHBMAMEProjects(_target, _subtarget, "zaccaria")
files {
	MAME_DIR .. "src/mame/audio/nl_zac1b11142.cpp",
--	MAME_DIR .. "src/mame/audio/nl_zac1b11142.h",
	MAME_DIR .. "src/mame/audio/zaccaria.cpp",
--	MAME_DIR .. "src/mame/audio/zaccaria.h",
	MAME_DIR .. "src/mame/drivers/laserbat.cpp",
--	MAME_DIR .. "src/mame/includes/laserbat.h",
	MAME_DIR .. "src/mame/video/laserbat.cpp",
	MAME_DIR .. "src/mame/audio/laserbat.cpp",
	MAME_DIR .. "src/mame/drivers/seabattl.cpp",
	MAME_DIR .. "src/mame/drivers/zac2650.cpp",
--	MAME_DIR .. "src/mame/includes/zac2650.h",
	MAME_DIR .. "src/mame/video/zac2650.cpp",
	MAME_DIR .. "src/mame/drivers/zaccaria.cpp",
--	MAME_DIR .. "src/mame/includes/zaccaria.h",
	MAME_DIR .. "src/mame/video/zaccaria.cpp",
}

--------------------------------------------------
-- pinball drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "pinball")
files {
--	MAME_DIR .. "src/mame/drivers/allied.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/alvg.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/atari_s1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/atari_s2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/barni.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/bingo.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/by17.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/by35.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/by6803.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/by68701.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/byvid.cpp",
--	MAME_DIR .. "src/mame/drivers/capcom.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/de_2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/de_3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/decopincpu.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/decopincpu.h",
--	MAME_DIR .. "src/mame/video/decodmd1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/video/decodmd1.h",
--	MAME_DIR .. "src/mame/video/decodmd2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/video/decodmd2.h",
--	MAME_DIR .. "src/mame/video/decodmd3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/video/decodmd3.h",
--	MAME_DIR .. "src/mame/drivers/de_3b.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/flicker.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/g627.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gp_1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/genpin.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/genpin.h",
--	MAME_DIR .. "src/mame/drivers/gp_2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts3a.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts80.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts80a.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/gts80b.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/hankin.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/icecold.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/idsa.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/inder.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/inderp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/jeutel.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/joctronic.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/jp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/jvh.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/kissproto.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/lckydraw.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/ltd.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/macp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/micropin.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/missamer.cpp",
--	MAME_DIR .. "src/mame/drivers/mephistp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/mrgame.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/nsm.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/peyper.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/play_1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/play_2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/play_3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/rowamet.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s11.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/s11.h",
--	MAME_DIR .. "src/mame/drivers/s11a.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/s11a.h",
--	MAME_DIR .. "src/mame/drivers/s11b.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/s11b.h",
--	MAME_DIR .. "src/mame/drivers/s11c.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/s11c.h",
--	MAME_DIR .. "src/mame/audio/pinsnd88.cpp",
--	MAME_DIR .. "src/mame/audio/pinsnd88.h",
	MAME_DIR .. "src/mame/audio/s11c_bg.cpp",
--	MAME_DIR .. "src/mame/audio/s11c_bg.h",
--	MAME_DIR .. "src/mame/drivers/s3.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s4.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s6.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s6a.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s7.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s8.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s8a.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/s9.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/sam.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/sleic.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/spectra.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/spinb.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/spirit76.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/st_mp100.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/st_mp200.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/stargame.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/supstarf.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/taito.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/techno.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/vd.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/whitestar.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/white_mod.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/wico.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/wpc_95.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/wpc_an.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/wpc_dcs.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/wpc_dot.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/wpc_dot.h",
--	MAME_DIR .. "src/mame/drivers/wpc_flip1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/wpc_flip1.h",
--	MAME_DIR .. "src/mame/drivers/wpc_flip2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/wpc_flip2.h",
--	MAME_DIR .. "src/mame/drivers/wpc_s.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc.h", --It is not necessary to include it
	MAME_DIR .. "src/mame/audio/bally.cpp", --(midway)
--	MAME_DIR .. "src/mame/audio/wpcsnd.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/audio/wpcsnd.h",
--	MAME_DIR .. "src/mame/video/wpc_dmd.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/video/wpc_dmd.h",
--	MAME_DIR .. "src/mame/machine/wpc_pic.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc_pic.h",
--	MAME_DIR .. "src/mame/machine/wpc_lamp.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc_lamp.h",
--	MAME_DIR .. "src/mame/machine/wpc_out.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc_out.h",
--	MAME_DIR .. "src/mame/machine/wpc_shift.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/machine/wpc_shift.h",
--	MAME_DIR .. "src/mame/drivers/zac_1.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/zac_2.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/zac_proto.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/drivers/zpinball.cpp",
}

--------------------------------------------------
-- remaining drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "misc")
files {
	MAME_DIR .. "src/mame/drivers/39in1.cpp",
--	MAME_DIR .. "src/mame/drivers/3do.cpp", --It is not necessary to include it
--	MAME_DIR .. "src/mame/includes/3do.h",
--	MAME_DIR .. "src/mame/machine/3do.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/4enraya.cpp",
	MAME_DIR .. "src/mame/includes/4enraya.h",
	MAME_DIR .. "src/mame/video/4enraya.cpp",
--	MAME_DIR .. "src/mame/drivers/4enlinea.cpp",
--	MAME_DIR .. "src/mame/drivers/5clown.cpp",
--	MAME_DIR .. "src/mame/drivers/a1supply.cpp",
--	MAME_DIR .. "src/mame/drivers/acefruit.cpp",
--	MAME_DIR .. "src/mame/drivers/aces1.cpp",
--	MAME_DIR .. "src/mame/drivers/acesp.cpp",
--	MAME_DIR .. "src/mame/drivers/age_candy.cpp",
	MAME_DIR .. "src/mame/drivers/alinvade.cpp",
--	MAME_DIR .. "src/mame/drivers/amaticmg.cpp",
--	MAME_DIR .. "src/mame/drivers/amerihok.cpp",
--	MAME_DIR .. "src/mame/drivers/ampoker2.cpp",
--	MAME_DIR .. "src/mame/includes/ampoker2.h",
--	MAME_DIR .. "src/mame/video/ampoker2.cpp",
	MAME_DIR .. "src/mame/drivers/amspdwy.cpp",
--	MAME_DIR .. "src/mame/includes/amspdwy.h",
	MAME_DIR .. "src/mame/video/amspdwy.cpp",
--	MAME_DIR .. "src/mame/drivers/amusco.cpp",
--	MAME_DIR .. "src/mame/drivers/anes.cpp",
--	MAME_DIR .. "src/mame/drivers/arachnid.cpp",
	MAME_DIR .. "src/mame/drivers/artmagic.cpp",
--	MAME_DIR .. "src/mame/includes/artmagic.h",
	MAME_DIR .. "src/mame/video/artmagic.cpp",
--	MAME_DIR .. "src/mame/drivers/astrafr.cpp",
--	MAME_DIR .. "src/mame/drivers/astrcorp.cpp",
--	MAME_DIR .. "src/mame/drivers/astropc.cpp",
--	MAME_DIR .. "src/mame/drivers/atronic.cpp",
	MAME_DIR .. "src/mame/drivers/attckufo.cpp",
--	MAME_DIR .. "src/mame/drivers/avt.cpp",
	MAME_DIR .. "src/mame/drivers/aztarac.cpp",
--	MAME_DIR .. "src/mame/includes/aztarac.h",
	MAME_DIR .. "src/mame/audio/aztarac.cpp",
	MAME_DIR .. "src/mame/video/aztarac.cpp",
--	MAME_DIR .. "src/mame/drivers/bailey.cpp",
	MAME_DIR .. "src/mame/drivers/beaminv.cpp",
	MAME_DIR .. "src/mame/drivers/beezer.cpp",
--	MAME_DIR .. "src/mame/drivers/belatra.cpp",
--	MAME_DIR .. "src/mame/drivers/bgt.cpp",
--	MAME_DIR .. "src/mame/drivers/bingoman.cpp",
--	MAME_DIR .. "src/mame/drivers/bingor.cpp",
--	MAME_DIR .. "src/mame/drivers/blitz68k.cpp",
	MAME_DIR .. "src/mame/drivers/blocktax.cpp",
--	MAME_DIR .. "src/mame/drivers/buster.cpp",
--	MAME_DIR .. "src/mame/drivers/calomega.cpp",
--	MAME_DIR .. "src/mame/includes/calomega.h",
--	MAME_DIR .. "src/mame/video/calomega.cpp",
	MAME_DIR .. "src/mame/drivers/cardline.cpp",
	MAME_DIR .. "src/mame/drivers/carrera.cpp",
--	MAME_DIR .. "src/mame/drivers/castle.cpp",
	MAME_DIR .. "src/hbmame/drivers/cave.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/cave.h",
	MAME_DIR .. "src/mame/video/cave.cpp",
	MAME_DIR .. "src/mame/drivers/cavepc.cpp",
	MAME_DIR .. "src/hbmame/drivers/cv1k.cpp", --HBMAME
--	MAME_DIR .. "src/mame/drivers/cb2001.cpp",
	MAME_DIR .. "src/mame/drivers/cdi.cpp",
--	MAME_DIR .. "src/mame/includes/cdi.h",
	MAME_DIR .. "src/mame/video/mcd212.cpp",
--	MAME_DIR .. "src/mame/video/mcd212.h",
	MAME_DIR .. "src/mame/machine/cdislavehle.cpp",
--	MAME_DIR .. "src/mame/machine/cdislavehle.h",
	MAME_DIR .. "src/mame/machine/cdicdic.cpp",
--	MAME_DIR .. "src/mame/machine/cdicdic.h",
    MAME_DIR .. "src/mame/drivers/chameleonrx1.cpp",
	MAME_DIR .. "src/mame/drivers/chance32.cpp",
--	MAME_DIR .. "src/mame/drivers/changyu.cpp",
--	MAME_DIR .. "src/mame/drivers/chexx.cpp",
--	MAME_DIR .. "src/mame/drivers/chicago.cpp",
--	MAME_DIR .. "src/mame/drivers/chsuper.cpp",
--	MAME_DIR .. "src/mame/drivers/clowndwn.cpp",
--	MAME_DIR .. "src/mame/drivers/clpoker.cpp",
	MAME_DIR .. "src/mame/drivers/cocoloco.cpp",
--	MAME_DIR .. "src/mame/audio/nl_cocoloco.h",
    MAME_DIR .. "src/mame/audio/nl_cocoloco.cpp",
	MAME_DIR .. "src/mame/drivers/coinmstr.cpp",
--	MAME_DIR .. "src/mame/drivers/coinmvga.cpp", //?????
--  MAME_DIR .. "src/mame/drivers/cointek.cpp",
--  MAME_DIR .. "src/mame/drivers/crazybal.cpp",
	MAME_DIR .. "src/mame/drivers/comebaby.cpp",
--	MAME_DIR .. "src/mame/drivers/cowtipping.cpp",
--	MAME_DIR .. "src/mame/drivers/cromptons.cpp",
--	MAME_DIR .. "src/mame/drivers/cupidon.cpp",
	MAME_DIR .. "src/mame/drivers/bntyhunt.cpp",
	MAME_DIR .. "src/mame/drivers/coolpool.cpp",
--	MAME_DIR .. "src/mame/includes/coolpool.h",
	MAME_DIR .. "src/mame/drivers/megaphx.cpp",
	MAME_DIR .. "src/mame/machine/inder_sb.cpp",
--	MAME_DIR .. "src/mame/machine/inder_sb.h",
	MAME_DIR .. "src/mame/machine/inder_vid.cpp",
--	MAME_DIR .. "src/mame/machine/inder_vid.h",
	MAME_DIR .. "src/mame/drivers/corona.cpp",
	MAME_DIR .. "src/mame/drivers/cwheel.cpp",
	MAME_DIR .. "src/mame/drivers/crystal.cpp",
	MAME_DIR .. "src/mame/drivers/ddz.cpp",
	MAME_DIR .. "src/mame/drivers/menghong.cpp",
	MAME_DIR .. "src/mame/drivers/trivrus.cpp",
	MAME_DIR .. "src/mame/drivers/crospuzl.cpp",
	MAME_DIR .. "src/mame/drivers/psattack.cpp",
	MAME_DIR .. "src/mame/drivers/v0bowl.cpp",
	MAME_DIR .. "src/mame/drivers/cubeqst.cpp",
	MAME_DIR .. "src/mame/drivers/cybertnk.cpp",
	MAME_DIR .. "src/mame/drivers/daryde.cpp",
	MAME_DIR .. "src/mame/drivers/dcheese.cpp",
--	MAME_DIR .. "src/mame/includes/dcheese.h",
	MAME_DIR .. "src/mame/video/dcheese.cpp",
	MAME_DIR .. "src/mame/drivers/dfruit.cpp",
	MAME_DIR .. "src/mame/drivers/dgpix.cpp",
	MAME_DIR .. "src/mame/drivers/diamondking.cpp",
	MAME_DIR .. "src/mame/drivers/discoboy.cpp",
	MAME_DIR .. "src/mame/drivers/dominob.cpp",
	MAME_DIR .. "src/mame/drivers/dorachan.cpp",
	MAME_DIR .. "src/mame/drivers/drdmania.cpp",
	MAME_DIR .. "src/mame/drivers/dreamwld.cpp",
--	MAME_DIR .. "src/mame/drivers/dwarfd.cpp",
	MAME_DIR .. "src/mame/drivers/dynadice.cpp",
	MAME_DIR .. "src/mame/drivers/dynamoah.cpp",
--	MAME_DIR .. "src/mame/drivers/ecoinfr.cpp",
--	MAME_DIR .. "src/mame/drivers/ecoinf1.cpp",
--	MAME_DIR .. "src/mame/drivers/ecoinf2.cpp",
--	MAME_DIR .. "src/mame/drivers/ecoinf3.cpp",
--	MAME_DIR .. "src/mame/includes/efdt.h",
	MAME_DIR .. "src/mame/drivers/efdt.cpp",
--	MAME_DIR .. "src/mame/drivers/electra.cpp",
	MAME_DIR .. "src/mame/drivers/epos.cpp",
--	MAME_DIR .. "src/mame/includes/epos.h",
	MAME_DIR .. "src/mame/video/epos.cpp",
	MAME_DIR .. "src/mame/drivers/esd16.cpp",
--	MAME_DIR .. "src/mame/includes/esd16.h",
	MAME_DIR .. "src/mame/video/esd16.cpp",
--	MAME_DIR .. "src/mame/drivers/esh.cpp",
	MAME_DIR .. "src/mame/drivers/esripsys.cpp",
--	MAME_DIR .. "src/mame/includes/esripsys.h",
	MAME_DIR .. "src/mame/video/esripsys.cpp",
	MAME_DIR .. "src/mame/drivers/ettrivia.cpp",
--	MAME_DIR .. "src/mame/drivers/extrema.cpp",
	MAME_DIR .. "src/mame/drivers/ez2d.cpp",
	MAME_DIR .. "src/mame/drivers/fastinvaders.cpp",
--	MAME_DIR .. "src/mame/drivers/fireball.cpp",
	MAME_DIR .. "src/mame/drivers/flipjack.cpp",
	MAME_DIR .. "src/mame/drivers/flower.cpp",
	MAME_DIR .. "src/mame/audio/flower.cpp",
--	MAME_DIR .. "src/mame/drivers/fortecar.cpp",
--	MAME_DIR .. "src/mame/drivers/fresh.cpp",
	MAME_DIR .. "src/mame/drivers/freekick.cpp",
--	MAME_DIR .. "src/mame/includes/freekick.h",
	MAME_DIR .. "src/mame/video/freekick.cpp",
--	MAME_DIR .. "src/mame/drivers/freeway.cpp",
--	MAME_DIR .. "src/mame/drivers/fungames.cpp",
	MAME_DIR .. "src/mame/drivers/funkball.cpp",
--	MAME_DIR .. "src/mame/drivers/gambl186.cpp",
	MAME_DIR .. "src/mame/drivers/galaxi.cpp",
	MAME_DIR .. "src/mame/drivers/galgame.cpp",
--	MAME_DIR .. "src/mame/drivers/gamecstl.cpp",
--	MAME_DIR .. "src/mame/drivers/gamemasters.cpp",
--	MAME_DIR .. "src/mame/drivers/gammagic.cpp",
--	MAME_DIR .. "src/mame/drivers/gamtor.cpp",
	MAME_DIR .. "src/mame/drivers/gei.cpp",
--	MAME_DIR .. "src/mame/drivers/gfamily.cpp",
--	MAME_DIR .. "src/mame/drivers/globalfr.cpp",
--	MAME_DIR .. "src/mame/drivers/globalvr.cpp",
	MAME_DIR .. "src/mame/drivers/gluck2.cpp",
--	MAME_DIR .. "src/mame/drivers/goldngam.cpp",
--	MAME_DIR .. "src/mame/drivers/goldnpkr.cpp",
	MAME_DIR .. "src/mame/drivers/good.cpp",
	MAME_DIR .. "src/mame/drivers/gotcha.cpp",
--	MAME_DIR .. "src/mame/includes/gotcha.h",
	MAME_DIR .. "src/mame/video/gotcha.cpp",
	MAME_DIR .. "src/mame/drivers/gsspade.cpp",
	MAME_DIR .. "src/mame/drivers/gumbo.cpp",
--	MAME_DIR .. "src/mame/includes/gumbo.h",
	MAME_DIR .. "src/mame/video/gumbo.cpp",
	MAME_DIR .. "src/mame/drivers/gunpey.cpp",
--	MAME_DIR .. "src/mame/drivers/hapyfish.cpp",
--	MAME_DIR .. "src/mame/drivers/hideseek.cpp",
--	MAME_DIR .. "src/mame/drivers/hazelgr.cpp",
	MAME_DIR .. "src/mame/drivers/headonb.cpp",
--	MAME_DIR .. "src/mame/drivers/highvdeo.cpp",
--	MAME_DIR .. "src/mame/drivers/hitpoker.cpp",
--  MAME_DIR .. "src/mame/drivers/hobbyplay.cpp",
	MAME_DIR .. "src/mame/drivers/homedata.cpp",
--	MAME_DIR .. "src/mame/includes/homedata.h",
	MAME_DIR .. "src/mame/video/homedata.cpp",
	MAME_DIR .. "src/mame/drivers/hotblock.cpp",
--	MAME_DIR .. "src/mame/drivers/hotstuff.cpp",
--	MAME_DIR .. "src/mame/drivers/ichiban.cpp",
	MAME_DIR .. "src/mame/drivers/imolagp.cpp",
--	MAME_DIR .. "src/mame/drivers/intrscti.cpp",
--  MAME_DIR .. "src/mame/drivers/island.cpp",
--	MAME_DIR .. "src/mame/drivers/istellar.cpp",
--	MAME_DIR .. "src/mame/drivers/itgambl2.cpp",
--	MAME_DIR .. "src/mame/drivers/itgambl3.cpp",
--	MAME_DIR .. "src/mame/drivers/itgamble.cpp",
--	MAME_DIR .. "src/mame/drivers/jackpool.cpp",
--  MAME_DIR .. "src/mame/drivers/jackpot.cpp",
	MAME_DIR .. "src/mame/drivers/jankenmn.cpp",
--	MAME_DIR .. "src/mame/drivers/jokrwild.cpp",
	MAME_DIR .. "src/mame/drivers/joystand.cpp",
	MAME_DIR .. "src/mame/drivers/jubilee.cpp",
--	MAME_DIR .. "src/mame/drivers/jungleyo.cpp",
	MAME_DIR .. "src/mame/drivers/kas89.cpp",
	MAME_DIR .. "src/mame/drivers/kingpin.cpp",
	MAME_DIR .. "src/mame/drivers/kurukuru.cpp",
	MAME_DIR .. "src/hbmame/drivers/kyugo.cpp", --HBMAME
--	MAME_DIR .. "src/mame/includes/kyugo.h",
	MAME_DIR .. "src/mame/video/kyugo.cpp",
	MAME_DIR .. "src/mame/drivers/ladyfrog.cpp",
--	MAME_DIR .. "src/mame/includes/ladyfrog.h",
	MAME_DIR .. "src/mame/video/ladyfrog.cpp",
	MAME_DIR .. "src/mame/drivers/laserbas.cpp",
--	MAME_DIR .. "src/mame/drivers/laz_aftrshok.cpp",
--	MAME_DIR .. "src/mame/drivers/laz_ribrac.cpp",
	MAME_DIR .. "src/mame/drivers/lethalj.cpp",
--	MAME_DIR .. "src/mame/includes/lethalj.h",
	MAME_DIR .. "src/mame/video/lethalj.cpp",
	MAME_DIR .. "src/mame/drivers/limenko.cpp",
--	MAME_DIR .. "src/mame/drivers/ltcasino.cpp",
--	MAME_DIR .. "src/mame/drivers/luckybal.cpp",
--	MAME_DIR .. "src/mame/drivers/magic10.cpp",
--	MAME_DIR .. "src/mame/drivers/magicard.cpp",
--	MAME_DIR .. "src/mame/drivers/magicfly.cpp",
--	MAME_DIR .. "src/mame/drivers/magictg.cpp",
	MAME_DIR .. "src/mame/drivers/magreel.cpp",
	MAME_DIR .. "src/mame/drivers/magtouch.cpp",
	MAME_DIR .. "src/mame/drivers/majorpkr.cpp",
	MAME_DIR .. "src/mame/drivers/malzak.cpp",
--	MAME_DIR .. "src/mame/includes/malzak.h",
	MAME_DIR .. "src/mame/video/malzak.cpp",
--	MAME_DIR .. "src/mame/drivers/marywu.cpp",
--  MAME_DIR .. "src/mame/drivers/matrix.cpp",
	MAME_DIR .. "src/mame/drivers/mcatadv.cpp",
--	MAME_DIR .. "src/mame/includes/mcatadv.h",
	MAME_DIR .. "src/mame/video/mcatadv.cpp",
--	MAME_DIR .. "src/mame/drivers/mgavegas.cpp",
--	MAME_DIR .. "src/mame/drivers/meyc8080.cpp",
--	MAME_DIR .. "src/mame/drivers/meyc8088.cpp",
	MAME_DIR .. "src/mame/drivers/micro3d.cpp",
--	MAME_DIR .. "src/mame/includes/micro3d.h",
	MAME_DIR .. "src/mame/machine/micro3d.cpp",
	MAME_DIR .. "src/mame/video/micro3d.cpp",
	MAME_DIR .. "src/mame/audio/micro3d.cpp",
--	MAME_DIR .. "src/mame/audio/micro3d.h",
--	MAME_DIR .. "src/mame/drivers/microdar.cpp",
--	MAME_DIR .. "src/mame/drivers/midas.cpp", --not working (An incompatible with the neogeo of a is generated ARCADE with that of HBMAME.)
	MAME_DIR .. "src/mame/drivers/mil4000.cpp", --It is not necessary to include it
	MAME_DIR .. "src/mame/drivers/miniboy7.cpp",
	MAME_DIR .. "src/mame/drivers/minivideo.cpp",
	MAME_DIR .. "src/mame/drivers/mirax.cpp",
	MAME_DIR .. "src/mame/drivers/mjsenpu.cpp",
	MAME_DIR .. "src/mame/drivers/mole.cpp",
	MAME_DIR .. "src/mame/drivers/mosaic.cpp",
--	MAME_DIR .. "src/mame/includes/mosaic.h",
	MAME_DIR .. "src/mame/video/mosaic.cpp",
--	MAME_DIR .. "src/mame/drivers/mpu12wbk.cpp",
--	MAME_DIR .. "src/mame/drivers/multfish.cpp",
--	MAME_DIR .. "src/mame/includes/multfish.h",
--	MAME_DIR .. "src/mame/drivers/multfish_boot.cpp",
--	MAME_DIR .. "src/mame/drivers/murogem.cpp",
--	MAME_DIR .. "src/mame/drivers/murogmbl.cpp",
	MAME_DIR .. "src/mame/drivers/neoprint.cpp",
	MAME_DIR .. "src/mame/drivers/news.cpp",
--	MAME_DIR .. "src/mame/includes/news.h",
	MAME_DIR .. "src/mame/video/news.cpp",
--	MAME_DIR .. "src/mame/drivers/nexus3d.cpp",
--	MAME_DIR .. "src/mame/drivers/nibble.cpp",
--	MAME_DIR .. "src/mame/drivers/norautp.cpp",
--	MAME_DIR .. "src/mame/includes/norautp.h",
--	MAME_DIR .. "src/mame/audio/norautp.cpp",
--	MAME_DIR .. "src/mame/drivers/notechan.cpp",
--	MAME_DIR .. "src/mame/drivers/nsg6809.cpp",
--	MAME_DIR .. "src/mame/drivers/nsmpoker.cpp",
	MAME_DIR .. "src/mame/drivers/odyssey.cpp",
	MAME_DIR .. "src/mame/drivers/oneshot.cpp",
--	MAME_DIR .. "src/mame/includes/oneshot.h",
	MAME_DIR .. "src/mame/video/oneshot.cpp",
	MAME_DIR .. "src/mame/drivers/onetwo.cpp",
	MAME_DIR .. "src/mame/drivers/opercoin.cpp",
	MAME_DIR .. "src/mame/drivers/othello.cpp",
	MAME_DIR .. "src/mame/drivers/pachifev.cpp",
	MAME_DIR .. "src/mame/drivers/pasha2.cpp",
	MAME_DIR .. "src/mame/drivers/pass.cpp",
--	MAME_DIR .. "src/mame/includes/pass.h",
	MAME_DIR .. "src/mame/video/pass.cpp",
	MAME_DIR .. "src/mame/drivers/photon.cpp",
--	MAME_DIR .. "src/mame/drivers/piggypas.cpp",
	MAME_DIR .. "src/mame/video/pk8000.cpp",
	MAME_DIR .. "src/mame/drivers/photon2.cpp",
	MAME_DIR .. "src/mame/drivers/pipeline.cpp",
	MAME_DIR .. "src/mame/drivers/pkscram.cpp",
--	MAME_DIR .. "src/mame/drivers/playcenter.cpp",
--	MAME_DIR .. "src/mame/drivers/plsonic4.cpp",
	MAME_DIR .. "src/mame/drivers/pntnpuzl.cpp",
	MAME_DIR .. "src/mame/drivers/policetr.cpp",
--	MAME_DIR .. "src/mame/includes/policetr.h",
	MAME_DIR .. "src/mame/video/policetr.cpp",
	MAME_DIR .. "src/mame/drivers/polyplay.cpp",
--	MAME_DIR .. "src/mame/includes/polyplay.h",
	MAME_DIR .. "src/mame/audio/polyplay.cpp",
	MAME_DIR .. "src/mame/video/polyplay.cpp",
--	MAME_DIR .. "src/mame/drivers/poker72.cpp",
	MAME_DIR .. "src/mame/drivers/pokerout.cpp",
--	MAME_DIR .. "src/mame/drivers/potgoldu.cpp",
--	MAME_DIR .. "src/mame/drivers/proconn.cpp",
--	MAME_DIR .. "src/mame/drivers/pse.cpp",
	MAME_DIR .. "src/mame/drivers/quizo.cpp",
--	MAME_DIR .. "src/mame/drivers/quizpun2.cpp",
--  MAME_DIR .. "src/mame/drivers/radikaldarts.cpp",
	MAME_DIR .. "src/mame/drivers/rbmk.cpp",
--	MAME_DIR .. "src/mame/drivers/rcorsair.cpp",
	MAME_DIR .. "src/mame/drivers/re900.cpp",
--	MAME_DIR .. "src/mame/drivers/rf51w14cg.cpp",
--	MAME_DIR .. "src/mame/drivers/rfslots8085.cpp",
--	MAME_DIR .. "src/mame/drivers/rfslotsmcs48.cpp",
--	MAME_DIR .. "src/mame/drivers/rfslotspcpent.cpp",
--	MAME_DIR .. "src/mame/drivers/rgum.cpp",
	MAME_DIR .. "src/mame/drivers/roul.cpp",
	MAME_DIR .. "src/mame/drivers/rulechan.cpp",
	MAME_DIR .. "src/mame/drivers/savquest.cpp",
	MAME_DIR .. "src/mame/drivers/sanremo.cpp",
--	MAME_DIR .. "src/mame/drivers/sanremmg.cpp",
--  MAME_DIR .. "src/mame/drivers/schexx4gen.cpp",
--	MAME_DIR .. "src/mame/drivers/scm_500.cpp",
	MAME_DIR .. "src/mame/drivers/sealy.cpp",
    MAME_DIR .. "src/mame/drivers/sealy_fr.cpp",
--	MAME_DIR .. "src/mame/drivers/sfbonus.cpp",
	MAME_DIR .. "src/mame/drivers/shangkid.cpp",
--	MAME_DIR .. "src/mame/includes/shangkid.h",
	MAME_DIR .. "src/mame/video/shangkid.cpp",
--	MAME_DIR .. "src/mame/drivers/silverball.cpp",
--	MAME_DIR .. "src/mame/drivers/skeetsht.cpp",
	MAME_DIR .. "src/mame/drivers/skimaxx.cpp",
	MAME_DIR .. "src/mame/drivers/skopro.cpp",
	MAME_DIR .. "src/mame/drivers/skyarmy.cpp",
	MAME_DIR .. "src/mame/drivers/skylncr.cpp",
	MAME_DIR .. "src/mame/drivers/sliver.cpp",
	MAME_DIR .. "src/mame/drivers/smotor.cpp",
	MAME_DIR .. "src/mame/drivers/smsmcorp.cpp",
	MAME_DIR .. "src/mame/drivers/sothello.cpp",
--	MAME_DIR .. "src/mame/drivers/special_gambl.cpp",
	MAME_DIR .. "src/mame/audio/special.cpp",
--	MAME_DIR .. "src/mame/audio/special.h",
	MAME_DIR .. "src/mame/drivers/spool99.cpp",
	MAME_DIR .. "src/mame/drivers/sprcros2.cpp",
	MAME_DIR .. "src/mame/drivers/ssingles.cpp",
	MAME_DIR .. "src/mame/drivers/sstrangr.cpp",
	MAME_DIR .. "src/mame/drivers/startouch.cpp",
	MAME_DIR .. "src/mame/drivers/statriv2.cpp",
	MAME_DIR .. "src/mame/drivers/strkzn.cpp",
	MAME_DIR .. "src/mame/drivers/stuntair.cpp",
	MAME_DIR .. "src/mame/drivers/su2000.cpp",
--	MAME_DIR .. "src/mame/drivers/summit.cpp",
--	MAME_DIR .. "src/mame/drivers/sumt8035.cpp",
--	MAME_DIR .. "src/mame/drivers/supercrd.cpp",
	MAME_DIR .. "src/mame/drivers/supertnk.cpp",
	MAME_DIR .. "src/mame/drivers/tapatune.cpp",
	MAME_DIR .. "src/mame/drivers/tattack.cpp",
	MAME_DIR .. "src/mame/drivers/taxidriv.cpp",
--	MAME_DIR .. "src/mame/includes/taxidriv.h",
	MAME_DIR .. "src/mame/video/taxidriv.cpp",
--	MAME_DIR .. "src/mame/drivers/teamjocs.cpp",
--	MAME_DIR .. "src/mame/drivers/tecnodar.cpp",
--	MAME_DIR .. "src/mame/drivers/thayers.cpp",
	MAME_DIR .. "src/mame/drivers/thedeep.cpp",
--	MAME_DIR .. "src/mame/includes/thedeep.h",
	MAME_DIR .. "src/mame/video/thedeep.cpp",
	MAME_DIR .. "src/mame/drivers/tickee.cpp",
--	MAME_DIR .. "src/mame/drivers/tmspoker.cpp",
    MAME_DIR .. "src/mame/drivers/triviaquiz.cpp",
	MAME_DIR .. "src/mame/drivers/truco.cpp",
--	MAME_DIR .. "src/mame/includes/truco.h",
	MAME_DIR .. "src/mame/video/truco.cpp",
	MAME_DIR .. "src/mame/drivers/trucocl.cpp",
--	MAME_DIR .. "src/mame/includes/trucocl.h",
	MAME_DIR .. "src/mame/video/trucocl.cpp",
	MAME_DIR .. "src/mame/drivers/trvmadns.cpp",
	MAME_DIR .. "src/mame/drivers/trvquest.cpp",
	MAME_DIR .. "src/mame/drivers/ttchamp.cpp",
	MAME_DIR .. "src/mame/drivers/tugboat.cpp",
	MAME_DIR .. "src/mame/drivers/tvg01.cpp",
--	MAME_DIR .. "src/mame/drivers/twinbskt.cpp",
--	MAME_DIR .. "src/mame/drivers/ice_bozopail.cpp",
--  MAME_DIR .. "src/mame/drivers/ice_hhhippos.cpp",
--	MAME_DIR .. "src/mame/drivers/ice_tbd.cpp",
	MAME_DIR .. "src/mame/drivers/umipoker.cpp",
	MAME_DIR .. "src/mame/drivers/unkhorse.cpp",
--	MAME_DIR .. "src/mame/drivers/unkpoker.cpp",
--	MAME_DIR .. "src/mame/drivers/usbilliards.cpp",
	MAME_DIR .. "src/mame/drivers/usgames.cpp",
--	MAME_DIR .. "src/mame/includes/usgames.h",
	MAME_DIR .. "src/mame/video/usgames.cpp",
	MAME_DIR .. "src/hbmame/drivers/vamphalf.cpp", --HBMAME
	MAME_DIR .. "src/mame/drivers/vcombat.cpp",
	MAME_DIR .. "src/mame/drivers/vectrex.cpp",
--	MAME_DIR .. "src/mame/includes/vectrex.h",
	MAME_DIR .. "src/mame/video/vectrex.cpp",
	MAME_DIR .. "src/mame/machine/vectrex.cpp",
--	MAME_DIR .. "src/mame/drivers/video21.cpp",
--	MAME_DIR .. "src/mame/drivers/videosaa.cpp",
--	MAME_DIR .. "src/mame/drivers/vlc.cpp",
--  MAME_DIR .. "src/mame/drivers/vlc34010.cpp",
	MAME_DIR .. "src/mame/drivers/voyager.cpp",
	MAME_DIR .. "src/mame/drivers/vp101.cpp",
--	MAME_DIR .. "src/mame/drivers/vpoker.cpp",
	MAME_DIR .. "src/mame/drivers/vroulet.cpp",
--	MAME_DIR .. "src/mame/drivers/wildpkr.cpp",
--  MAME_DIR .. "src/mame/drivers/winbingo.cpp",
--	MAME_DIR .. "src/mame/drivers/wms.cpp",
--	MAME_DIR .. "src/mame/drivers/xtom3d.cpp",
	MAME_DIR .. "src/mame/drivers/xyonix.cpp",
--	MAME_DIR .. "src/mame/drivers/yuvomz80.cpp",
}

createHBMAMEProjects(_target, _subtarget, "homebrow")
files {
	MAME_DIR .. "src/hbmame/drivers/schaser.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/spacmiss.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/monaco.cpp", --HBMAME
	MAME_DIR .. "src/hbmame/drivers/hh_sm510.cpp", --HBMAME
	MAME_DIR .. "src/devices/video/ppu2c0x.cpp", --HBMAME
	MAME_DIR .. "src/devices/machine/z80dma.cpp", --HBMAME
}

--------------------------------------------------
-- Important to read this note before continuing  
-- Disable the hh_sm510 driver of the MESS system, 
-- because it goes away to overlay the codes at 
-- compilation time, which It will cause failure 
-- in the end of the codes. 

-- Disable Neogeo Cd Driver.
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "messshared")
files {
	MAME_DIR .. "src/mame/machine/teleprinter.cpp",
	MAME_DIR .. "src/mame/machine/teleprinter.h",
	MAME_DIR .. "src/mame/machine/z80bin.cpp",
	MAME_DIR .. "src/mame/machine/z80bin.h",
}
--------------------------------------------------
-- manufacturer-specific groupings for drivers
--------------------------------------------------

createHBMAMEProjects(_target, _subtarget, "access")
files {
	MAME_DIR .. "src/mame/drivers/acvirus.cpp",
}

createHBMAMEProjects(_target, _subtarget, "aci")
files {
	MAME_DIR .. "src/mame/drivers/aci_boris.cpp",
	MAME_DIR .. "src/mame/drivers/aci_borisdpl.cpp",
	MAME_DIR .. "src/mame/drivers/aci_ggm.cpp",
	MAME_DIR .. "src/mame/drivers/aci_prodigy.cpp",
}

createHBMAMEProjects(_target, _subtarget, "acorn")
files {
	MAME_DIR .. "src/mame/drivers/aa310.cpp",
	MAME_DIR .. "src/mame/machine/archimedes_keyb.cpp",
	MAME_DIR .. "src/mame/machine/archimedes_keyb.h",
	MAME_DIR .. "src/mame/drivers/accomm.cpp",
	MAME_DIR .. "src/mame/drivers/acrnsys1.cpp",
	MAME_DIR .. "src/mame/drivers/acrnsys.cpp",
	MAME_DIR .. "src/mame/drivers/atom.cpp",
	MAME_DIR .. "src/mame/includes/atom.h",
	MAME_DIR .. "src/mame/drivers/bbc.cpp",
	MAME_DIR .. "src/mame/includes/bbc.h",
	MAME_DIR .. "src/mame/machine/bbc.cpp",
	MAME_DIR .. "src/mame/video/bbc.cpp",
	MAME_DIR .. "src/mame/drivers/cms.cpp",
	MAME_DIR .. "src/mame/drivers/electron.cpp",
	MAME_DIR .. "src/mame/includes/electron.h",
	MAME_DIR .. "src/mame/machine/electron.cpp",
	MAME_DIR .. "src/mame/video/electron.cpp",
	MAME_DIR .. "src/mame/drivers/riscpc.cpp",
	MAME_DIR .. "src/mame/drivers/z88.cpp",
	MAME_DIR .. "src/mame/includes/z88.h",
	MAME_DIR .. "src/mame/machine/upd65031.cpp",
	MAME_DIR .. "src/mame/machine/upd65031.h",
	MAME_DIR .. "src/mame/video/z88.cpp",
}

createHBMAMEProjects(_target, _subtarget, "act")
files {
	MAME_DIR .. "src/mame/drivers/apricot.cpp",
	MAME_DIR .. "src/mame/drivers/apricotf.cpp",
	MAME_DIR .. "src/mame/drivers/apricotp.cpp",
	MAME_DIR .. "src/mame/drivers/apxen.cpp",
	MAME_DIR .. "src/mame/machine/apricotkb.cpp",
	MAME_DIR .. "src/mame/machine/apricotkb.h",
	MAME_DIR .. "src/mame/drivers/victor9k.cpp",
	MAME_DIR .. "src/mame/machine/victor9k_kb.cpp",
	MAME_DIR .. "src/mame/machine/victor9k_kb.h",
	MAME_DIR .. "src/mame/machine/victor9k_fdc.cpp",
	MAME_DIR .. "src/mame/machine/victor9k_fdc.h",
}

createHBMAMEProjects(_target, _subtarget, "adc")
files {
	MAME_DIR .. "src/mame/drivers/super6.cpp",
	MAME_DIR .. "src/mame/includes/super6.h",
	MAME_DIR .. "src/mame/drivers/superslave.cpp",
}

createHBMAMEProjects(_target, _subtarget, "agat")
files {
	MAME_DIR .. "src/mame/drivers/agat.cpp",
	MAME_DIR .. "src/mame/machine/agatkeyb.cpp",
	MAME_DIR .. "src/mame/machine/agatkeyb.h",
	MAME_DIR .. "src/mame/video/agat7.cpp",
	MAME_DIR .. "src/mame/video/agat7.h",
	MAME_DIR .. "src/mame/video/agat9.cpp",
	MAME_DIR .. "src/mame/video/agat9.h",
}

createHBMAMEProjects(_target, _subtarget, "akai")
files {
	MAME_DIR .. "src/mame/drivers/akaiax80.cpp",
	MAME_DIR .. "src/mame/drivers/akaivx600.cpp",
	MAME_DIR .. "src/mame/drivers/mpc3000.cpp",
	MAME_DIR .. "src/mame/drivers/mpc60.cpp",
}

createHBMAMEProjects(_target, _subtarget, "alesis")
files {
	MAME_DIR .. "src/mame/drivers/alesis.cpp",
	MAME_DIR .. "src/mame/includes/alesis.h",
	MAME_DIR .. "src/mame/audio/alesis.cpp",
	MAME_DIR .. "src/mame/video/alesis.cpp",
}

createHBMAMEProjects(_target, _subtarget, "altos")
files {
	MAME_DIR .. "src/mame/drivers/altos2.cpp",
	MAME_DIR .. "src/mame/drivers/altos5.cpp",
	MAME_DIR .. "src/mame/drivers/altos486.cpp",
	MAME_DIR .. "src/mame/drivers/altos8600.cpp",
	MAME_DIR .. "src/mame/machine/acs8600_ics.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ami")
files {
	MAME_DIR .. "src/mame/drivers/hh_amis2k.cpp",
}

createHBMAMEProjects(_target, _subtarget, "amirix")
files {
	MAME_DIR .. "src/mame/drivers/wxstar4000.cpp",
}

createHBMAMEProjects(_target, _subtarget, "amiga")
files {
	MAME_DIR .. "src/mame/drivers/amiga.cpp",
	MAME_DIR .. "src/mame/includes/amiga.h",
}

createHBMAMEProjects(_target, _subtarget, "ampro")
files {
	MAME_DIR .. "src/mame/drivers/ampro.cpp",
	MAME_DIR .. "src/mame/drivers/lb186.cpp",
	MAME_DIR .. "src/mame/drivers/lbpc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "amstrad")
files {
	MAME_DIR .. "src/mame/drivers/amstrad.cpp",
	MAME_DIR .. "src/mame/includes/amstrad.h",
	MAME_DIR .. "src/mame/machine/amstrad.cpp",
	MAME_DIR .. "src/mame/drivers/amstr_pc.cpp",
	MAME_DIR .. "src/mame/drivers/nc.cpp",
	MAME_DIR .. "src/mame/includes/nc.h",
	MAME_DIR .. "src/mame/machine/nc.cpp",
	MAME_DIR .. "src/mame/video/nc.cpp",
	MAME_DIR .. "src/mame/drivers/pc1512.cpp",
	MAME_DIR .. "src/mame/includes/pc1512.h",
	MAME_DIR .. "src/mame/machine/pc1512kb.cpp",
	MAME_DIR .. "src/mame/machine/pc1512kb.h",
	MAME_DIR .. "src/mame/video/ams40041.cpp",
	MAME_DIR .. "src/mame/video/ams40041.h",
	MAME_DIR .. "src/mame/drivers/pcw.cpp",
	MAME_DIR .. "src/mame/includes/pcw.h",
	MAME_DIR .. "src/mame/video/pcw.cpp",
	MAME_DIR .. "src/mame/drivers/pcw16.cpp",
	MAME_DIR .. "src/mame/includes/pcw16.h",
	MAME_DIR .. "src/mame/video/pcw16.cpp",
	MAME_DIR .. "src/mame/drivers/pda600.cpp",
}

createHBMAMEProjects(_target, _subtarget, "apf")
files {
	MAME_DIR .. "src/mame/drivers/apf.cpp",
}

createHBMAMEProjects(_target, _subtarget, "apollo")
files {
	MAME_DIR .. "src/mame/drivers/apollo.cpp",
	MAME_DIR .. "src/mame/includes/apollo.h",
	MAME_DIR .. "src/mame/machine/apollo.cpp",
	MAME_DIR .. "src/mame/machine/apollo_kbd.cpp",
	MAME_DIR .. "src/mame/machine/apollo_kbd.h",
	MAME_DIR .. "src/mame/video/apollo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "apple")
files {
	MAME_DIR .. "src/mame/drivers/apple1.cpp",
	MAME_DIR .. "src/mame/drivers/apple2.cpp",
	MAME_DIR .. "src/mame/drivers/apple2e.cpp",
	MAME_DIR .. "src/mame/includes/apple2e.h",
	MAME_DIR .. "src/mame/video/apple2.cpp",
	MAME_DIR .. "src/mame/video/apple2.h",
	MAME_DIR .. "src/mame/drivers/tk2000.cpp",
	MAME_DIR .. "src/mame/drivers/apple2gs.cpp",
	MAME_DIR .. "src/mame/machine/apple2common.cpp",
	MAME_DIR .. "src/mame/machine/apple2common.h",
	MAME_DIR .. "src/mame/drivers/apple3.cpp",
	MAME_DIR .. "src/mame/includes/apple3.h",
	MAME_DIR .. "src/mame/machine/apple3.cpp",
	MAME_DIR .. "src/mame/video/apple3.cpp",
	MAME_DIR .. "src/mame/drivers/lisa.cpp",
	MAME_DIR .. "src/mame/includes/lisa.h",
	MAME_DIR .. "src/mame/machine/lisa.cpp",
	MAME_DIR .. "src/mame/drivers/lwriter.cpp",
	MAME_DIR .. "src/mame/drivers/mac128.cpp",
	MAME_DIR .. "src/mame/drivers/macquadra700.cpp",
	MAME_DIR .. "src/mame/drivers/macpdm.cpp",
	MAME_DIR .. "src/mame/drivers/macprtb.cpp",
	MAME_DIR .. "src/mame/drivers/macpwrbk030.cpp",
	MAME_DIR .. "src/mame/drivers/mac.cpp",
	MAME_DIR .. "src/mame/includes/mac.h",
	MAME_DIR .. "src/mame/machine/egret.cpp",
	MAME_DIR .. "src/mame/machine/egret.h",
	MAME_DIR .. "src/mame/machine/mac.cpp",
	MAME_DIR .. "src/mame/machine/macadb.cpp",
	MAME_DIR .. "src/mame/machine/macadb.h",
	MAME_DIR .. "src/mame/machine/macrtc.cpp",
	MAME_DIR .. "src/mame/machine/macrtc.h",
	MAME_DIR .. "src/mame/machine/swim.cpp",
	MAME_DIR .. "src/mame/machine/swim.h",
	MAME_DIR .. "src/mame/video/mac.cpp",
	MAME_DIR .. "src/mame/drivers/macpci.cpp",
	MAME_DIR .. "src/mame/includes/macpci.h",
	MAME_DIR .. "src/mame/machine/macpci.cpp",
	MAME_DIR .. "src/mame/machine/cuda.cpp",
	MAME_DIR .. "src/mame/machine/cuda.h",
	MAME_DIR .. "src/mame/machine/macscsi.cpp",
	MAME_DIR .. "src/mame/machine/macscsi.h",
	MAME_DIR .. "src/mame/drivers/iphone2g.cpp",
	MAME_DIR .. "src/mame/drivers/superga2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "applied")
files {
	MAME_DIR .. "src/mame/drivers/mbee.cpp",
	MAME_DIR .. "src/mame/includes/mbee.h",
	MAME_DIR .. "src/mame/machine/mbee.cpp",
	MAME_DIR .. "src/mame/video/mbee.cpp",
}

createHBMAMEProjects(_target, _subtarget, "arcadia")
files {
	MAME_DIR .. "src/mame/drivers/arcadia.cpp",
	MAME_DIR .. "src/mame/includes/arcadia.h",
	MAME_DIR .. "src/mame/audio/arcadia.cpp",
	MAME_DIR .. "src/mame/audio/arcadia.h",
	MAME_DIR .. "src/mame/video/arcadia.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ascii")
files {
	MAME_DIR .. "src/mame/drivers/msx.cpp",
	MAME_DIR .. "src/mame/includes/msx.h",
	MAME_DIR .. "src/mame/machine/msx.cpp",
	MAME_DIR .. "src/mame/machine/msx_matsushita.cpp",
	MAME_DIR .. "src/mame/machine/msx_matsushita.h",
	MAME_DIR .. "src/mame/machine/msx_s1985.cpp",
	MAME_DIR .. "src/mame/machine/msx_s1985.h",
	MAME_DIR .. "src/mame/machine/msx_switched.h",
	MAME_DIR .. "src/mame/machine/msx_systemflags.cpp",
	MAME_DIR .. "src/mame/machine/msx_systemflags.h",
}

createHBMAMEProjects(_target, _subtarget, "at")
files {
	MAME_DIR .. "src/mame/drivers/at.cpp",
	MAME_DIR .. "src/mame/drivers/atpci.cpp",
	MAME_DIR .. "src/mame/drivers/ps2.cpp",
	MAME_DIR .. "src/mame/machine/at.h",
	MAME_DIR .. "src/mame/machine/at.cpp",
	MAME_DIR .. "src/mame/drivers/ct486.cpp",
}

createHBMAMEProjects(_target, _subtarget, "atari")
files {
	MAME_DIR .. "src/mame/includes/a2600.h",
	MAME_DIR .. "src/mame/drivers/a2600.cpp",
	MAME_DIR .. "src/mame/drivers/a7800.cpp",
	MAME_DIR .. "src/mame/video/maria.cpp",
	MAME_DIR .. "src/mame/video/maria.h",
	MAME_DIR .. "src/mame/drivers/atari400.cpp",
	MAME_DIR .. "src/mame/machine/atarifdc.cpp",
	MAME_DIR .. "src/mame/machine/atarifdc.h",
	MAME_DIR .. "src/mame/drivers/atarist.cpp",
	MAME_DIR .. "src/mame/includes/atarist.h",
	MAME_DIR .. "src/mame/video/atarist.cpp",
	MAME_DIR .. "src/mame/video/atarist.h",
	MAME_DIR .. "src/mame/drivers/lynx.cpp",
	MAME_DIR .. "src/mame/includes/lynx.h",
	MAME_DIR .. "src/mame/audio/lynx.cpp",
	MAME_DIR .. "src/mame/audio/lynx.h",
	MAME_DIR .. "src/mame/machine/lynx.cpp",
	MAME_DIR .. "src/mame/drivers/pofo.cpp",
	MAME_DIR .. "src/mame/machine/pofo_kbd.cpp",
	MAME_DIR .. "src/mame/machine/pofo_kbd.h",
	MAME_DIR .. "src/mame/drivers/tvboy.cpp",
}

createHBMAMEProjects(_target, _subtarget, "att")
files {
	MAME_DIR .. "src/mame/drivers/att3b2.cpp",
	MAME_DIR .. "src/mame/drivers/att4425.cpp",
	MAME_DIR .. "src/mame/drivers/att610.cpp",
	MAME_DIR .. "src/mame/drivers/att630.cpp",
	MAME_DIR .. "src/mame/drivers/unixpc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ave")
files {
	MAME_DIR .. "src/mame/drivers/ave_arb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "aviion")
files {
	MAME_DIR .. "src/mame/drivers/aviion88k.cpp",
}

createHBMAMEProjects(_target, _subtarget, "bally")
files {
	MAME_DIR .. "src/mame/drivers/astrohome.cpp",
}

createHBMAMEProjects(_target, _subtarget, "banctec")
files {
	MAME_DIR .. "src/mame/drivers/banctec.cpp",
}

createHBMAMEProjects(_target, _subtarget, "bandai")
files {
	MAME_DIR .. "src/mame/drivers/sv8000.cpp",
	MAME_DIR .. "src/mame/drivers/rx78.cpp",
	MAME_DIR .. "src/mame/drivers/tamag1.cpp",
	MAME_DIR .. "src/mame/drivers/wswan.cpp",
	MAME_DIR .. "src/mame/audio/wswan.cpp",
	MAME_DIR .. "src/mame/audio/wswan.h",
	MAME_DIR .. "src/mame/video/wswan.cpp",
	MAME_DIR .. "src/mame/video/wswan.h",
	MAME_DIR .. "src/mame/drivers/bandai_design_master.cpp",
}

createHBMAMEProjects(_target, _subtarget, "be")
files {
	MAME_DIR .. "src/mame/drivers/bebox.cpp",
	MAME_DIR .. "src/mame/includes/bebox.h",
	MAME_DIR .. "src/mame/machine/bebox.cpp",
}

createHBMAMEProjects(_target, _subtarget, "beehive")
files {
	MAME_DIR .. "src/mame/drivers/microb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "bitcorp")
files {
	MAME_DIR .. "src/mame/drivers/gamate.cpp",
	MAME_DIR .. "src/mame/video/gamate.cpp",
	MAME_DIR .. "src/mame/video/gamate.h",
}

createHBMAMEProjects(_target, _subtarget, "bnpo")
files {
	MAME_DIR .. "src/mame/drivers/b2m.cpp",
	MAME_DIR .. "src/mame/includes/b2m.h",
	MAME_DIR .. "src/mame/machine/b2m.cpp",
}

createHBMAMEProjects(_target, _subtarget, "bondwell")
files {
	MAME_DIR .. "src/mame/drivers/bw12.cpp",
	MAME_DIR .. "src/mame/includes/bw12.h",
	MAME_DIR .. "src/mame/drivers/bw2.cpp",
	MAME_DIR .. "src/mame/includes/bw2.h",
}

createHBMAMEProjects(_target, _subtarget, "booth")
files {
	MAME_DIR .. "src/mame/drivers/apexc.cpp",
	MAME_DIR .. "src/mame/includes/apexc.h",
	MAME_DIR .. "src/mame/machine/apexc.h",
	MAME_DIR .. "src/mame/machine/apexc.cpp",
	MAME_DIR .. "src/mame/video/apexc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "camputers")
files {
	MAME_DIR .. "src/mame/drivers/camplynx.cpp",
}

createHBMAMEProjects(_target, _subtarget, "canon")
files {
	MAME_DIR .. "src/mame/drivers/cat.cpp",
	MAME_DIR .. "src/mame/drivers/x07.cpp",
	MAME_DIR .. "src/mame/includes/x07.h",
	MAME_DIR .. "src/mame/drivers/canon_s80.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cantab")
files {
	MAME_DIR .. "src/mame/drivers/jupace.cpp",
}

createHBMAMEProjects(_target, _subtarget, "casio")
files {
	MAME_DIR .. "src/mame/drivers/casloopy.cpp",
	MAME_DIR .. "src/mame/drivers/cfx9850.cpp",
	MAME_DIR .. "src/mame/drivers/cz101.cpp",
	MAME_DIR .. "src/mame/drivers/fp200.cpp",
	MAME_DIR .. "src/mame/drivers/fp1100.cpp",
	MAME_DIR .. "src/mame/drivers/fp6000.cpp",
	MAME_DIR .. "src/mame/machine/fp6000_kbd.cpp",
	MAME_DIR .. "src/mame/machine/fp6000_kbd.h",
	MAME_DIR .. "src/mame/drivers/ht6000.cpp",
	MAME_DIR .. "src/mame/drivers/pb1000.cpp",
	MAME_DIR .. "src/mame/drivers/pv1000.cpp",
	MAME_DIR .. "src/mame/drivers/pv2000.cpp",
	MAME_DIR .. "src/mame/drivers/sk1.cpp",
	MAME_DIR .. "src/mame/drivers/sx1000.cpp",
	MAME_DIR .. "src/mame/drivers/rz1.cpp",
	MAME_DIR .. "src/mame/drivers/casio_rompack.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cbm")
files {
	MAME_DIR .. "src/mame/drivers/c128.cpp",
	MAME_DIR .. "src/mame/drivers/c64.cpp",
	MAME_DIR .. "src/mame/drivers/c64dtv.cpp",
	MAME_DIR .. "src/mame/drivers/c65.cpp",
	MAME_DIR .. "src/mame/includes/c65.h",
	MAME_DIR .. "src/mame/drivers/c900.cpp",
	MAME_DIR .. "src/mame/drivers/cbm2.cpp",
	MAME_DIR .. "src/mame/drivers/chessmate.cpp",
	MAME_DIR .. "src/mame/drivers/clcd.cpp",
	MAME_DIR .. "src/mame/drivers/pet.cpp",
	MAME_DIR .. "src/mame/drivers/plus4.cpp",
	MAME_DIR .. "src/mame/drivers/vic10.cpp",
	MAME_DIR .. "src/mame/drivers/vic20.cpp",
	MAME_DIR .. "src/mame/machine/cbm_snqk.cpp",
	MAME_DIR .. "src/mame/machine/cbm_snqk.h",
	MAME_DIR .. "src/mame/drivers/mps1230.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cccp")
files {
	MAME_DIR .. "src/mame/drivers/argo.cpp",
	MAME_DIR .. "src/mame/drivers/cm1800.cpp",
	MAME_DIR .. "src/mame/drivers/debut.cpp",
	MAME_DIR .. "src/mame/drivers/intellect02.cpp",
	MAME_DIR .. "src/mame/drivers/lviv.cpp",
	MAME_DIR .. "src/mame/includes/lviv.h",
	MAME_DIR .. "src/mame/machine/lviv.cpp",
	MAME_DIR .. "src/mame/video/lviv.cpp",
	MAME_DIR .. "src/mame/drivers/mikro80.cpp",
	MAME_DIR .. "src/mame/includes/mikro80.h",
	MAME_DIR .. "src/mame/machine/mikro80.cpp",
	MAME_DIR .. "src/mame/drivers/okean240.cpp",
	MAME_DIR .. "src/mame/drivers/pk8000.cpp",
	MAME_DIR .. "src/mame/includes/pk8000.h",
	MAME_DIR .. "src/mame/drivers/pk8020.cpp",
	MAME_DIR .. "src/mame/includes/pk8020.h",
	MAME_DIR .. "src/mame/machine/pk8020.cpp",
	MAME_DIR .. "src/mame/video/pk8020.cpp",
	MAME_DIR .. "src/mame/drivers/pyl601.cpp",
	MAME_DIR .. "src/mame/drivers/sm1800.cpp",
	MAME_DIR .. "src/mame/drivers/sm7238.cpp",
	MAME_DIR .. "src/mame/machine/km035.cpp",
	MAME_DIR .. "src/mame/machine/km035.h",
	MAME_DIR .. "src/mame/drivers/uknc.cpp",
	MAME_DIR .. "src/mame/drivers/unior.cpp",
	MAME_DIR .. "src/mame/drivers/ut88.cpp",
	MAME_DIR .. "src/mame/includes/ut88.h",
	MAME_DIR .. "src/mame/machine/ut88.cpp",
	MAME_DIR .. "src/mame/drivers/vector06.cpp",
	MAME_DIR .. "src/mame/includes/vector06.h",
	MAME_DIR .. "src/mame/machine/vector06.cpp",
	MAME_DIR .. "src/mame/video/vector06.cpp",
	MAME_DIR .. "src/mame/drivers/vta2000.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cce")
files {
	MAME_DIR .. "src/mame/drivers/mc1000.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ccs")
files {
	MAME_DIR .. "src/mame/drivers/ccs2810.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ceres")
files {
	MAME_DIR .. "src/mame/drivers/ceres.cpp",
}

createHBMAMEProjects(_target, _subtarget, "chessking")
files {
	MAME_DIR .. "src/mame/drivers/cking_master.cpp",
}

createHBMAMEProjects(_target, _subtarget, "chromatics")
files {
	MAME_DIR .. "src/mame/drivers/cgc7900.cpp",
	MAME_DIR .. "src/mame/includes/cgc7900.h",
	MAME_DIR .. "src/mame/video/cgc7900.cpp",
}

createHBMAMEProjects(_target, _subtarget, "chrysler")
files {
	MAME_DIR .. "src/mame/drivers/eva.cpp",
}

createHBMAMEProjects(_target, _subtarget, "citoh")
files {
	MAME_DIR .. "src/mame/drivers/cit101.cpp",
	MAME_DIR .. "src/mame/machine/cit101_kbd.cpp",
	MAME_DIR .. "src/mame/machine/cit101_kbd.h",
	MAME_DIR .. "src/mame/drivers/cit101xl.cpp",
	MAME_DIR .. "src/mame/drivers/cit220.cpp",
	MAME_DIR .. "src/mame/machine/cit220_kbd.cpp",
	MAME_DIR .. "src/mame/machine/cit220_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "coleco")
files {
	MAME_DIR .. "src/mame/drivers/adam.cpp",
	MAME_DIR .. "src/mame/includes/adam.h",
	MAME_DIR .. "src/mame/drivers/coleco.cpp",
	MAME_DIR .. "src/mame/includes/coleco.h",
	MAME_DIR .. "src/mame/machine/coleco.cpp",
	MAME_DIR .. "src/mame/machine/coleco.h",
	MAME_DIR .. "src/mame/drivers/wrinkles.cpp",
}

createHBMAMEProjects(_target, _subtarget, "compugraphic")
files {
	MAME_DIR .. "src/mame/drivers/pwrview.cpp",
}

createHBMAMEProjects(_target, _subtarget, "conic")
files {
	MAME_DIR .. "src/mame/drivers/conic_cchess2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "consumenta")
files {
	MAME_DIR .. "src/mame/drivers/conchess.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cromemco")
files {
	MAME_DIR .. "src/mame/drivers/c10.cpp",
	MAME_DIR .. "src/mame/drivers/mcb216.cpp",
}

createHBMAMEProjects(_target, _subtarget, "comx")
files {
	MAME_DIR .. "src/mame/drivers/comx35.cpp",
	MAME_DIR .. "src/mame/includes/comx35.h",
	MAME_DIR .. "src/mame/video/comx35.cpp",
}

createHBMAMEProjects(_target, _subtarget, "concept")
files {
	MAME_DIR .. "src/mame/drivers/concept.cpp",
	MAME_DIR .. "src/mame/includes/concept.h",
	MAME_DIR .. "src/mame/machine/concept.cpp",
}

createHBMAMEProjects(_target, _subtarget, "conitec")
files {
	MAME_DIR .. "src/mame/drivers/prof180x.cpp",
	MAME_DIR .. "src/mame/includes/prof180x.h",
	MAME_DIR .. "src/mame/drivers/prof80.cpp",
	MAME_DIR .. "src/mame/includes/prof80.h",
	MAME_DIR .. "src/mame/machine/prof80mmu.cpp",
	MAME_DIR .. "src/mame/machine/prof80mmu.h",
}

createHBMAMEProjects(_target, _subtarget, "cxg")
files {
	MAME_DIR .. "src/mame/drivers/cxg_ch2001.cpp",
	MAME_DIR .. "src/mame/drivers/cxg_dominator.cpp",
	MAME_DIR .. "src/mame/drivers/cxg_scptchess.cpp",
	MAME_DIR .. "src/mame/drivers/cxg_sphinx40.cpp",
}

createHBMAMEProjects(_target, _subtarget, "cybiko")
files {
	MAME_DIR .. "src/mame/drivers/cybiko.cpp",
	MAME_DIR .. "src/mame/includes/cybiko.h",
	MAME_DIR .. "src/mame/machine/cybiko.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dai")
files {
	MAME_DIR .. "src/mame/drivers/dai.cpp",
	MAME_DIR .. "src/mame/includes/dai.h",
	MAME_DIR .. "src/mame/audio/dai_snd.cpp",
	MAME_DIR .. "src/mame/audio/dai_snd.h",
	MAME_DIR .. "src/mame/machine/dai.cpp",
	MAME_DIR .. "src/mame/video/dai.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dcs")
files {
	MAME_DIR .. "src/mame/drivers/compuchess.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ddr")
files {
	MAME_DIR .. "src/mame/drivers/ac1.cpp",
	MAME_DIR .. "src/mame/drivers/bcs3.cpp",
	MAME_DIR .. "src/mame/drivers/c80.cpp",
	MAME_DIR .. "src/mame/includes/c80.h",
	MAME_DIR .. "src/mame/drivers/huebler.cpp",
	MAME_DIR .. "src/mame/includes/huebler.h",
	MAME_DIR .. "src/mame/drivers/jtc.cpp",
	MAME_DIR .. "src/mame/drivers/kramermc.cpp",
	MAME_DIR .. "src/mame/drivers/llc1.cpp",
	MAME_DIR .. "src/mame/drivers/llc2.cpp",
	MAME_DIR .. "src/mame/drivers/nanos.cpp",
	MAME_DIR .. "src/mame/drivers/pcm.cpp",
	MAME_DIR .. "src/mame/drivers/vcs80.cpp",
	MAME_DIR .. "src/mame/machine/k7659kb.cpp",
	MAME_DIR .. "src/mame/machine/k7659kb.h",
}

createHBMAMEProjects(_target, _subtarget, "dec")
files {
	MAME_DIR .. "src/mame/drivers/dct11em.cpp",
	MAME_DIR .. "src/mame/drivers/decmate2.cpp",
	MAME_DIR .. "src/mame/drivers/decstation.cpp",
	MAME_DIR .. "src/mame/machine/decioga.cpp",
	MAME_DIR .. "src/mame/machine/decioga.h",
	MAME_DIR .. "src/mame/drivers/dectalk.cpp",
	MAME_DIR .. "src/mame/drivers/decwritr.cpp",
	MAME_DIR .. "src/mame/machine/dc305.cpp",
	MAME_DIR .. "src/mame/machine/dc305.h",
	MAME_DIR .. "src/mame/drivers/jensen.cpp",
	MAME_DIR .. "src/mame/drivers/pdp11.cpp",
	MAME_DIR .. "src/mame/drivers/vax11.cpp",
	MAME_DIR .. "src/mame/drivers/rainbow.cpp",
	MAME_DIR .. "src/mame/drivers/vk100.cpp",
	MAME_DIR .. "src/mame/drivers/vt52.cpp",
	MAME_DIR .. "src/mame/drivers/vt62.cpp",
	MAME_DIR .. "src/mame/drivers/vt100.cpp",
	MAME_DIR .. "src/mame/drivers/vt220.cpp",
	MAME_DIR .. "src/mame/drivers/vt240.cpp",
	MAME_DIR .. "src/mame/drivers/vt320.cpp",
	MAME_DIR .. "src/mame/drivers/vt520.cpp",
	MAME_DIR .. "src/mame/machine/dec_lk201.cpp",
	MAME_DIR .. "src/mame/machine/dec_lk201.h",
	MAME_DIR .. "src/mame/machine/rx01.cpp",
	MAME_DIR .. "src/mame/machine/rx01.h",
	MAME_DIR .. "src/mame/machine/vt100_kbd.cpp",
	MAME_DIR .. "src/mame/machine/vt100_kbd.h",
	MAME_DIR .. "src/mame/video/vtvideo.cpp",
	MAME_DIR .. "src/mame/video/vtvideo.h",
}

createHBMAMEProjects(_target, _subtarget, "dicksmth")
files {
	MAME_DIR .. "src/mame/drivers/super80.cpp",
	MAME_DIR .. "src/mame/includes/super80.h",
	MAME_DIR .. "src/mame/machine/super80.cpp",
	MAME_DIR .. "src/mame/video/super80.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dms")
files {
	MAME_DIR .. "src/mame/drivers/dms5000.cpp",
	MAME_DIR .. "src/mame/drivers/dms86.cpp",
	MAME_DIR .. "src/mame/drivers/zsbc3.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dragon")
files {
	MAME_DIR .. "src/mame/drivers/dgn_beta.cpp",
	MAME_DIR .. "src/mame/includes/dgn_beta.h",
	MAME_DIR .. "src/mame/machine/dgn_beta.cpp",
	MAME_DIR .. "src/mame/video/dgn_beta.cpp",
}

createHBMAMEProjects(_target, _subtarget, "drc")
files {
	MAME_DIR .. "src/mame/drivers/zrt80.cpp",
}

createHBMAMEProjects(_target, _subtarget, "dulmont")
files {
	MAME_DIR .. "src/mame/drivers/magnum.cpp",
}

createHBMAMEProjects(_target, _subtarget, "eaca")
files {
	MAME_DIR .. "src/mame/drivers/cgenie.cpp",
}

createHBMAMEProjects(_target, _subtarget, "einis")
files {
	MAME_DIR .. "src/mame/drivers/pecom.cpp",
	MAME_DIR .. "src/mame/includes/pecom.h",
	MAME_DIR .. "src/mame/machine/pecom.cpp",
	MAME_DIR .. "src/mame/video/pecom.cpp",
}

createHBMAMEProjects(_target, _subtarget, "elektrka")
files {
	MAME_DIR .. "src/mame/drivers/bk.cpp",
	MAME_DIR .. "src/mame/includes/bk.h",
	MAME_DIR .. "src/mame/machine/bk.cpp",
	MAME_DIR .. "src/mame/drivers/dvk_kcgd.cpp",
	MAME_DIR .. "src/mame/drivers/dvk_ksm.cpp",
	MAME_DIR .. "src/mame/machine/ms7004.cpp",
	MAME_DIR .. "src/mame/machine/ms7004.h",
	MAME_DIR .. "src/mame/drivers/mk85.cpp",
	MAME_DIR .. "src/mame/drivers/mk90.cpp",
	MAME_DIR .. "src/mame/drivers/ms6102.cpp",
	MAME_DIR .. "src/mame/machine/kr1601rr1.cpp",
	MAME_DIR .. "src/mame/machine/kr1601rr1.h",
}

createHBMAMEProjects(_target, _subtarget, "elektor")
files {
	MAME_DIR .. "src/mame/drivers/avrmax.cpp",
	MAME_DIR .. "src/mame/drivers/ec65.cpp",
	MAME_DIR .. "src/mame/drivers/elekscmp.cpp",
	MAME_DIR .. "src/mame/drivers/junior.cpp",
}

createHBMAMEProjects(_target, _subtarget, "elektron")
files {
	MAME_DIR .. "src/mame/drivers/elektronmono.cpp",
}

createHBMAMEProjects(_target, _subtarget, "emusys")
files {
	MAME_DIR .. "src/mame/drivers/emax.cpp",
	MAME_DIR .. "src/mame/drivers/emu2.cpp",
	MAME_DIR .. "src/mame/drivers/emu3.cpp",
	MAME_DIR .. "src/mame/drivers/emu68k.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ensoniq")
files {
	MAME_DIR .. "src/mame/drivers/esq1.cpp",
	MAME_DIR .. "src/mame/drivers/esq5505.cpp",
	MAME_DIR .. "src/mame/drivers/esqasr.cpp",
	MAME_DIR .. "src/mame/drivers/esqkt.cpp",
	MAME_DIR .. "src/mame/drivers/esqmr.cpp",
	MAME_DIR .. "src/mame/drivers/enmirage.cpp",
	MAME_DIR .. "src/mame/machine/esqpanel.cpp",
	MAME_DIR .. "src/mame/machine/esqpanel.h",
	MAME_DIR .. "src/mame/machine/esqvfd.cpp",
	MAME_DIR .. "src/mame/machine/esqvfd.h",
	MAME_DIR .. "src/mame/machine/esqlcd.cpp",
	MAME_DIR .. "src/mame/machine/esqlcd.h",
}

createHBMAMEProjects(_target, _subtarget, "enterprise")
files {
	MAME_DIR .. "src/mame/drivers/ep64.cpp",
	MAME_DIR .. "src/mame/video/nick.cpp",
	MAME_DIR .. "src/mame/video/nick.h",
}

createHBMAMEProjects(_target, _subtarget, "entex")
files {
	MAME_DIR .. "src/mame/drivers/advision.cpp",
	MAME_DIR .. "src/mame/includes/advision.h",
	MAME_DIR .. "src/mame/machine/advision.cpp",
	MAME_DIR .. "src/mame/video/advision.cpp",
	MAME_DIR .. "src/mame/drivers/sag.cpp",
}

createHBMAMEProjects(_target, _subtarget, "epoch")
files {
	MAME_DIR .. "src/mame/drivers/gamepock.cpp",
	MAME_DIR .. "src/mame/includes/gamepock.h",
	MAME_DIR .. "src/mame/machine/gamepock.cpp",
	MAME_DIR .. "src/mame/drivers/scv.cpp",
}

createHBMAMEProjects(_target, _subtarget, "epson")
files {
	MAME_DIR .. "src/mame/drivers/hx20.cpp",
	MAME_DIR .. "src/mame/includes/hx20.h",
	MAME_DIR .. "src/mame/drivers/px4.cpp",
	MAME_DIR .. "src/mame/drivers/px8.cpp",
	MAME_DIR .. "src/mame/includes/px8.h",
	MAME_DIR .. "src/mame/drivers/qx10.cpp",
	MAME_DIR .. "src/mame/machine/qx10kbd.cpp",
	MAME_DIR .. "src/mame/machine/qx10kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "ericsson")
files {
	MAME_DIR .. "src/mame/drivers/e9161.cpp",
	MAME_DIR .. "src/mame/drivers/eispc.cpp",
	MAME_DIR .. "src/mame/machine/eispc_kb.cpp",
	MAME_DIR .. "src/mame/machine/eispc_kb.h",
}

createHBMAMEProjects(_target, _subtarget, "exidy")
files {
	MAME_DIR .. "src/mame/machine/sorcerer.cpp",
	MAME_DIR .. "src/mame/drivers/sorcerer.cpp",
	MAME_DIR .. "src/mame/includes/sorcerer.h",
	MAME_DIR .. "src/mame/machine/micropolis.cpp",
	MAME_DIR .. "src/mame/machine/micropolis.h",
}

createHBMAMEProjects(_target, _subtarget, "exorterm")
files {
	MAME_DIR .. "src/mame/drivers/exorterm.cpp",
}

createHBMAMEProjects(_target, _subtarget, "fairch")
files {
	MAME_DIR .. "src/mame/drivers/channelf.cpp",
	MAME_DIR .. "src/mame/includes/channelf.h",
	MAME_DIR .. "src/mame/audio/channelf.cpp",
	MAME_DIR .. "src/mame/audio/channelf.h",
	MAME_DIR .. "src/mame/video/channelf.cpp",
}

createHBMAMEProjects(_target, _subtarget, "fairlight")
files {
	MAME_DIR .. "src/mame/drivers/cmi.cpp",
	MAME_DIR .. "src/mame/audio/cmi01a.cpp",
	MAME_DIR .. "src/mame/audio/cmi01a.h",
	MAME_DIR .. "src/mame/machine/cmi_ankbd.cpp",
	MAME_DIR .. "src/mame/machine/cmi_ankbd.h",
	MAME_DIR .. "src/mame/machine/cmi_mkbd.cpp",
	MAME_DIR .. "src/mame/machine/cmi_mkbd.h",
}

createHBMAMEProjects(_target, _subtarget, "fidelity")
files {
	MAME_DIR .. "src/mame/machine/fidel_clockdiv.cpp",
	MAME_DIR .. "src/mame/machine/fidel_clockdiv.h",
	MAME_DIR .. "src/mame/drivers/fidel_as12.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_card.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_cc1.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_cc10.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_cc7.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_chesster.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_csc.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_dames.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_desdis.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_eag68k.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_eldorado.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_elite.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_excel.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_msc.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_phantom.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_sc12.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_sc6.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_sc8.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_sc9.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_vcc.cpp",
	MAME_DIR .. "src/mame/drivers/fidel_vsc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "force")
files {
	MAME_DIR .. "src/mame/drivers/miniforce.cpp",
	MAME_DIR .. "src/mame/drivers/fccpu20.cpp",
	MAME_DIR .. "src/mame/drivers/fccpu30.cpp",
	MAME_DIR .. "src/mame/drivers/force68k.cpp",
}

createHBMAMEProjects(_target, _subtarget, "francedr")
files {
	MAME_DIR .. "src/mame/drivers/regence.cpp",
}

createHBMAMEProjects(_target, _subtarget, "fujitsu")
files {
	MAME_DIR .. "src/mame/drivers/fmtowns.cpp",
	MAME_DIR .. "src/mame/includes/fmtowns.h",
	MAME_DIR .. "src/mame/video/fmtowns.cpp",
	MAME_DIR .. "src/mame/machine/fm_scsi.cpp",
	MAME_DIR .. "src/mame/machine/fm_scsi.h",
	MAME_DIR .. "src/mame/machine/fmt_icmem.cpp",
	MAME_DIR .. "src/mame/machine/fmt_icmem.h",
	MAME_DIR .. "src/mame/drivers/fm7.cpp",
	MAME_DIR .. "src/mame/includes/fm7.h",
	MAME_DIR .. "src/mame/video/fm7.cpp",
}

createHBMAMEProjects(_target, _subtarget, "funtech")
files {
	MAME_DIR .. "src/mame/drivers/supracan.cpp",
	MAME_DIR .. "src/mame/audio/acan.cpp",
	MAME_DIR .. "src/mame/audio/acan.h",
}

createHBMAMEProjects(_target, _subtarget, "galaxy")
files {
	MAME_DIR .. "src/mame/drivers/galaxy.cpp",
	MAME_DIR .. "src/mame/includes/galaxy.h",
	MAME_DIR .. "src/mame/machine/galaxy.cpp",
	MAME_DIR .. "src/mame/video/galaxy.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gamepark")
files {
	MAME_DIR .. "src/mame/drivers/gp2x.cpp",
	MAME_DIR .. "src/mame/drivers/gp32.cpp",
	MAME_DIR .. "src/mame/includes/gp32.h",
}

createHBMAMEProjects(_target, _subtarget, "gi")
files {
	MAME_DIR .. "src/mame/drivers/hh_pic16.cpp",
}

createHBMAMEProjects(_target, _subtarget, "gridcomp")
files {
	MAME_DIR .. "src/mame/drivers/gridcomp.cpp",
	MAME_DIR .. "src/mame/machine/gridkeyb.cpp",
	MAME_DIR .. "src/mame/machine/gridkeyb.h",
}

createHBMAMEProjects(_target, _subtarget, "grundy")
files {
	MAME_DIR .. "src/mame/drivers/newbrain.cpp",
	MAME_DIR .. "src/mame/includes/newbrain.h",
	MAME_DIR .. "src/mame/video/newbrain.cpp",
}

createHBMAMEProjects(_target, _subtarget, "h01x")
files {
	MAME_DIR .. "src/mame/drivers/h01x.cpp",
}

createHBMAMEProjects(_target, _subtarget, "hartung")
files {
	MAME_DIR .. "src/mame/drivers/gmaster.cpp",
}

createHBMAMEProjects(_target, _subtarget, "heathkit")
files {
	MAME_DIR .. "src/mame/drivers/et3400.cpp",
	MAME_DIR .. "src/mame/drivers/h8.cpp",
	MAME_DIR .. "src/mame/drivers/h19.cpp",
	MAME_DIR .. "src/mame/drivers/h89.cpp",
}

createHBMAMEProjects(_target, _subtarget, "hegener")
files {
	MAME_DIR .. "src/mame/drivers/mephisto_academy.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_amsterdam.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_berlin.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_brikett.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_glasgow.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_milano.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_mm1.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_mm2.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_modena.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_modular.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_modular_tm.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_mondial.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_mondial2.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_mondial68k.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_montec.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_polgar.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_risc.cpp",
	MAME_DIR .. "src/mame/drivers/mephisto_smondial.cpp",
	MAME_DIR .. "src/mame/machine/mmboard.cpp",
	MAME_DIR .. "src/mame/machine/mmboard.h",
	MAME_DIR .. "src/mame/video/mmdisplay1.cpp",
	MAME_DIR .. "src/mame/video/mmdisplay1.h",
	MAME_DIR .. "src/mame/video/mmdisplay2.cpp",
	MAME_DIR .. "src/mame/video/mmdisplay2.h",
}

createHBMAMEProjects(_target, _subtarget, "hitachi")
files {
	MAME_DIR .. "src/mame/drivers/b16.cpp",
	MAME_DIR .. "src/mame/drivers/bmjr.cpp",
	MAME_DIR .. "src/mame/drivers/bml3.cpp",
	MAME_DIR .. "src/mame/drivers/hh_hmcs40.cpp",
}

createHBMAMEProjects(_target, _subtarget, "homebrew")
files {
	MAME_DIR .. "src/mame/drivers/4004clk.cpp",
	MAME_DIR .. "src/mame/drivers/68ksbc.cpp",
	MAME_DIR .. "src/mame/drivers/lft_chiptune.cpp",
	MAME_DIR .. "src/mame/drivers/lft_craft.cpp",
	MAME_DIR .. "src/mame/drivers/lft_phasor.cpp",
	MAME_DIR .. "src/mame/drivers/dcebridge.cpp",
	MAME_DIR .. "src/mame/drivers/homez80.cpp",
	MAME_DIR .. "src/mame/drivers/mk1forth.cpp",
	MAME_DIR .. "src/mame/drivers/p112.cpp",
	MAME_DIR .. "src/mame/drivers/phunsy.cpp",
	MAME_DIR .. "src/mame/drivers/pimps.cpp",
	MAME_DIR .. "src/mame/drivers/ravens.cpp",
	MAME_DIR .. "src/mame/drivers/sbc6510.cpp",
	MAME_DIR .. "src/mame/drivers/sitcom.cpp",
	MAME_DIR .. "src/mame/drivers/slc1.cpp",
	MAME_DIR .. "src/mame/drivers/test_t400.cpp",
	MAME_DIR .. "src/mame/drivers/uzebox.cpp",
	MAME_DIR .. "src/mame/drivers/z80dev.cpp",
	MAME_DIR .. "src/mame/drivers/zexall.cpp",
}

createHBMAMEProjects(_target, _subtarget, "homelab")
files {
	MAME_DIR .. "src/mame/drivers/braiplus.cpp",
	MAME_DIR .. "src/mame/drivers/homelab.cpp",
}

createHBMAMEProjects(_target, _subtarget, "hp")
files {
	MAME_DIR .. "src/mame/drivers/hp16500.cpp",
	MAME_DIR .. "src/mame/drivers/hp48.cpp",
	MAME_DIR .. "src/mame/includes/hp48.h",
	MAME_DIR .. "src/mame/machine/hp48.cpp",
	MAME_DIR .. "src/mame/machine/hp48_port.cpp",
	MAME_DIR .. "src/mame/machine/hp48_port.h",
	MAME_DIR .. "src/mame/machine/hp80_optrom.cpp",
	MAME_DIR .. "src/mame/machine/hp80_optrom.h",
	MAME_DIR .. "src/mame/machine/hp9825_optrom.cpp",
	MAME_DIR .. "src/mame/machine/hp9825_optrom.h",
	MAME_DIR .. "src/mame/machine/hp9825_tape.cpp",
	MAME_DIR .. "src/mame/machine/hp9825_tape.h",
	MAME_DIR .. "src/mame/machine/hp9845_optrom.cpp",
	MAME_DIR .. "src/mame/machine/hp9845_optrom.h",
	MAME_DIR .. "src/mame/machine/hp9845_printer.cpp",
	MAME_DIR .. "src/mame/machine/hp9845_printer.h",
	MAME_DIR .. "src/mame/machine/hp98x5_io_sys.cpp",
	MAME_DIR .. "src/mame/machine/hp98x5_io_sys.h",
	MAME_DIR .. "src/mame/machine/hp_ipc_optrom.cpp",
	MAME_DIR .. "src/mame/machine/hp_ipc_optrom.h",
	MAME_DIR .. "src/mame/video/hp48.cpp",
	MAME_DIR .. "src/mame/drivers/hp49gp.cpp",
	MAME_DIR .. "src/mame/drivers/hp9845.cpp",
	MAME_DIR .. "src/mame/drivers/hp9k.cpp",
	MAME_DIR .. "src/mame/drivers/hp9k_3xx.cpp",
	MAME_DIR .. "src/mame/drivers/hp64k.cpp",
	MAME_DIR .. "src/mame/drivers/hp_ipc.cpp",
	MAME_DIR .. "src/mame/drivers/hp80.cpp",
	MAME_DIR .. "src/mame/drivers/hp2100.cpp",
	MAME_DIR .. "src/mame/drivers/hp2620.cpp",
	MAME_DIR .. "src/mame/drivers/hp700.cpp",
	MAME_DIR .. "src/mame/machine/hp2640_tape.cpp",
	MAME_DIR .. "src/mame/machine/hp2640_tape.h",
	MAME_DIR .. "src/mame/drivers/hp2640.cpp",
	MAME_DIR .. "src/mame/drivers/hp95lx.cpp",
	MAME_DIR .. "src/mame/drivers/hp9825.cpp",
	MAME_DIR .. "src/mame/drivers/jornada.cpp",
}

createHBMAMEProjects(_target, _subtarget, "hec2hrp")
files {
	MAME_DIR .. "src/mame/drivers/hec2hrp.cpp",
	MAME_DIR .. "src/mame/includes/hec2hrp.h",
	MAME_DIR .. "src/mame/machine/hec2hrp.cpp",
	MAME_DIR .. "src/mame/video/hec2hrp.cpp",
}

createHBMAMEProjects(_target, _subtarget, "heurikon")
files {
	MAME_DIR .. "src/mame/drivers/hk68v10.cpp",
}

createHBMAMEProjects(_target, _subtarget, "husky")
files {
	MAME_DIR .. "src/mame/drivers/hawk.cpp",
	MAME_DIR .. "src/mame/drivers/hunter2.cpp",
	MAME_DIR .. "src/mame/drivers/hunter16.cpp",
	MAME_DIR .. "src/mame/drivers/husky.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ibm6580")
files {
	MAME_DIR .. "src/mame/drivers/ibm6580.cpp",
	MAME_DIR .. "src/mame/machine/ibm6580_kbd.cpp",
	MAME_DIR .. "src/mame/machine/ibm6580_kbd.h",
	MAME_DIR .. "src/mame/machine/ibm6580_fdc.cpp",
	MAME_DIR .. "src/mame/machine/ibm6580_fdc.h",
}

createHBMAMEProjects(_target, _subtarget, "ie15")
files {
	MAME_DIR .. "src/mame/drivers/ie15.cpp",
}

createHBMAMEProjects(_target, _subtarget, "informer")
files {
	MAME_DIR .. "src/mame/drivers/informer_207_100.cpp",
	MAME_DIR .. "src/mame/drivers/informer_207_376.cpp",
	MAME_DIR .. "src/mame/drivers/informer_213.cpp",
	MAME_DIR .. "src/mame/machine/informer_207_376_kbd.cpp",
	MAME_DIR .. "src/mame/machine/informer_207_376_kbd.h",
	MAME_DIR .. "src/mame/machine/informer_213_kbd.cpp",
	MAME_DIR .. "src/mame/machine/informer_213_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "intel")
files {
	MAME_DIR .. "src/mame/drivers/basic52.cpp",
	MAME_DIR .. "src/mame/drivers/imds2.cpp",
	MAME_DIR .. "src/mame/drivers/intellec4.cpp",
	MAME_DIR .. "src/mame/drivers/intellec8.cpp",
	MAME_DIR .. "src/mame/drivers/ipc.cpp",
	MAME_DIR .. "src/mame/drivers/ipds.cpp",
	MAME_DIR .. "src/mame/drivers/isbc.cpp",
	MAME_DIR .. "src/mame/drivers/isbc8010.cpp",
	MAME_DIR .. "src/mame/drivers/isbc8030.cpp",
	MAME_DIR .. "src/mame/machine/imm6_76.cpp",
	MAME_DIR .. "src/mame/machine/imm6_76.h",
	MAME_DIR .. "src/mame/machine/isbc_215g.cpp",
	MAME_DIR .. "src/mame/machine/isbc_215g.h",
	MAME_DIR .. "src/mame/machine/isbc_208.cpp",
	MAME_DIR .. "src/mame/machine/isbc_208.h",
	MAME_DIR .. "src/mame/drivers/rex6000.cpp",
	MAME_DIR .. "src/mame/drivers/sdk51.cpp",
	MAME_DIR .. "src/mame/drivers/sdk80.cpp",
	MAME_DIR .. "src/mame/drivers/sdk85.cpp",
	MAME_DIR .. "src/mame/drivers/sdk86.cpp",
	MAME_DIR .. "src/mame/machine/imds2ioc.cpp",
	MAME_DIR .. "src/mame/machine/imds2ioc.h",
}

createHBMAMEProjects(_target, _subtarget, "imp")
files {
	MAME_DIR .. "src/mame/drivers/tim011.cpp",
	MAME_DIR .. "src/mame/drivers/tim100.cpp",
}

createHBMAMEProjects(_target, _subtarget, "interpro")
files {
	MAME_DIR .. "src/mame/drivers/interpro.cpp",
	MAME_DIR .. "src/mame/machine/cammu.h",
	MAME_DIR .. "src/mame/machine/cammu.cpp",
	MAME_DIR .. "src/mame/machine/interpro_ioga.h",
	MAME_DIR .. "src/mame/machine/interpro_ioga.cpp",
	MAME_DIR .. "src/mame/machine/interpro_mcga.h",
	MAME_DIR .. "src/mame/machine/interpro_mcga.cpp",
	MAME_DIR .. "src/mame/machine/interpro_sga.h",
	MAME_DIR .. "src/mame/machine/interpro_sga.cpp",
	MAME_DIR .. "src/mame/machine/interpro_arbga.h",
	MAME_DIR .. "src/mame/machine/interpro_arbga.cpp",
}

createHBMAMEProjects(_target, _subtarget, "interton")
files {
	MAME_DIR .. "src/mame/drivers/vc4000.cpp",
	MAME_DIR .. "src/mame/includes/vc4000.h",
	MAME_DIR .. "src/mame/audio/vc4000.cpp",
	MAME_DIR .. "src/mame/audio/vc4000.h",
	MAME_DIR .. "src/mame/video/vc4000.cpp",
}

createHBMAMEProjects(_target, _subtarget, "intv")
files {
	MAME_DIR .. "src/mame/drivers/intv.cpp",
	MAME_DIR .. "src/mame/includes/intv.h",
	MAME_DIR .. "src/mame/machine/intv.cpp",
	MAME_DIR .. "src/mame/video/intv.cpp",
	MAME_DIR .. "src/mame/video/stic.cpp",
	MAME_DIR .. "src/mame/video/stic.h",
}

createHBMAMEProjects(_target, _subtarget, "isc")
files {
	MAME_DIR .. "src/mame/drivers/compucolor.cpp",
}

createHBMAMEProjects(_target, _subtarget, "jazz")
files {
	MAME_DIR .. "src/mame/drivers/jazz.cpp",
	MAME_DIR .. "src/mame/machine/mct_adr.cpp",
	MAME_DIR .. "src/mame/machine/mct_adr.h",
}

createHBMAMEProjects(_target, _subtarget, "kawai")
files {
	MAME_DIR .. "src/mame/drivers/kawai_k1.cpp",
	MAME_DIR .. "src/mame/drivers/kawai_k4.cpp",
	MAME_DIR .. "src/mame/drivers/kawai_k5.cpp",
	MAME_DIR .. "src/mame/drivers/kawai_ksp10.cpp",
	MAME_DIR .. "src/mame/drivers/kawai_r100.cpp",
	MAME_DIR .. "src/mame/drivers/kawai_sx240.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kaypro")
files {
	MAME_DIR .. "src/mame/drivers/kaypro.cpp",
	MAME_DIR .. "src/mame/includes/kaypro.h",
	MAME_DIR .. "src/mame/machine/kaypro.cpp",
	MAME_DIR .. "src/mame/machine/kay_kbd.cpp",
	MAME_DIR .. "src/mame/machine/kay_kbd.h",
	MAME_DIR .. "src/mame/video/kaypro.cpp",
}

createHBMAMEProjects(_target, _subtarget, "koei")
files {
	MAME_DIR .. "src/mame/drivers/pasogo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kontron")
files {
	MAME_DIR .. "src/mame/drivers/kdt6.cpp",
}

createHBMAMEProjects(_target, _subtarget, "korg")
files {
	MAME_DIR .. "src/mame/drivers/korgds8.cpp",
	MAME_DIR .. "src/mame/drivers/korgdss1.cpp",
	MAME_DIR .. "src/mame/drivers/korgdvp1.cpp",
	MAME_DIR .. "src/mame/drivers/korgdw8k.cpp",
	MAME_DIR .. "src/mame/drivers/korgm1.cpp",
	MAME_DIR .. "src/mame/drivers/korgws.cpp",
	MAME_DIR .. "src/mame/drivers/korgz3.cpp",
	MAME_DIR .. "src/mame/drivers/microkorg.cpp",
	MAME_DIR .. "src/mame/drivers/poly800.cpp",
	MAME_DIR .. "src/mame/drivers/polysix.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kurzweil")
files {
	MAME_DIR .. "src/mame/drivers/krz2000.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kyber")
files {
	MAME_DIR .. "src/mame/drivers/kminus.cpp",
}

createHBMAMEProjects(_target, _subtarget, "kyocera")
files {
	MAME_DIR .. "src/mame/drivers/kyocera.cpp",
	MAME_DIR .. "src/mame/includes/kyocera.h",
	MAME_DIR .. "src/mame/video/kyocera.cpp",
}

createHBMAMEProjects(_target, _subtarget, "leapfrog")
files {
	MAME_DIR .. "src/mame/drivers/leapster.cpp",
	MAME_DIR .. "src/mame/drivers/leapfrog_leappad.cpp",
	MAME_DIR .. "src/mame/drivers/leapfrog_leapster_explorer.cpp",
	MAME_DIR .. "src/mame/drivers/leapfrog_iquest.cpp",
}

createHBMAMEProjects(_target, _subtarget, "learsiegler")
files {
	MAME_DIR .. "src/mame/drivers/adm11.cpp",
	MAME_DIR .. "src/mame/drivers/adm23.cpp",
	MAME_DIR .. "src/mame/drivers/adm31.cpp",
	MAME_DIR .. "src/mame/drivers/adm36.cpp",
}

createHBMAMEProjects(_target, _subtarget, "lsi")
files {
	MAME_DIR .. "src/mame/drivers/m3.cpp",
	MAME_DIR .. "src/mame/drivers/octopus.cpp",
	MAME_DIR .. "src/mame/machine/octo_kbd.cpp",
	MAME_DIR .. "src/mame/machine/octo_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "luxor")
files {
	MAME_DIR .. "src/mame/drivers/abc80.cpp",
	MAME_DIR .. "src/mame/includes/abc80.h",
	MAME_DIR .. "src/mame/machine/abc80kb.cpp",
	MAME_DIR .. "src/mame/machine/abc80kb.h",
	MAME_DIR .. "src/mame/video/abc80.cpp",
	MAME_DIR .. "src/mame/drivers/abc80x.cpp",
	MAME_DIR .. "src/mame/includes/abc80x.h",
	MAME_DIR .. "src/mame/video/abc800.cpp",
	MAME_DIR .. "src/mame/video/abc802.cpp",
	MAME_DIR .. "src/mame/video/abc806.cpp",
	MAME_DIR .. "src/mame/drivers/abc1600.cpp",
	MAME_DIR .. "src/mame/includes/abc1600.h",
	MAME_DIR .. "src/mame/machine/abc1600mac.cpp",
	MAME_DIR .. "src/mame/machine/abc1600mac.h",
	MAME_DIR .. "src/mame/video/abc1600.cpp",
	MAME_DIR .. "src/mame/video/abc1600.h",
}

createHBMAMEProjects(_target, _subtarget, "magnavox")
files {
	MAME_DIR .. "src/mame/drivers/odyssey2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "makerbot")
files {
	MAME_DIR .. "src/mame/drivers/replicator.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mattel")
files {
	MAME_DIR .. "src/mame/drivers/aquarius.cpp",
	MAME_DIR .. "src/mame/includes/aquarius.h",
	MAME_DIR .. "src/mame/video/aquarius.cpp",
	MAME_DIR .. "src/mame/drivers/juicebox.cpp",
	MAME_DIR .. "src/mame/drivers/mattelchess.cpp",
}

createHBMAMEProjects(_target, _subtarget, "matsushi")
files {
	MAME_DIR .. "src/mame/drivers/jr100.cpp",
	MAME_DIR .. "src/mame/drivers/jr200.cpp",
	MAME_DIR .. "src/mame/drivers/myb3k.cpp",
	MAME_DIR .. "src/mame/drivers/duet16.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mb")
files {
	MAME_DIR .. "src/mame/drivers/microvsn.cpp",
	MAME_DIR .. "src/mame/drivers/milton6805.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mchester")
files {
	MAME_DIR .. "src/mame/drivers/ssem.cpp",
}

createHBMAMEProjects(_target, _subtarget, "memotech")
files {
	MAME_DIR .. "src/mame/drivers/mtx.cpp",
	MAME_DIR .. "src/mame/includes/mtx.h",
	MAME_DIR .. "src/mame/machine/mtx.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mera")
files {
	MAME_DIR .. "src/mame/drivers/ec7915.cpp",
	MAME_DIR .. "src/mame/drivers/konin.cpp",
	MAME_DIR .. "src/mame/drivers/m79152pc.cpp",
	MAME_DIR .. "src/mame/drivers/meritum.cpp",
	MAME_DIR .. "src/mame/drivers/vdm7932x.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mg1")
files {
	MAME_DIR .. "src/mame/drivers/mg1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mgu")
files {
	MAME_DIR .. "src/mame/drivers/irisha.cpp",
}

createHBMAMEProjects(_target, _subtarget, "microkey")
files {
	MAME_DIR .. "src/mame/drivers/primo.cpp",
	MAME_DIR .. "src/mame/includes/primo.h",
	MAME_DIR .. "src/mame/machine/primo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "microsoft")
files {
	MAME_DIR .. "src/mame/drivers/xbox.cpp",
	MAME_DIR .. "src/mame/includes/xbox.h",
	MAME_DIR .. "src/mame/includes/xbox_usb.h",
	MAME_DIR .. "src/mame/includes/xbox_pci.h",
}

createHBMAMEProjects(_target, _subtarget, "microterm")
files {
	MAME_DIR .. "src/mame/drivers/ergo201.cpp",
	MAME_DIR .. "src/mame/drivers/microterm_f8.cpp",
	MAME_DIR .. "src/mame/drivers/mt420.cpp",
	MAME_DIR .. "src/mame/drivers/mt5510.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mips")
files {
	MAME_DIR .. "src/mame/drivers/mips.cpp",
	MAME_DIR .. "src/mame/machine/mips_rambo.h",
	MAME_DIR .. "src/mame/machine/mips_rambo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mit")
files {
	MAME_DIR .. "src/mame/drivers/tx0.cpp",
	MAME_DIR .. "src/mame/includes/tx0.h",
	MAME_DIR .. "src/mame/video/crt.cpp",
	MAME_DIR .. "src/mame/video/crt.h",
	MAME_DIR .. "src/mame/video/tx0.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mits")
files {
	MAME_DIR .. "src/mame/drivers/altair.cpp",
	MAME_DIR .. "src/mame/drivers/mits680b.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mitsubishi")
files {
	MAME_DIR .. "src/mame/drivers/hh_melps4.cpp",
	MAME_DIR .. "src/mame/drivers/multi8.cpp",
	MAME_DIR .. "src/mame/drivers/multi16.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mizar")
files {
	MAME_DIR .. "src/mame/drivers/mzr8105.cpp",
}

createHBMAMEProjects(_target, _subtarget, "morrow")
files {
	MAME_DIR .. "src/mame/drivers/microdec.cpp",
	MAME_DIR .. "src/mame/drivers/mpz80.cpp",
	MAME_DIR .. "src/mame/includes/mpz80.h",
	MAME_DIR .. "src/mame/drivers/tricep.cpp",
}

createHBMAMEProjects(_target, _subtarget, "mos")
files {
	MAME_DIR .. "src/mame/drivers/kim1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "motorola")
files {
	MAME_DIR .. "src/mame/drivers/exorciser.cpp",
	MAME_DIR .. "src/mame/drivers/m6805evs.cpp",
	MAME_DIR .. "src/mame/drivers/m68705prg.cpp",
	MAME_DIR .. "src/mame/drivers/mekd1.cpp",
	MAME_DIR .. "src/mame/drivers/mekd2.cpp",
	MAME_DIR .. "src/mame/drivers/mekd3.cpp",
	MAME_DIR .. "src/mame/drivers/mekd4.cpp",
	MAME_DIR .. "src/mame/drivers/mekd5.cpp",
	MAME_DIR .. "src/mame/drivers/mvme147.cpp",
	MAME_DIR .. "src/mame/drivers/mvme162.cpp",
	MAME_DIR .. "src/mame/drivers/uchroma68.cpp",
}

createHBMAMEProjects(_target, _subtarget, "multitch")
files {
	MAME_DIR .. "src/mame/drivers/mkit09.cpp",
	MAME_DIR .. "src/mame/drivers/mpf1.cpp",
	MAME_DIR .. "src/mame/includes/mpf1.h",
}

createHBMAMEProjects(_target, _subtarget, "mupid")
files {
	MAME_DIR .. "src/mame/drivers/mdisk.cpp",
	MAME_DIR .. "src/mame/drivers/mupid2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nakajima")
files {
	MAME_DIR .. "src/mame/drivers/nakajies.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nascom")
files {
	MAME_DIR .. "src/mame/drivers/nascom1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "natsemi")
files {
	MAME_DIR .. "src/mame/drivers/hh_cop400.cpp",
	MAME_DIR .. "src/mame/drivers/hh_cops1.cpp",
	MAME_DIR .. "src/mame/drivers/ns5652.cpp",
	MAME_DIR .. "src/mame/drivers/ns32kdb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ncd")
files {
	MAME_DIR .. "src/mame/drivers/ncd68k.cpp",
	MAME_DIR .. "src/mame/drivers/ncd88k.cpp",
	MAME_DIR .. "src/mame/drivers/ncdmips.cpp",
	MAME_DIR .. "src/mame/drivers/ncdppc.cpp",
	MAME_DIR .. "src/mame/machine/bert.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ne")
files {
	MAME_DIR .. "src/mame/drivers/z80ne.cpp",
	MAME_DIR .. "src/mame/includes/z80ne.h",
	MAME_DIR .. "src/mame/machine/z80ne.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nec")
files {
	MAME_DIR .. "src/mame/drivers/apc.cpp",
	MAME_DIR .. "src/mame/drivers/ews4800.cpp",
	MAME_DIR .. "src/mame/drivers/hh_ucom4.cpp",
	MAME_DIR .. "src/mame/drivers/pce.cpp",
	MAME_DIR .. "src/mame/includes/pce.h",
	MAME_DIR .. "src/mame/machine/pce.cpp",
	MAME_DIR .. "src/mame/machine/pce_cd.cpp",
	MAME_DIR .. "src/mame/machine/pce_cd.h",
	MAME_DIR .. "src/mame/drivers/pcfx.cpp",
	MAME_DIR .. "src/mame/drivers/pc6001.cpp",
	MAME_DIR .. "src/mame/includes/pc6001.h",
	MAME_DIR .. "src/mame/video/pc6001.cpp",
	MAME_DIR .. "src/mame/drivers/pc8401a.cpp",
	MAME_DIR .. "src/mame/includes/pc8401a.h",
	MAME_DIR .. "src/mame/video/pc8401a.cpp",
	MAME_DIR .. "src/mame/drivers/pc8001.cpp",
	MAME_DIR .. "src/mame/includes/pc8001.h",
	MAME_DIR .. "src/mame/drivers/pc8801.cpp",
	MAME_DIR .. "src/mame/includes/pc8801.h",
	MAME_DIR .. "src/mame/drivers/pc88va.cpp",
	MAME_DIR .. "src/mame/includes/pc88va.h",
	MAME_DIR .. "src/mame/drivers/pc100.cpp",
	MAME_DIR .. "src/mame/drivers/pc9801.cpp",
	MAME_DIR .. "src/mame/includes/pc9801.h",
	MAME_DIR .. "src/mame/video/pc9801.cpp",
	MAME_DIR .. "src/mame/machine/pc9801_kbd.cpp",
	MAME_DIR .. "src/mame/machine/pc9801_kbd.h",
	MAME_DIR .. "src/mame/machine/pc9801_cd.cpp",
	MAME_DIR .. "src/mame/machine/pc9801_cd.h",
	MAME_DIR .. "src/mame/machine/pc9801_memsw.cpp",
	MAME_DIR .. "src/mame/machine/pc9801_memsw.h",
	MAME_DIR .. "src/mame/drivers/tk80bs.cpp",
}

createHBMAMEProjects(_target, _subtarget, "netronic")
files {
	MAME_DIR .. "src/mame/drivers/elf.cpp",
	MAME_DIR .. "src/mame/includes/elf.h",
	MAME_DIR .. "src/mame/drivers/exp85.cpp",
}

createHBMAMEProjects(_target, _subtarget, "next")
files {
	MAME_DIR .. "src/mame/drivers/next.cpp",
	MAME_DIR .. "src/mame/includes/next.h",
	MAME_DIR .. "src/mame/machine/nextkbd.cpp",
	MAME_DIR .. "src/mame/machine/nextkbd.h",
	MAME_DIR .. "src/mame/machine/nextmo.cpp",
	MAME_DIR .. "src/mame/machine/nextmo.h",
}

createHBMAMEProjects(_target, _subtarget, "nintendo")
files {
	MAME_DIR .. "src/mame/drivers/gb.cpp",
	MAME_DIR .. "src/mame/includes/gb.h",
	MAME_DIR .. "src/mame/machine/gb.cpp",
	MAME_DIR .. "src/mame/drivers/gba.cpp",
	MAME_DIR .. "src/mame/includes/gba.h",
	MAME_DIR .. "src/mame/drivers/n64.cpp",
	MAME_DIR .. "src/mame/includes/n64.h",
	MAME_DIR .. "src/mame/drivers/nds.cpp",
	MAME_DIR .. "src/mame/includes/nds.h",
	MAME_DIR .. "src/mame/drivers/nes.cpp",
	MAME_DIR .. "src/mame/includes/nes.h",
	MAME_DIR .. "src/mame/machine/nes.cpp",
	MAME_DIR .. "src/mame/video/nes.cpp",
	MAME_DIR .. "src/mame/drivers/nes_vt02_vt03.cpp",
	MAME_DIR .. "src/mame/drivers/nes_vt09.cpp",
	MAME_DIR .. "src/mame/drivers/nes_vt32.cpp",
	MAME_DIR .. "src/mame/drivers/nes_vt369_vtunknown.cpp",
	MAME_DIR .. "src/mame/machine/nes_vt_soc.cpp",
	MAME_DIR .. "src/mame/machine/nes_vt_soc.h",
	MAME_DIR .. "src/mame/machine/nes_vt09_soc.cpp",
	MAME_DIR .. "src/mame/machine/nes_vt09_soc.h",
	MAME_DIR .. "src/mame/machine/nes_vt32_soc.cpp",
	MAME_DIR .. "src/mame/machine/nes_vt32_soc.h",
	MAME_DIR .. "src/mame/machine/nes_vt369_vtunknown_soc.cpp",
	MAME_DIR .. "src/mame/machine/nes_vt369_vtunknown_soc.h",
	MAME_DIR .. "src/mame/drivers/nes_sh6578.cpp",
	MAME_DIR .. "src/mame/drivers/nes_clone.cpp",
	MAME_DIR .. "src/mame/drivers/pokemini.cpp",
	MAME_DIR .. "src/mame/drivers/snes.cpp",
	MAME_DIR .. "src/mame/includes/snes.h",
	MAME_DIR .. "src/mame/machine/snescx4.cpp",
	MAME_DIR .. "src/mame/machine/snescx4.h",
	MAME_DIR .. "src/mame/machine/cx4data.hxx",
	MAME_DIR .. "src/mame/machine/cx4fn.hxx",
	MAME_DIR .. "src/mame/machine/cx4oam.hxx",
	MAME_DIR .. "src/mame/machine/cx4ops.hxx",
	MAME_DIR .. "src/mame/drivers/vboy.cpp",
	MAME_DIR .. "src/mame/audio/vboy.cpp",
	MAME_DIR .. "src/mame/audio/vboy.h",
	MAME_DIR .. "src/mame/drivers/gamecube.cpp",
	MAME_DIR .. "src/mame/machine/m6502_vtscr.cpp",
	MAME_DIR .. "src/mame/machine/m6502_vtscr.h",
	MAME_DIR .. "src/mame/machine/m6502_swap_op_d5_d6.cpp",
	MAME_DIR .. "src/mame/machine/m6502_swap_op_d5_d6.h",
	MAME_DIR .. "src/mame/machine/m6502_swap_op_d2_d7.cpp",
	MAME_DIR .. "src/mame/machine/m6502_swap_op_d2_d7.h",
	MAME_DIR .. "src/mame/drivers/vt1682.cpp",
	MAME_DIR .. "src/mame/machine/vt1682_io.h",
	MAME_DIR .. "src/mame/machine/vt1682_io.cpp",
	MAME_DIR .. "src/mame/machine/vt1682_uio.h",
	MAME_DIR .. "src/mame/machine/vt1682_uio.cpp",
	MAME_DIR .. "src/mame/machine/vt1682_alu.h",
	MAME_DIR .. "src/mame/machine/vt1682_alu.cpp",
	MAME_DIR .. "src/mame/machine/vt1682_timer.h",
	MAME_DIR .. "src/mame/machine/vt1682_timer.cpp",
	MAME_DIR .. "src/mame/drivers/vt_unknown.cpp",
	MAME_DIR .. "src/mame/drivers/compmahj.cpp",
}

createHBMAMEProjects(_target, _subtarget, "nokia")
files {
	MAME_DIR .. "src/mame/drivers/dbox.cpp",
	MAME_DIR .. "src/mame/drivers/mikromik.cpp",
	MAME_DIR .. "src/mame/includes/mikromik.h",
	MAME_DIR .. "src/mame/machine/mm1kb.cpp",
	MAME_DIR .. "src/mame/machine/mm1kb.h",
	MAME_DIR .. "src/mame/video/mikromik.cpp",
	MAME_DIR .. "src/mame/drivers/nokia_3310.cpp",
}

createHBMAMEProjects(_target, _subtarget, "northstar")
files {
	MAME_DIR .. "src/mame/drivers/horizon.cpp",
}

createHBMAMEProjects(_target, _subtarget, "novag")
files {
	MAME_DIR .. "src/mame/drivers/novag_cexpert.cpp",
	MAME_DIR .. "src/mame/drivers/novag_cforte.cpp",
	MAME_DIR .. "src/mame/drivers/novag_const.cpp",
	MAME_DIR .. "src/mame/drivers/novag_diablo.cpp",
	MAME_DIR .. "src/mame/drivers/novag_micro.cpp",
	MAME_DIR .. "src/mame/drivers/novag_micro2.cpp",
	MAME_DIR .. "src/mame/drivers/novag_savant.cpp",
	MAME_DIR .. "src/mame/drivers/novag_sexpert.cpp",
	MAME_DIR .. "src/mame/drivers/novag_snova.cpp",
}

createHBMAMEProjects(_target, _subtarget, "novation")
files {
	MAME_DIR .. "src/mame/drivers/basssta.cpp",
	MAME_DIR .. "src/mame/drivers/drumsta.cpp",
}

createHBMAMEProjects(_target, _subtarget, "olivetti")
files {
	MAME_DIR .. "src/mame/drivers/m20.cpp",
	MAME_DIR .. "src/mame/machine/m20_kbd.cpp",
	MAME_DIR .. "src/mame/machine/m20_kbd.h",
	MAME_DIR .. "src/mame/machine/m20_8086.cpp",
	MAME_DIR .. "src/mame/machine/m20_8086.h",
	MAME_DIR .. "src/mame/drivers/m24.cpp",
	MAME_DIR .. "src/mame/machine/m24_kbd.cpp",
	MAME_DIR .. "src/mame/machine/m24_kbd.h",
	MAME_DIR .. "src/mame/machine/m24_z8000.cpp",
	MAME_DIR .. "src/mame/machine/m24_z8000.h",
	MAME_DIR .. "src/mame/drivers/olivpc1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "olympia")
files {
	MAME_DIR .. "src/mame/drivers/olyboss.cpp",
	MAME_DIR .. "src/mame/drivers/olytext.cpp",
	MAME_DIR .. "src/mame/drivers/peoplepc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "omnibyte")
files {
	MAME_DIR .. "src/mame/drivers/msbc1.cpp",
	MAME_DIR .. "src/mame/drivers/ob68k1a.cpp",
	MAME_DIR .. "src/mame/includes/ob68k1a.h",
}

createHBMAMEProjects(_target, _subtarget, "openuni")
files {
	MAME_DIR .. "src/mame/drivers/hektor.cpp",
}

createHBMAMEProjects(_target, _subtarget, "orion")
files {
	MAME_DIR .. "src/mame/drivers/orion.cpp",
	MAME_DIR .. "src/mame/includes/orion.h",
	MAME_DIR .. "src/mame/machine/orion.cpp",
	MAME_DIR .. "src/mame/video/orion.cpp",
}

createHBMAMEProjects(_target, _subtarget, "osborne")
files {
	MAME_DIR .. "src/mame/drivers/osborne1.cpp",
	MAME_DIR .. "src/mame/includes/osborne1.h",
	MAME_DIR .. "src/mame/machine/osborne1.cpp",
	MAME_DIR .. "src/mame/drivers/osbexec.cpp",
	MAME_DIR .. "src/mame/drivers/vixen.cpp",
	MAME_DIR .. "src/mame/includes/vixen.h",
}

createHBMAMEProjects(_target, _subtarget, "osi")
files {
	MAME_DIR .. "src/mame/drivers/osi.cpp",
	MAME_DIR .. "src/mame/includes/osi.h",
	MAME_DIR .. "src/mame/video/osi.cpp",
}

createHBMAMEProjects(_target, _subtarget, "palm")
files {
	MAME_DIR .. "src/mame/drivers/palm.cpp",
	MAME_DIR .. "src/mame/drivers/palm_dbg.hxx",
	MAME_DIR .. "src/mame/drivers/palmz22.cpp",
}

createHBMAMEProjects(_target, _subtarget, "parker")
files {
	MAME_DIR .. "src/mame/drivers/talkingbb.cpp",
	MAME_DIR .. "src/mame/drivers/talkingfb.cpp",
}

createHBMAMEProjects(_target, _subtarget, "pitronic")
files {
	MAME_DIR .. "src/mame/drivers/beta.cpp",
}

createHBMAMEProjects(_target, _subtarget, "pc")
files {
	MAME_DIR .. "src/mame/drivers/asst128.cpp",
	MAME_DIR .. "src/mame/drivers/europc.cpp",
	MAME_DIR .. "src/mame/drivers/genpc.cpp",
	MAME_DIR .. "src/mame/drivers/ibmpc.cpp",
	MAME_DIR .. "src/mame/drivers/ibmpcjr.cpp",
	MAME_DIR .. "src/mame/drivers/nforcepc.cpp",
	MAME_DIR .. "src/mame/drivers/pc.cpp",
	MAME_DIR .. "src/mame/drivers/pcipc.cpp",
	MAME_DIR .. "src/mame/drivers/tandy1t.cpp",
	MAME_DIR .. "src/mame/drivers/tosh1000.cpp",
	MAME_DIR .. "src/mame/machine/tosh1000_bram.cpp",
	MAME_DIR .. "src/mame/machine/tosh1000_bram.h",
	MAME_DIR .. "src/mame/drivers/compc.cpp",
	MAME_DIR .. "src/mame/video/pc_t1t.cpp",
	MAME_DIR .. "src/mame/video/pc_t1t.h",
}

createHBMAMEProjects(_target, _subtarget, "pdp1")
files {
	MAME_DIR .. "src/mame/drivers/pdp1.cpp",
	MAME_DIR .. "src/mame/includes/pdp1.h",
	MAME_DIR .. "src/mame/video/pdp1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "pel")
files {
	MAME_DIR .. "src/mame/drivers/galeb.cpp",
	MAME_DIR .. "src/mame/drivers/orao.cpp",
}

createHBMAMEProjects(_target, _subtarget, "philips")
files {
	MAME_DIR .. "src/mame/drivers/p2000t.cpp",
	MAME_DIR .. "src/mame/includes/p2000t.h",
	MAME_DIR .. "src/mame/machine/p2000t.cpp",
	MAME_DIR .. "src/mame/machine/p2000t_mdcr.cpp",
	MAME_DIR .. "src/mame/video/p2000t.cpp",
	MAME_DIR .. "src/mame/drivers/vg5k.cpp",
	MAME_DIR .. "src/mame/drivers/yes.cpp",
}

createHBMAMEProjects(_target, _subtarget, "poly")
files {
	MAME_DIR .. "src/mame/drivers/poly.cpp",
	MAME_DIR .. "src/mame/includes/poly.h",
	MAME_DIR .. "src/mame/machine/poly.cpp",
	MAME_DIR .. "src/mame/drivers/proteus.cpp",
}

createHBMAMEProjects(_target, _subtarget, "poly88")
files {
	MAME_DIR .. "src/mame/drivers/poly88.cpp",
	MAME_DIR .. "src/mame/includes/poly88.h",
	MAME_DIR .. "src/mame/machine/poly88.cpp",
}

createHBMAMEProjects(_target, _subtarget, "psion")
files {
	MAME_DIR .. "src/mame/drivers/psion.cpp",
	MAME_DIR .. "src/mame/includes/psion.h",
	MAME_DIR .. "src/mame/drivers/psion5.cpp",
	MAME_DIR .. "src/mame/includes/psion5.h",
	MAME_DIR .. "src/mame/machine/etna.cpp",
	MAME_DIR .. "src/mame/machine/etna.h",
	MAME_DIR .. "src/mame/machine/psion_pack.cpp",
	MAME_DIR .. "src/mame/machine/psion_pack.h",
}

createHBMAMEProjects(_target, _subtarget, "quantel")
files {
	MAME_DIR .. "src/mame/drivers/dpb7000.cpp",
	MAME_DIR .. "src/mame/drivers/harriet.cpp",
}

createHBMAMEProjects(_target, _subtarget, "qume")
files {
	MAME_DIR .. "src/mame/drivers/qvt70.cpp",
	MAME_DIR .. "src/mame/drivers/qvt102.cpp",
	MAME_DIR .. "src/mame/drivers/qvt103.cpp",
	MAME_DIR .. "src/mame/drivers/qvt190.cpp",
	MAME_DIR .. "src/mame/drivers/qvt201.cpp",
}

createHBMAMEProjects(_target, _subtarget, "radio")
files {
	MAME_DIR .. "src/mame/drivers/apogee.cpp",
	MAME_DIR .. "src/mame/drivers/mikrosha.cpp",
	MAME_DIR .. "src/mame/drivers/partner.cpp",
	MAME_DIR .. "src/mame/includes/partner.h",
	MAME_DIR .. "src/mame/machine/partner.cpp",
	MAME_DIR .. "src/mame/drivers/radio86.cpp",
	MAME_DIR .. "src/mame/includes/radio86.h",
	MAME_DIR .. "src/mame/machine/radio86.cpp",
}

createHBMAMEProjects(_target, _subtarget, "rca")
files {
	MAME_DIR .. "src/mame/drivers/microkit.cpp",
	MAME_DIR .. "src/mame/drivers/studio2.cpp",
	MAME_DIR .. "src/mame/drivers/vip.cpp",
	MAME_DIR .. "src/mame/includes/vip.h",
}

createHBMAMEProjects(_target, _subtarget, "regnecentralen")
files {
	MAME_DIR .. "src/mame/drivers/rc702.cpp",
	MAME_DIR .. "src/mame/drivers/rc759.cpp",
	MAME_DIR .. "src/mame/machine/rc759_kbd.cpp",
	MAME_DIR .. "src/mame/machine/rc759_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "ritam")
files {
	MAME_DIR .. "src/mame/drivers/monty.cpp",
}

createHBMAMEProjects(_target, _subtarget, "rm")
files {
	MAME_DIR .. "src/mame/drivers/rm380z.cpp",
	MAME_DIR .. "src/mame/includes/rm380z.h",
	MAME_DIR .. "src/mame/machine/rm380z.cpp",
	MAME_DIR .. "src/mame/video/rm380z.cpp",
	MAME_DIR .. "src/mame/drivers/rmnimbus.cpp",
	MAME_DIR .. "src/mame/includes/rmnimbus.h",
	MAME_DIR .. "src/mame/machine/rmnimbus.cpp",
	MAME_DIR .. "src/mame/video/rmnimbus.cpp",
	MAME_DIR .. "src/mame/machine/rmnkbd.cpp",
	MAME_DIR .. "src/mame/machine/rmnkbd.h",
}

createHBMAMEProjects(_target, _subtarget, "robotron")
files {
	MAME_DIR .. "src/mame/drivers/a5105.cpp",
	MAME_DIR .. "src/mame/drivers/a51xx.cpp",
	MAME_DIR .. "src/mame/drivers/a7150.cpp",
	MAME_DIR .. "src/mame/drivers/k1003.cpp",
	MAME_DIR .. "src/mame/drivers/k8915.cpp",
	MAME_DIR .. "src/mame/drivers/rt1715.cpp",
	MAME_DIR .. "src/mame/drivers/z1013.cpp",
	MAME_DIR .. "src/mame/drivers/z9001.cpp",
}

createHBMAMEProjects(_target, _subtarget, "roland")
files {
	MAME_DIR .. "src/mame/drivers/alphajuno.cpp",
	MAME_DIR .. "src/mame/drivers/boss_se70.cpp",
	MAME_DIR .. "src/mame/drivers/boss_sx700.cpp",
	MAME_DIR .. "src/mame/drivers/juno106.cpp",
	MAME_DIR .. "src/mame/drivers/juno6.cpp",
	MAME_DIR .. "src/mame/drivers/roland_cm32p.cpp",
	MAME_DIR .. "src/mame/drivers/roland_d10.cpp",
	MAME_DIR .. "src/mame/drivers/roland_d50.cpp",
	MAME_DIR .. "src/mame/drivers/roland_jd800.cpp",
	MAME_DIR .. "src/mame/drivers/roland_jv80.cpp",
	MAME_DIR .. "src/mame/drivers/roland_jx3p.cpp",
	MAME_DIR .. "src/mame/drivers/roland_jx8p.cpp",
	MAME_DIR .. "src/mame/drivers/roland_mc50.cpp",
	MAME_DIR .. "src/mame/drivers/roland_mt32.cpp",
	MAME_DIR .. "src/mame/drivers/roland_pr100.cpp",
	MAME_DIR .. "src/mame/drivers/roland_r8.cpp",
	MAME_DIR .. "src/mame/drivers/roland_ra30.cpp",
	MAME_DIR .. "src/mame/drivers/roland_s10.cpp",
	MAME_DIR .. "src/mame/drivers/roland_s50.cpp",
	MAME_DIR .. "src/mame/drivers/roland_sc55.cpp",
	MAME_DIR .. "src/mame/drivers/roland_sc88.cpp",
	MAME_DIR .. "src/mame/drivers/roland_tb303.cpp",
	MAME_DIR .. "src/mame/drivers/roland_tr505.cpp",
	MAME_DIR .. "src/mame/drivers/roland_tr606.cpp",
	MAME_DIR .. "src/mame/drivers/roland_tr707.cpp",
	MAME_DIR .. "src/mame/drivers/roland_tr909.cpp",
	MAME_DIR .. "src/mame/drivers/roland_u20.cpp",
	MAME_DIR .. "src/mame/audio/bu3905.cpp",
	MAME_DIR .. "src/mame/audio/bu3905.h",
	MAME_DIR .. "src/mame/audio/jx8p_synth.cpp",
	MAME_DIR .. "src/mame/audio/jx8p_synth.h",
	MAME_DIR .. "src/mame/audio/mb63h114.cpp",
	MAME_DIR .. "src/mame/audio/mb63h114.h",
	MAME_DIR .. "src/mame/audio/sa16.cpp",
	MAME_DIR .. "src/mame/audio/sa16.h",
	MAME_DIR .. "src/mame/machine/mb62h195.cpp",
	MAME_DIR .. "src/mame/machine/mb62h195.h",
	MAME_DIR .. "src/mame/machine/mb63h149.cpp",
	MAME_DIR .. "src/mame/machine/mb63h149.h",
	MAME_DIR .. "src/mame/machine/mb87013.cpp",
	MAME_DIR .. "src/mame/machine/mb87013.h",
	MAME_DIR .. "src/mame/machine/pg200.cpp",
	MAME_DIR .. "src/mame/machine/pg200.h",
}

createHBMAMEProjects(_target, _subtarget, "rolm")
files {
	MAME_DIR .. "src/mame/drivers/r9751.cpp",
}

createHBMAMEProjects(_target, _subtarget, "rockwell")
files {
	MAME_DIR .. "src/mame/drivers/aim65.cpp",
	MAME_DIR .. "src/mame/includes/aim65.h",
	MAME_DIR .. "src/mame/machine/aim65.cpp",
	MAME_DIR .. "src/mame/drivers/aim65_40.cpp",
	MAME_DIR .. "src/mame/drivers/hh_pps41.cpp",
}

createHBMAMEProjects(_target, _subtarget, "rtpc")
files {
	MAME_DIR .. "src/mame/drivers/rtpc.cpp",
	MAME_DIR .. "src/mame/machine/rosetta.cpp",
	MAME_DIR .. "src/mame/machine/rosetta.h",
	MAME_DIR .. "src/mame/machine/rtpc_iocc.cpp",
	MAME_DIR .. "src/mame/machine/rtpc_iocc.h",
}

createHBMAMEProjects(_target, _subtarget, "sage")
files {
	MAME_DIR .. "src/mame/drivers/sage2.cpp",
	MAME_DIR .. "src/mame/includes/sage2.h",
}

createHBMAMEProjects(_target, _subtarget, "saitek")
files {
	MAME_DIR .. "src/mame/drivers/saitek_ccompan.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_chesstrv.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_cp2000.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_delta1.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_exchess.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_intchess.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_leonardo.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_mark5.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_minichess.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_prschess.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_renaissance.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_risc2500.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_schess.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_simultano.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_ssystem3.cpp",
	MAME_DIR .. "src/mame/includes/saitek_stratos.h",
	MAME_DIR .. "src/mame/drivers/saitek_stratos.cpp",
	MAME_DIR .. "src/mame/drivers/saitek_corona.cpp", -- subdriver of saitek_stratos
	MAME_DIR .. "src/mame/drivers/saitek_superstar.cpp",
}

createHBMAMEProjects(_target, _subtarget, "samcoupe")
files {
	MAME_DIR .. "src/mame/drivers/samcoupe.cpp",
}

createHBMAMEProjects(_target, _subtarget, "samsung")
files {
	MAME_DIR .. "src/mame/drivers/spc1000.cpp",
	MAME_DIR .. "src/mame/drivers/spc1500.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sanyo")
files {
	MAME_DIR .. "src/mame/drivers/mbc200.cpp",
	MAME_DIR .. "src/mame/drivers/mbc55x.cpp",
	MAME_DIR .. "src/mame/includes/mbc55x.h",
	MAME_DIR .. "src/mame/video/mbc55x.cpp",
	MAME_DIR .. "src/mame/drivers/phc25.cpp",
	MAME_DIR .. "src/mame/includes/phc25.h",
	MAME_DIR .. "src/mame/machine/mbc55x_kbd.cpp",
	MAME_DIR .. "src/mame/machine/mbc55x_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "saturn")
files {
	MAME_DIR .. "src/mame/drivers/st17xx.cpp",
}

-- Don't call this project "sega" or it collides with the arcade one
-- and merges with it, which ends up with libsega.a linked after
-- libshared.a.  The link then fails on linux because SEGAM1AUDIO and RAX
-- are in shared while model* and stv are in sega.
createHBMAMEProjects(_target, _subtarget, "segacons")
files {
	MAME_DIR .. "src/mame/drivers/dccons.cpp",
	MAME_DIR .. "src/mame/includes/dccons.h",
	MAME_DIR .. "src/mame/machine/dccons.cpp",
	MAME_DIR .. "src/mame/machine/gdrom.cpp",
	MAME_DIR .. "src/mame/machine/gdrom.h",
	MAME_DIR .. "src/mame/drivers/megadriv.cpp",
	MAME_DIR .. "src/mame/includes/megadriv.h",
	MAME_DIR .. "src/mame/drivers/megadriv_rad.cpp",
	MAME_DIR .. "src/mame/includes/megadriv_rad.h",
	MAME_DIR .. "src/mame/drivers/megadriv_vt_hybrid.cpp",
	MAME_DIR .. "src/mame/drivers/megadriv_sunplus_hybrid.cpp",
	MAME_DIR .. "src/mame/drivers/segapico.cpp",
	MAME_DIR .. "src/mame/drivers/sega_sawatte.cpp",
	MAME_DIR .. "src/mame/drivers/sega_beena.cpp",
	MAME_DIR .. "src/mame/drivers/segapm.cpp",
	MAME_DIR .. "src/mame/drivers/sg1000.cpp",
	MAME_DIR .. "src/mame/includes/sg1000.h",
	MAME_DIR .. "src/mame/drivers/sms.cpp",
	MAME_DIR .. "src/mame/includes/sms.h",
	MAME_DIR .. "src/mame/machine/sms.cpp",
	MAME_DIR .. "src/mame/drivers/svmu.cpp",
	MAME_DIR .. "src/mame/machine/mega32x.cpp",
	MAME_DIR .. "src/mame/machine/mega32x.h",
	MAME_DIR .. "src/mame/machine/megacd.cpp",
	MAME_DIR .. "src/mame/machine/megacd.h",
	MAME_DIR .. "src/mame/machine/megacdcd.cpp",
	MAME_DIR .. "src/mame/machine/megacdcd.h",
}

createHBMAMEProjects(_target, _subtarget, "sequential")
files {
	MAME_DIR .. "src/mame/drivers/prophet600.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sgi")
files {
	MAME_DIR .. "src/mame/drivers/iris_power.cpp",
	MAME_DIR .. "src/mame/drivers/crimson.cpp",
	MAME_DIR .. "src/mame/drivers/o2.cpp",
	MAME_DIR .. "src/mame/drivers/octane.cpp",
	MAME_DIR .. "src/mame/machine/vino.cpp",
	MAME_DIR .. "src/mame/machine/vino.h",
	MAME_DIR .. "src/mame/machine/saa7191.cpp",
	MAME_DIR .. "src/mame/machine/saa7191.h",
	MAME_DIR .. "src/mame/machine/sgi.cpp",
	MAME_DIR .. "src/mame/machine/sgi.h",
	MAME_DIR .. "src/mame/machine/hal2.cpp",
	MAME_DIR .. "src/mame/machine/hal2.h",
	MAME_DIR .. "src/mame/machine/hpc1.cpp",
	MAME_DIR .. "src/mame/machine/hpc1.h",
	MAME_DIR .. "src/mame/machine/hpc3.cpp",
	MAME_DIR .. "src/mame/machine/hpc3.h",
	MAME_DIR .. "src/mame/machine/ioc2.cpp",
	MAME_DIR .. "src/mame/machine/ioc2.h",
	MAME_DIR .. "src/mame/machine/mace.cpp",
	MAME_DIR .. "src/mame/machine/mace.h",
	MAME_DIR .. "src/mame/drivers/iris3130.cpp",
	MAME_DIR .. "src/mame/drivers/4dpi.cpp",
	MAME_DIR .. "src/mame/drivers/indigo.cpp",
	MAME_DIR .. "src/mame/drivers/indy_indigo2.cpp",
	MAME_DIR .. "src/mame/video/light.cpp",
	MAME_DIR .. "src/mame/video/light.h",
	MAME_DIR .. "src/mame/video/crime.cpp",
	MAME_DIR .. "src/mame/video/crime.h",
	MAME_DIR .. "src/mame/video/sgi_gr1.cpp",
	MAME_DIR .. "src/mame/video/sgi_gr1.h",
	MAME_DIR .. "src/mame/video/sgi_ge5.cpp",
	MAME_DIR .. "src/mame/video/sgi_ge5.h",
	MAME_DIR .. "src/mame/video/sgi_re2.cpp",
	MAME_DIR .. "src/mame/video/sgi_re2.h",
	MAME_DIR .. "src/mame/video/sgi_xmap2.cpp",
	MAME_DIR .. "src/mame/video/sgi_xmap2.h",
}

createHBMAMEProjects(_target, _subtarget, "sharp")
files {
--	MAME_DIR .. "src/mame/drivers/hh_sm510.cpp",
--	MAME_DIR .. "src/mame/includes/hh_sm510.h",
	MAME_DIR .. "src/mame/drivers/rzone.cpp", -- subdriver of hh_sm510
	MAME_DIR .. "src/mame/video/mz700.cpp",
	MAME_DIR .. "src/mame/drivers/mz700.cpp",
	MAME_DIR .. "src/mame/includes/mz700.h",
	MAME_DIR .. "src/mame/drivers/pc1500.cpp",
	MAME_DIR .. "src/mame/drivers/pocketc.cpp",
	MAME_DIR .. "src/mame/machine/pocketc.cpp",
	MAME_DIR .. "src/mame/includes/pocketc.h",
	MAME_DIR .. "src/mame/video/pc1401.cpp",
	MAME_DIR .. "src/mame/machine/pc1401.cpp",
	MAME_DIR .. "src/mame/includes/pc1401.h",
	MAME_DIR .. "src/mame/video/pc1403.cpp",
	MAME_DIR .. "src/mame/machine/pc1403.cpp",
	MAME_DIR .. "src/mame/includes/pc1403.h",
	MAME_DIR .. "src/mame/video/pc1350.cpp",
	MAME_DIR .. "src/mame/machine/pc1350.cpp",
	MAME_DIR .. "src/mame/includes/pc1350.h",
	MAME_DIR .. "src/mame/video/pc1251.cpp",
	MAME_DIR .. "src/mame/machine/pc1251.cpp",
	MAME_DIR .. "src/mame/includes/pc1251.h",
	MAME_DIR .. "src/mame/video/pocketc.cpp",
	MAME_DIR .. "src/mame/machine/mz700.cpp",
	MAME_DIR .. "src/mame/drivers/x68k.cpp",
	MAME_DIR .. "src/mame/includes/x68k.h",
	MAME_DIR .. "src/mame/video/x68k.cpp",
	MAME_DIR .. "src/mame/machine/x68k_hdc.cpp",
	MAME_DIR .. "src/mame/machine/x68k_hdc.h",
	MAME_DIR .. "src/mame/machine/x68k_kbd.cpp",
	MAME_DIR .. "src/mame/machine/x68k_kbd.h",
	MAME_DIR .. "src/mame/video/x68k_crtc.cpp",
	MAME_DIR .. "src/mame/video/x68k_crtc.h",
	MAME_DIR .. "src/mame/drivers/mz80.cpp",
	MAME_DIR .. "src/mame/includes/mz80.h",
	MAME_DIR .. "src/mame/video/mz80.cpp",
	MAME_DIR .. "src/mame/machine/mz80.cpp",
	MAME_DIR .. "src/mame/drivers/mz2000.cpp",
	MAME_DIR .. "src/mame/drivers/wizard.cpp",
	MAME_DIR .. "src/mame/drivers/x1.cpp",
	MAME_DIR .. "src/mame/includes/x1.h",
	MAME_DIR .. "src/mame/machine/x1.cpp",
	MAME_DIR .. "src/mame/video/x1.cpp",
	MAME_DIR .. "src/mame/drivers/x1twin.cpp",
	MAME_DIR .. "src/mame/drivers/mz2500.cpp",
	MAME_DIR .. "src/mame/includes/mz2500.h",
	MAME_DIR .. "src/mame/drivers/mz3500.cpp",
	MAME_DIR .. "src/mame/drivers/pce220.cpp",
	MAME_DIR .. "src/mame/machine/pce220_ser.cpp",
	MAME_DIR .. "src/mame/machine/pce220_ser.h",
	MAME_DIR .. "src/mame/drivers/mz6500.cpp",
	MAME_DIR .. "src/mame/drivers/zaurus.cpp",
	MAME_DIR .. "src/mame/drivers/fontwriter.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sinclair")
files {
	MAME_DIR .. "src/mame/video/spectrum.cpp",
	MAME_DIR .. "src/mame/video/timex.cpp",
	MAME_DIR .. "src/mame/video/zx.cpp",
	MAME_DIR .. "src/mame/drivers/zx.cpp",
	MAME_DIR .. "src/mame/includes/zx.h",
	MAME_DIR .. "src/mame/machine/zx.cpp",
	MAME_DIR .. "src/mame/drivers/spectrum.cpp",
	MAME_DIR .. "src/mame/includes/spectrum.h",
	MAME_DIR .. "src/mame/drivers/spec128.cpp",
	MAME_DIR .. "src/mame/includes/spec128.h",
	MAME_DIR .. "src/mame/drivers/timex.cpp",
	MAME_DIR .. "src/mame/includes/timex.h",
	MAME_DIR .. "src/mame/drivers/specpls3.cpp",
	MAME_DIR .. "src/mame/includes/specpls3.h",
	MAME_DIR .. "src/mame/drivers/scorpion.cpp",
	MAME_DIR .. "src/mame/drivers/atm.cpp",
	MAME_DIR .. "src/mame/drivers/pentagon.cpp",
	MAME_DIR .. "src/mame/machine/beta.cpp",
	MAME_DIR .. "src/mame/machine/beta.h",
	MAME_DIR .. "src/mame/machine/spec_snqk.cpp",
	MAME_DIR .. "src/mame/machine/spec_snqk.h",
	MAME_DIR .. "src/mame/drivers/ql.cpp",
	MAME_DIR .. "src/mame/machine/qimi.cpp",
	MAME_DIR .. "src/mame/machine/qimi.h",
	MAME_DIR .. "src/mame/video/zx8301.cpp",
	MAME_DIR .. "src/mame/video/zx8301.h",
	MAME_DIR .. "src/mame/machine/zx8302.cpp",
	MAME_DIR .. "src/mame/machine/zx8302.h",
}

createHBMAMEProjects(_target, _subtarget, "siemens")
files {
	MAME_DIR .. "src/mame/drivers/bitel.cpp",
	MAME_DIR .. "src/mame/drivers/pcd.cpp",
	MAME_DIR .. "src/mame/machine/pcd_kbd.cpp",
	MAME_DIR .. "src/mame/machine/pcd_kbd.h",
	MAME_DIR .. "src/mame/video/pcd.cpp",
	MAME_DIR .. "src/mame/video/pcd.h",
	MAME_DIR .. "src/mame/drivers/pg685.cpp",
}

createHBMAMEProjects(_target, _subtarget, "slicer")
files {
	MAME_DIR .. "src/mame/drivers/slicer.cpp",
}

createHBMAMEProjects(_target, _subtarget, "snk")
files {
--	MAME_DIR .. "src/mame/drivers/neogeocd.cpp",
	MAME_DIR .. "src/mame/drivers/ngp.cpp",
	MAME_DIR .. "src/mame/video/k1ge.cpp",
	MAME_DIR .. "src/mame/video/k1ge.h",
}

createHBMAMEProjects(_target, _subtarget, "sony")
files {
	MAME_DIR .. "src/mame/drivers/betacam.cpp",
	MAME_DIR .. "src/mame/drivers/bvm.cpp",
	MAME_DIR .. "src/mame/drivers/dfs500.cpp",
	MAME_DIR .. "src/mame/drivers/dpsv55.cpp",
	MAME_DIR .. "src/mame/drivers/pockstat.cpp",
	MAME_DIR .. "src/mame/drivers/psx.cpp",
	MAME_DIR .. "src/mame/machine/psxcd.cpp",
	MAME_DIR .. "src/mame/machine/psxcd.h",
	MAME_DIR .. "src/mame/drivers/pve500.cpp",
	MAME_DIR .. "src/mame/drivers/smc777.cpp",
	MAME_DIR .. "src/mame/drivers/ps2sony.cpp",
	MAME_DIR .. "src/mame/drivers/umatic.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sony_news")
files {
	MAME_DIR .. "src/mame/drivers/news_68k.cpp",
	MAME_DIR .. "src/mame/drivers/news_r3k.cpp",
	MAME_DIR .. "src/mame/drivers/news_38xx.cpp",
	MAME_DIR .. "src/mame/machine/dmac_0448.cpp",
	MAME_DIR .. "src/mame/machine/dmac_0448.h",
	MAME_DIR .. "src/mame/machine/dmac_0266.cpp",
	MAME_DIR .. "src/mame/machine/dmac_0266.h",
	MAME_DIR .. "src/mame/machine/news_hid.cpp",
	MAME_DIR .. "src/mame/machine/news_hid.h",
}

createHBMAMEProjects(_target, _subtarget, "sord")
files {
	MAME_DIR .. "src/mame/drivers/m5.cpp",
}

createHBMAMEProjects(_target, _subtarget, "special")
files {
	MAME_DIR .. "src/mame/drivers/special.cpp",
	MAME_DIR .. "src/mame/includes/special.h",
	MAME_DIR .. "src/mame/audio/special.cpp",
	MAME_DIR .. "src/mame/audio/special.h",
	MAME_DIR .. "src/mame/machine/special.cpp",
	MAME_DIR .. "src/mame/video/special.cpp",
}

createHBMAMEProjects(_target, _subtarget, "stm")
files {
	MAME_DIR .. "src/mame/drivers/pp.cpp",
}

createHBMAMEProjects(_target, _subtarget, "sun")
files {
	MAME_DIR .. "src/mame/drivers/sun1.cpp",
	MAME_DIR .. "src/mame/drivers/sun2.cpp",
	MAME_DIR .. "src/mame/drivers/sun3.cpp",
	MAME_DIR .. "src/mame/drivers/sun3x.cpp",
	MAME_DIR .. "src/mame/drivers/sun4.cpp",
}

createHBMAMEProjects(_target, _subtarget, "svi")
files {
	MAME_DIR .. "src/mame/drivers/svi318.cpp",
}

createHBMAMEProjects(_target, _subtarget, "svision")
files {
	MAME_DIR .. "src/mame/drivers/svision.cpp",
	MAME_DIR .. "src/mame/includes/svision.h",
	MAME_DIR .. "src/mame/audio/svis_snd.cpp",
	MAME_DIR .. "src/mame/audio/svis_snd.h",
}

createHBMAMEProjects(_target, _subtarget, "swtpc")
files {
	MAME_DIR .. "src/mame/drivers/swtpc.cpp",
	MAME_DIR .. "src/mame/drivers/swtpc09.cpp",
	MAME_DIR .. "src/mame/includes/swtpc09.h",
	MAME_DIR .. "src/mame/machine/swtpc09.cpp",
	MAME_DIR .. "src/mame/drivers/swtpc8212.cpp",
}

createHBMAMEProjects(_target, _subtarget, "synertek")
files {
	MAME_DIR .. "src/mame/drivers/ktm3.cpp",
	MAME_DIR .. "src/mame/drivers/mbc020.cpp",
	MAME_DIR .. "src/mame/drivers/sym1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ta")
files {
	MAME_DIR .. "src/mame/drivers/alphatpx.cpp",
	MAME_DIR .. "src/mame/drivers/alphatpc16.cpp",
	MAME_DIR .. "src/mame/drivers/alphatro.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tab")
files {
	MAME_DIR .. "src/mame/drivers/tabe22.cpp",
	MAME_DIR .. "src/mame/machine/e22_kbd.cpp",
	MAME_DIR .. "src/mame/machine/e22_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "tandberg")
files {
	MAME_DIR .. "src/mame/drivers/tdv2324.cpp",
	MAME_DIR .. "src/mame/includes/tdv2324.h",
}

createHBMAMEProjects(_target, _subtarget, "tangerin")
files {
	MAME_DIR .. "src/mame/drivers/alphatan.cpp",
	MAME_DIR .. "src/mame/drivers/hhtiger.cpp",
	MAME_DIR .. "src/mame/drivers/microtan.cpp",
	MAME_DIR .. "src/mame/includes/microtan.h",
	MAME_DIR .. "src/mame/machine/microtan.cpp",
	MAME_DIR .. "src/mame/video/microtan.cpp",
	MAME_DIR .. "src/mame/drivers/oric.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tasc")
files {
	MAME_DIR .. "src/mame/drivers/tasc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tatung")
files {
	MAME_DIR .. "src/mame/drivers/einstein.cpp",
}

createHBMAMEProjects(_target, _subtarget, "teamconc")
files {
	MAME_DIR .. "src/mame/drivers/comquest.cpp",
	MAME_DIR .. "src/mame/includes/comquest.h",
	MAME_DIR .. "src/mame/video/comquest.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tectoy")
files {
	MAME_DIR .. "src/mame/drivers/pensebem.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tektroni")
files {
	MAME_DIR .. "src/mame/drivers/tek405x.cpp",
	MAME_DIR .. "src/mame/includes/tek405x.h",
	MAME_DIR .. "src/mame/drivers/tek410x.cpp",
	MAME_DIR .. "src/mame/drivers/tek440x.cpp",
	MAME_DIR .. "src/mame/drivers/tekigw.cpp",
	MAME_DIR .. "src/mame/drivers/tekxp33x.cpp",
	MAME_DIR .. "src/mame/machine/tek410x_kbd.cpp",
	MAME_DIR .. "src/mame/machine/tek410x_kbd.h",
}

createHBMAMEProjects(_target, _subtarget, "telenova")
files {
	MAME_DIR .. "src/mame/drivers/compis.cpp",
	MAME_DIR .. "src/mame/machine/compiskb.cpp",
	MAME_DIR .. "src/mame/machine/compiskb.h",
}

createHBMAMEProjects(_target, _subtarget, "telercas")
files {
	MAME_DIR .. "src/mame/drivers/tmc1800.cpp",
	MAME_DIR .. "src/mame/includes/tmc1800.h",
	MAME_DIR .. "src/mame/video/tmc1800.cpp",
	MAME_DIR .. "src/mame/drivers/tmc600.cpp",
	MAME_DIR .. "src/mame/includes/tmc600.h",
	MAME_DIR .. "src/mame/video/tmc600.cpp",
	MAME_DIR .. "src/mame/drivers/tmc2000e.cpp",
	MAME_DIR .. "src/mame/includes/tmc2000e.h",
}

createHBMAMEProjects(_target, _subtarget, "televideo")
files {
	MAME_DIR .. "src/mame/drivers/ts802.cpp",
	MAME_DIR .. "src/mame/drivers/ts803.cpp",
	MAME_DIR .. "src/mame/drivers/ts816.cpp",
	MAME_DIR .. "src/mame/drivers/tv910.cpp",
	MAME_DIR .. "src/mame/drivers/tv912.cpp",
	MAME_DIR .. "src/mame/drivers/tv924.cpp",
	MAME_DIR .. "src/mame/drivers/tv950.cpp",
	MAME_DIR .. "src/mame/drivers/tv955.cpp",
	MAME_DIR .. "src/mame/drivers/tv965.cpp",
	MAME_DIR .. "src/mame/drivers/tv990.cpp",
	MAME_DIR .. "src/mame/drivers/ts3000.cpp",
	MAME_DIR .. "src/mame/machine/tv950kb.cpp",
	MAME_DIR .. "src/mame/machine/tv950kb.h",
	MAME_DIR .. "src/mame/machine/tv955kb.cpp",
	MAME_DIR .. "src/mame/machine/tv955kb.h",
}

createHBMAMEProjects(_target, _subtarget, "tesla")
files {
	MAME_DIR .. "src/mame/drivers/ondra.cpp",
	MAME_DIR .. "src/mame/includes/ondra.h",
	MAME_DIR .. "src/mame/machine/ondra.cpp",
	MAME_DIR .. "src/mame/drivers/pmd85.cpp",
	MAME_DIR .. "src/mame/includes/pmd85.h",
	MAME_DIR .. "src/mame/machine/pmd85.cpp",
	MAME_DIR .. "src/mame/drivers/pmi80.cpp",
	MAME_DIR .. "src/mame/drivers/sapi1.cpp",
}

createHBMAMEProjects(_target, _subtarget, "thomson")
files {
	MAME_DIR .. "src/mame/drivers/thomson.cpp",
	MAME_DIR .. "src/mame/includes/thomson.h",
	MAME_DIR .. "src/mame/machine/thomson.cpp",
	MAME_DIR .. "src/mame/video/thomson.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ti")
files {
	MAME_DIR .. "src/mame/drivers/avigo.cpp",
	MAME_DIR .. "src/mame/includes/avigo.h",
	MAME_DIR .. "src/mame/video/avigo.cpp",
	MAME_DIR .. "src/mame/drivers/cc40.cpp",
	MAME_DIR .. "src/mame/drivers/evmbug.cpp",
	MAME_DIR .. "src/mame/drivers/exelv.cpp",
	MAME_DIR .. "src/mame/drivers/geneve.cpp",
	MAME_DIR .. "src/mame/drivers/hh_tms1k.cpp",
	MAME_DIR .. "src/mame/includes/hh_tms1k.h",
	MAME_DIR .. "src/mame/drivers/tispeak.cpp",  -- subdriver of hh_tms1k
	MAME_DIR .. "src/mame/drivers/tispellb.cpp", -- "
	MAME_DIR .. "src/mame/drivers/ti74.cpp",
	MAME_DIR .. "src/mame/drivers/ti85.cpp",
	MAME_DIR .. "src/mame/includes/ti85.h",
	MAME_DIR .. "src/mame/machine/ti85.cpp",
	MAME_DIR .. "src/mame/video/ti85.cpp",
	MAME_DIR .. "src/mame/drivers/ti89.cpp",
	MAME_DIR .. "src/mame/includes/ti89.h",
	MAME_DIR .. "src/mame/drivers/ti931.cpp",
	MAME_DIR .. "src/mame/drivers/ti99_2.cpp",
	MAME_DIR .. "src/mame/drivers/ti99_4x.cpp",
	MAME_DIR .. "src/mame/drivers/ti99_4p.cpp",
	MAME_DIR .. "src/mame/drivers/ti99_8.cpp",
	MAME_DIR .. "src/mame/drivers/ti990_4.cpp",
	MAME_DIR .. "src/mame/drivers/ti990_10.cpp",
	MAME_DIR .. "src/mame/drivers/tm990189.cpp",
	MAME_DIR .. "src/mame/video/733_asr.cpp",
	MAME_DIR .. "src/mame/video/733_asr.h",
	MAME_DIR .. "src/mame/video/911_vdt.cpp",
	MAME_DIR .. "src/mame/video/911_vdt.h",
	MAME_DIR .. "src/mame/video/911_chr.h",
	MAME_DIR .. "src/mame/video/911_key.h",
}

createHBMAMEProjects(_target, _subtarget, "tiger")
files {
	MAME_DIR .. "src/mame/drivers/gamecom.cpp",
	MAME_DIR .. "src/mame/includes/gamecom.h",
	MAME_DIR .. "src/mame/machine/gamecom.cpp",
	MAME_DIR .. "src/mame/video/gamecom.cpp",
	MAME_DIR .. "src/mame/drivers/k28.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tigertel")
files {
	MAME_DIR .. "src/mame/drivers/gizmondo.cpp",
	MAME_DIR .. "src/mame/machine/docg3.cpp",
	MAME_DIR .. "src/mame/machine/docg3.h",
}

createHBMAMEProjects(_target, _subtarget, "tiki")
files {
	MAME_DIR .. "src/mame/drivers/tiki100.cpp",
	MAME_DIR .. "src/mame/includes/tiki100.h",
}

createHBMAMEProjects(_target, _subtarget, "tomy")
files {
	MAME_DIR .. "src/mame/drivers/tutor.cpp",
	MAME_DIR .. "src/mame/drivers/tomy_princ.cpp",
}

createHBMAMEProjects(_target, _subtarget, "toshiba")
files {
	MAME_DIR .. "src/mame/drivers/pasopia.cpp",
	MAME_DIR .. "src/mame/drivers/pasopia7.cpp",
	MAME_DIR .. "src/mame/drivers/paso1600.cpp",
}

createHBMAMEProjects(_target, _subtarget, "trainer")
files {
	MAME_DIR .. "src/mame/drivers/amico2k.cpp",
	MAME_DIR .. "src/mame/drivers/babbage.cpp",
	MAME_DIR .. "src/mame/drivers/bob85.cpp",
	MAME_DIR .. "src/mame/drivers/crei680.cpp",
	MAME_DIR .. "src/mame/drivers/cvicny.cpp",
	MAME_DIR .. "src/mame/drivers/datum.cpp",
	MAME_DIR .. "src/mame/drivers/dolphunk.cpp",
	MAME_DIR .. "src/mame/drivers/emma2.cpp",
	MAME_DIR .. "src/mame/drivers/instruct.cpp",
	MAME_DIR .. "src/mame/drivers/mk14.cpp",
	MAME_DIR .. "src/mame/drivers/pro80.cpp",
	MAME_DIR .. "src/mame/drivers/savia84.cpp",
	MAME_DIR .. "src/mame/drivers/selz80.cpp",
	MAME_DIR .. "src/mame/drivers/tec1.cpp",
	MAME_DIR .. "src/mame/drivers/tk80.cpp",
	MAME_DIR .. "src/mame/drivers/zapcomputer.cpp",
}

createHBMAMEProjects(_target, _subtarget, "trs")
files {
	MAME_DIR .. "src/mame/drivers/coco12.cpp",
	MAME_DIR .. "src/mame/includes/coco12.h",
	MAME_DIR .. "src/mame/drivers/coco3.cpp",
	MAME_DIR .. "src/mame/includes/coco3.h",
	MAME_DIR .. "src/mame/drivers/dragon.cpp",
	MAME_DIR .. "src/mame/includes/dragon.h",
	MAME_DIR .. "src/mame/drivers/mc10.cpp",
	MAME_DIR .. "src/mame/machine/6883sam.cpp",
	MAME_DIR .. "src/mame/machine/6883sam.h",
	MAME_DIR .. "src/mame/machine/coco.cpp",
	MAME_DIR .. "src/mame/includes/coco.h",
	MAME_DIR .. "src/mame/machine/coco12.cpp",
	MAME_DIR .. "src/mame/machine/coco3.cpp",
	MAME_DIR .. "src/mame/machine/coco_vhd.cpp",
	MAME_DIR .. "src/mame/machine/coco_vhd.h",
	MAME_DIR .. "src/mame/machine/dragon.cpp",
	MAME_DIR .. "src/mame/machine/dgnalpha.cpp",
	MAME_DIR .. "src/mame/includes/dgnalpha.h",
	MAME_DIR .. "src/mame/video/gime.cpp",
	MAME_DIR .. "src/mame/video/gime.h",
	MAME_DIR .. "src/mame/drivers/lnw80.cpp",
	MAME_DIR .. "src/mame/drivers/max80.cpp",
	MAME_DIR .. "src/mame/drivers/radionic.cpp",
	MAME_DIR .. "src/mame/drivers/trs80.cpp",
	MAME_DIR .. "src/mame/includes/trs80.h",
	MAME_DIR .. "src/mame/machine/trs80.cpp",
	MAME_DIR .. "src/mame/video/trs80.cpp",
	MAME_DIR .. "src/mame/drivers/trs80m2.cpp",
	MAME_DIR .. "src/mame/includes/trs80m2.h",
	MAME_DIR .. "src/mame/machine/trs80m2kb.cpp",
	MAME_DIR .. "src/mame/machine/trs80m2kb.h",
	MAME_DIR .. "src/mame/drivers/trs80m3.cpp",
	MAME_DIR .. "src/mame/includes/trs80m3.h",
	MAME_DIR .. "src/mame/machine/trs80m3.cpp",
	MAME_DIR .. "src/mame/video/trs80m3.cpp",
	MAME_DIR .. "src/mame/drivers/tandy2k.cpp",
	MAME_DIR .. "src/mame/includes/tandy2k.h",
	MAME_DIR .. "src/mame/machine/tandy2kb.cpp",
	MAME_DIR .. "src/mame/machine/tandy2kb.h",
	MAME_DIR .. "src/mame/drivers/vis.cpp",
}

createHBMAMEProjects(_target, _subtarget, "tvgames")
files {
	MAME_DIR .. "src/mame/drivers/elan_ep3a19a.cpp",
	MAME_DIR .. "src/mame/drivers/elan_eu3a14.cpp",
	MAME_DIR .. "src/mame/drivers/elan_eu3a05.cpp",
	MAME_DIR .. "src/mame/audio/elan_eu3a05.cpp",
	MAME_DIR .. "src/mame/audio/elan_eu3a05.h",
	MAME_DIR .. "src/mame/machine/elan_eu3a05gpio.cpp",
	MAME_DIR .. "src/mame/machine/elan_eu3a05gpio.h",
	MAME_DIR .. "src/mame/machine/elan_eu3a05commonsys.cpp",
	MAME_DIR .. "src/mame/machine/elan_eu3a05commonsys.h",
	MAME_DIR .. "src/mame/machine/elan_ep3a19asys.cpp",
	MAME_DIR .. "src/mame/machine/elan_ep3a19asys.h",
	MAME_DIR .. "src/mame/machine/elan_eu3a05sys.cpp",
	MAME_DIR .. "src/mame/machine/elan_eu3a05sys.h",
	MAME_DIR .. "src/mame/machine/elan_eu3a14sys.cpp",
	MAME_DIR .. "src/mame/machine/elan_eu3a14sys.h",
	MAME_DIR .. "src/mame/video/elan_eu3a05commonvid.cpp",
	MAME_DIR .. "src/mame/video/elan_eu3a05commonvid.h",
	MAME_DIR .. "src/mame/video/elan_eu3a05vid.cpp",
	MAME_DIR .. "src/mame/video/elan_eu3a05vid.h",
	MAME_DIR .. "src/mame/video/elan_eu3a14vid.cpp",
	MAME_DIR .. "src/mame/video/elan_eu3a14vid.h",
	MAME_DIR .. "src/mame/drivers/trkfldch.cpp",
	MAME_DIR .. "src/mame/drivers/tvgame.cpp",
	MAME_DIR .. "src/mame/drivers/spg110.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_skannerztv.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_digimake.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_jakks.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_jakks_gkr.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_jakks_sharp.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_jakks_tvtouch.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_zone.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_senca.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_senario.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_senario_poker.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_mysprtch.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_vii.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_wiwi.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_ican.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_playvision.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_shredmjr.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_telestory.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_tvgogo.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_pdc.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_dreamlife.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_lexibook.cpp",
	MAME_DIR .. "src/mame/drivers/spg2xx_smarttv.cpp",
	MAME_DIR .. "src/mame/includes/spg2xx.h",
	MAME_DIR .. "src/mame/drivers/spg29x.cpp",
	MAME_DIR .. "src/mame/machine/hyperscan_card.cpp",
	MAME_DIR .. "src/mame/machine/hyperscan_card.h",
	MAME_DIR .. "src/mame/machine/hyperscan_ctrl.cpp",
	MAME_DIR .. "src/mame/machine/hyperscan_ctrl.h",
	MAME_DIR .. "src/mame/drivers/spg29x_lexibook_jg7425.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_rom.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_romram.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_nand.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_mobigo.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_spi.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl16250_spi_direct.cpp",
	MAME_DIR .. "src/mame/includes/generalplus_gpl16250.h",
	MAME_DIR .. "src/mame/includes/generalplus_gpl16250_romram.h",
	MAME_DIR .. "src/mame/includes/generalplus_gpl16250_nand.h",
	MAME_DIR .. "src/mame/machine/generalplus_gpl16250.cpp",
	MAME_DIR .. "src/mame/machine/generalplus_gpl16250.h",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl32612.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl162xx_lcdtype.cpp",
	MAME_DIR .. "src/mame/drivers/generalplus_gpl_unknown.cpp",
	MAME_DIR .. "src/mame/drivers/xavix.cpp",
	MAME_DIR .. "src/mame/includes/xavix.h",
	MAME_DIR .. "src/mame/drivers/xavix_2000.cpp",
	MAME_DIR .. "src/mame/includes/xavix_2000.h",
	MAME_DIR .. "src/mame/drivers/xavix_2002.cpp",
	MAME_DIR .. "src/mame/includes/xavix_2002.h",
	MAME_DIR .. "src/mame/video/xavix.cpp",
	MAME_DIR .. "src/mame/machine/xavix.cpp",
	MAME_DIR .. "src/mame/audio/xavix.cpp",
	MAME_DIR .. "src/mame/machine/xavix_mtrk_wheel.cpp",
	MAME_DIR .. "src/mame/machine/xavix_mtrk_wheel.h",
	MAME_DIR .. "src/mame/machine/xavix_madfb_ball.cpp",
	MAME_DIR .. "src/mame/machine/xavix_madfb_ball.h",
	MAME_DIR .. "src/mame/machine/xavix_io.cpp",
	MAME_DIR .. "src/mame/machine/xavix_io.h",
	MAME_DIR .. "src/mame/machine/xavix_adc.cpp",
	MAME_DIR .. "src/mame/machine/xavix_adc.h",
	MAME_DIR .. "src/mame/machine/xavix_anport.h",
	MAME_DIR .. "src/mame/machine/xavix_anport.cpp",
	MAME_DIR .. "src/mame/machine/xavix_math.h",
	MAME_DIR .. "src/mame/machine/xavix_math.cpp",
	MAME_DIR .. "src/mame/machine/xavix2002_io.cpp",
	MAME_DIR .. "src/mame/machine/xavix2002_io.h",
	MAME_DIR .. "src/mame/drivers/xavix2.cpp",
	MAME_DIR .. "src/mame/drivers/titan_soc.cpp",
	MAME_DIR .. "src/mame/drivers/st2302u_bbl_rom.cpp",
	MAME_DIR .. "src/mame/drivers/st2302u_bbl_spi.cpp",
	MAME_DIR .. "src/mame/video/bl_handhelds_lcdc.cpp",
	MAME_DIR .. "src/mame/video/bl_handhelds_lcdc.h",
	MAME_DIR .. "src/mame/drivers/actions_atj2279b.cpp",
	MAME_DIR .. "src/mame/drivers/pubint_storyreader.cpp",
	MAME_DIR .. "src/mame/drivers/magiceyes_pollux_vr3520f.cpp",
	MAME_DIR .. "src/mame/drivers/monkey_king_3b.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ultimachine")
files {
	MAME_DIR .. "src/mame/drivers/rambo.cpp",
}

createHBMAMEProjects(_target, _subtarget, "ultratec")
files {
	MAME_DIR .. "src/mame/drivers/minicom.cpp",
}

createHBMAMEProjects(_target, _subtarget, "unicard")
files {
	MAME_DIR .. "src/mame/drivers/bbcbc.cpp",
}

createHBMAMEProjects(_target, _subtarget, "unisonic")
files {
	MAME_DIR .. "src/mame/drivers/unichamp.cpp",
	MAME_DIR .. "src/mame/video/gic.cpp",
	MAME_DIR .. "src/mame/video/gic.h",
}

createHBMAMEProjects(_target, _subtarget, "unisys")
files {
	MAME_DIR .. "src/mame/drivers/univac.cpp",
}

createHBMAMEProjects(_target, _subtarget, "usp")
files {
	MAME_DIR .. "src/mame/drivers/patinho_feio.cpp",
	MAME_DIR .. "src/mame/includes/patinhofeio.h",
}

createHBMAMEProjects(_target, _subtarget, "veb")
files {
	MAME_DIR .. "src/mame/drivers/chessmst.cpp",
	MAME_DIR .. "src/mame/drivers/chessmstdm.cpp",
	MAME_DIR .. "src/mame/drivers/kc.cpp",
	MAME_DIR .. "src/mame/includes/kc.h",
	MAME_DIR .. "src/mame/machine/kc.cpp",
	MAME_DIR .. "src/mame/machine/kc_keyb.cpp",
	MAME_DIR .. "src/mame/machine/kc_keyb.h",
	MAME_DIR .. "src/mame/video/kc.cpp",
	MAME_DIR .. "src/mame/drivers/lc80.cpp",
	MAME_DIR .. "src/mame/drivers/mc8020.cpp",
	MAME_DIR .. "src/mame/drivers/mc8030.cpp",
	MAME_DIR .. "src/mame/drivers/poly880.cpp",
	MAME_DIR .. "src/mame/drivers/sc2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "verifone")
files {
	MAME_DIR .. "src/mame/drivers/tranz330.cpp",
	MAME_DIR .. "src/mame/includes/tranz330.h"
}

createHBMAMEProjects(_target, _subtarget, "vidbrain")
files {
	MAME_DIR .. "src/mame/drivers/vidbrain.cpp",
	MAME_DIR .. "src/mame/includes/vidbrain.h",
	MAME_DIR .. "src/mame/video/uv201.cpp",
	MAME_DIR .. "src/mame/video/uv201.h",
}

createHBMAMEProjects(_target, _subtarget, "videoton")
files {
	MAME_DIR .. "src/mame/drivers/tvc.cpp",
	MAME_DIR .. "src/mame/audio/tvc.cpp",
	MAME_DIR .. "src/mame/audio/tvc.h",
}

createHBMAMEProjects(_target, _subtarget, "visual")
files {
	MAME_DIR .. "src/mame/drivers/v100.cpp",
	MAME_DIR .. "src/mame/drivers/v102.cpp",
	MAME_DIR .. "src/mame/machine/v102_kbd.cpp",
	MAME_DIR .. "src/mame/machine/v102_kbd.h",
	MAME_DIR .. "src/mame/drivers/v550.cpp",
	MAME_DIR .. "src/mame/drivers/v1050.cpp",
	MAME_DIR .. "src/mame/includes/v1050.h",
	MAME_DIR .. "src/mame/machine/v1050kb.cpp",
	MAME_DIR .. "src/mame/machine/v1050kb.h",
	MAME_DIR .. "src/mame/video/v1050.cpp",
}

createHBMAMEProjects(_target, _subtarget, "votrax")
files {
	MAME_DIR .. "src/mame/drivers/votrhv.cpp",
	MAME_DIR .. "src/mame/drivers/votrpss.cpp",
	MAME_DIR .. "src/mame/drivers/votrtnt.cpp",
}

createHBMAMEProjects(_target, _subtarget, "vtech")
files {
	MAME_DIR .. "src/mame/drivers/clickstart.cpp",
	MAME_DIR .. "src/mame/drivers/crvision.cpp",
	MAME_DIR .. "src/mame/includes/crvision.h",
	MAME_DIR .. "src/mame/drivers/gamemachine.cpp",
	MAME_DIR .. "src/mame/audio/nl_gamemachine.cpp",
	MAME_DIR .. "src/mame/audio/nl_gamemachine.h",
	MAME_DIR .. "src/mame/drivers/geniusiq.cpp",
	MAME_DIR .. "src/mame/drivers/geniusjr.cpp",
	MAME_DIR .. "src/mame/drivers/gkidabc.cpp",
	MAME_DIR .. "src/mame/drivers/glcx.cpp",
	MAME_DIR .. "src/mame/drivers/innotv_innotabmax.cpp",
	MAME_DIR .. "src/mame/drivers/inteladv.cpp",
	MAME_DIR .. "src/mame/drivers/iqunlim.cpp",
	MAME_DIR .. "src/mame/drivers/laser3k.cpp",
	MAME_DIR .. "src/mame/drivers/lcmate2.cpp",
	MAME_DIR .. "src/mame/drivers/pc2000.cpp",
	MAME_DIR .. "src/mame/drivers/pc4.cpp",
	MAME_DIR .. "src/mame/includes/pc4.h",
	MAME_DIR .. "src/mame/video/pc4.cpp",
	MAME_DIR .. "src/mame/drivers/prestige.cpp",
	MAME_DIR .. "src/mame/drivers/socrates.cpp",
	MAME_DIR .. "src/mame/audio/socrates.cpp",
	MAME_DIR .. "src/mame/audio/socrates.h",
	MAME_DIR .. "src/mame/drivers/storio.cpp",
	MAME_DIR .. "src/mame/drivers/vsmile.cpp",
	MAME_DIR .. "src/mame/includes/vsmile.h",
	MAME_DIR .. "src/mame/drivers/vsmileb.cpp",
	MAME_DIR .. "src/mame/drivers/vtech1.cpp",
	MAME_DIR .. "src/mame/drivers/vtech2.cpp",
	MAME_DIR .. "src/mame/includes/vtech2.h",
	MAME_DIR .. "src/mame/video/vtech2.cpp",
	MAME_DIR .. "src/mame/machine/vtech2.cpp",
	MAME_DIR .. "src/mame/drivers/vtech_eu3a12.cpp",
	MAME_DIR .. "src/mame/drivers/vtech_innotab.cpp",
}

createHBMAMEProjects(_target, _subtarget, "wang")
files {
	MAME_DIR .. "src/mame/drivers/wangpc.cpp",
	MAME_DIR .. "src/devices/bus/wangpc/wangpc.h",
	MAME_DIR .. "src/mame/machine/wangpckb.cpp",
	MAME_DIR .. "src/mame/machine/wangpckb.h",
}

createHBMAMEProjects(_target, _subtarget, "westinghouse")
files {
	MAME_DIR .. "src/mame/drivers/testconsole.cpp",
}

createHBMAMEProjects(_target, _subtarget, "wavemate")
files {
	MAME_DIR .. "src/mame/drivers/bullet.cpp",
	MAME_DIR .. "src/mame/includes/bullet.h",
	MAME_DIR .. "src/mame/drivers/jupiter.cpp",
}

createHBMAMEProjects(_target, _subtarget, "wyse")
files {
	MAME_DIR .. "src/mame/drivers/wy100.cpp",
	MAME_DIR .. "src/mame/drivers/wy150.cpp",
	MAME_DIR .. "src/mame/drivers/wy30p.cpp",
	MAME_DIR .. "src/mame/drivers/wy50.cpp",
	MAME_DIR .. "src/mame/drivers/wy55.cpp",
	MAME_DIR .. "src/mame/drivers/wy60.cpp",
	MAME_DIR .. "src/mame/drivers/wy85.cpp",
	MAME_DIR .. "src/mame/machine/wy50kb.cpp",
	MAME_DIR .. "src/mame/machine/wy50kb.h",
}

createHBMAMEProjects(_target, _subtarget, "xerox")
files {
	MAME_DIR .. "src/mame/drivers/xerox820.cpp",
	MAME_DIR .. "src/mame/includes/xerox820.h",
	MAME_DIR .. "src/mame/machine/x820kb.cpp",
	MAME_DIR .. "src/mame/machine/x820kb.h",
	MAME_DIR .. "src/mame/drivers/bigbord2.cpp",
	MAME_DIR .. "src/mame/drivers/alto1.cpp",
	MAME_DIR .. "src/mame/drivers/alto2.cpp",
}

createHBMAMEProjects(_target, _subtarget, "xussrpc")
files {
	MAME_DIR .. "src/mame/drivers/ec184x.cpp",
	MAME_DIR .. "src/mame/drivers/iskr103x.cpp",
	MAME_DIR .. "src/mame/drivers/mc1502.cpp",
	MAME_DIR .. "src/mame/machine/kb_7007_3.h",
	MAME_DIR .. "src/mame/includes/mc1502.h",
	MAME_DIR .. "src/mame/drivers/poisk1.cpp",
	MAME_DIR .. "src/mame/machine/kb_poisk1.h",
}

createHBMAMEProjects(_target, _subtarget, "yamaha")
files {
	MAME_DIR .. "src/mame/machine/mulcd.cpp",
	MAME_DIR .. "src/mame/drivers/yman1x.cpp",
	MAME_DIR .. "src/mame/drivers/ymdx100.cpp",
	MAME_DIR .. "src/mame/drivers/ymdx11.cpp",
	MAME_DIR .. "src/mame/drivers/ymmu5.cpp",
	MAME_DIR .. "src/mame/drivers/ymmu50.cpp",
	MAME_DIR .. "src/mame/drivers/ymmu80.cpp",
	MAME_DIR .. "src/mame/drivers/ymmu100.cpp",
	MAME_DIR .. "src/mame/drivers/ympsr16.cpp",
	MAME_DIR .. "src/mame/drivers/ympsr40.cpp",
	MAME_DIR .. "src/mame/drivers/ympsr60.cpp",
	MAME_DIR .. "src/mame/drivers/ympsr340.cpp",
	MAME_DIR .. "src/mame/drivers/ymsy35.cpp",
	MAME_DIR .. "src/mame/drivers/ymtx81z.cpp",
	MAME_DIR .. "src/mame/drivers/ymvl70.cpp",
	MAME_DIR .. "src/mame/drivers/fb01.cpp",
	MAME_DIR .. "src/mame/drivers/tg100.cpp",
}

createHBMAMEProjects(_target, _subtarget, "zenith")
files {
	MAME_DIR .. "src/mame/drivers/mdt60.cpp",
	MAME_DIR .. "src/mame/drivers/z100.cpp",
	MAME_DIR .. "src/mame/drivers/z22.cpp",
	MAME_DIR .. "src/mame/drivers/z29.cpp",
}

createHBMAMEProjects(_target, _subtarget, "zpa")
files {
	MAME_DIR .. "src/mame/drivers/iq151.cpp",
}

createHBMAMEProjects(_target, _subtarget, "zvt")
files {
	MAME_DIR .. "src/mame/drivers/pp01.cpp",
	MAME_DIR .. "src/mame/includes/pp01.h",
	MAME_DIR .. "src/mame/machine/pp01.cpp",
	MAME_DIR .. "src/mame/video/pp01.cpp",
}

createHBMAMEProjects(_target, _subtarget, "skeleton")
files {
	MAME_DIR .. "src/mame/drivers/aaa.cpp",
	MAME_DIR .. "src/mame/drivers/acd.cpp",
	MAME_DIR .. "src/mame/drivers/aceex.cpp",
	MAME_DIR .. "src/mame/drivers/adacp150.cpp",
	MAME_DIR .. "src/mame/drivers/aid80f.cpp",
	MAME_DIR .. "src/mame/drivers/alcat7100.cpp",
	MAME_DIR .. "src/mame/drivers/alesis_qs.cpp",
	MAME_DIR .. "src/mame/drivers/alfaskop41xx.cpp",
	MAME_DIR .. "src/mame/drivers/alphasma.cpp",
	MAME_DIR .. "src/mame/drivers/alphasma3k.cpp",
	MAME_DIR .. "src/mame/drivers/am1000.cpp",
	MAME_DIR .. "src/mame/drivers/ampex.cpp",
	MAME_DIR .. "src/mame/drivers/ampex210.cpp",
	MAME_DIR .. "src/mame/machine/ampex210_kbd.cpp",
	MAME_DIR .. "src/mame/machine/ampex210_kbd.h",
	MAME_DIR .. "src/mame/drivers/ampscarp.cpp",
	MAME_DIR .. "src/mame/drivers/amust.cpp",
	MAME_DIR .. "src/mame/drivers/anzterm.cpp",
	MAME_DIR .. "src/mame/drivers/applix.cpp",
	MAME_DIR .. "src/mame/drivers/argox.cpp",
	MAME_DIR .. "src/mame/drivers/attache.cpp",
	MAME_DIR .. "src/mame/drivers/aussiebyte.cpp",
	MAME_DIR .. "src/mame/includes/aussiebyte.h",
	MAME_DIR .. "src/mame/video/aussiebyte.cpp",
	MAME_DIR .. "src/mame/drivers/ax20.cpp",
	MAME_DIR .. "src/mame/drivers/basf7100.cpp",
	MAME_DIR .. "src/mame/machine/basf7100_kbd.cpp",
	MAME_DIR .. "src/mame/machine/basf7100_kbd.h",
	MAME_DIR .. "src/mame/drivers/binbug.cpp",
	MAME_DIR .. "src/mame/drivers/bert.cpp",
	MAME_DIR .. "src/mame/drivers/besta.cpp",
	MAME_DIR .. "src/mame/drivers/bitgraph.cpp",
	MAME_DIR .. "src/mame/drivers/blit.cpp",
	MAME_DIR .. "src/mame/drivers/bpmmicro.cpp",
	MAME_DIR .. "src/mame/drivers/blw700i.cpp",
	MAME_DIR .. "src/mame/drivers/br8641.cpp",
	MAME_DIR .. "src/mame/drivers/busicom.cpp",
	MAME_DIR .. "src/mame/includes/busicom.h",
	MAME_DIR .. "src/mame/video/busicom.cpp",
	MAME_DIR .. "src/mame/drivers/c2color.cpp",
	MAME_DIR .. "src/mame/drivers/candela.cpp",
	MAME_DIR .. "src/mame/drivers/cardinal.cpp",
	MAME_DIR .. "src/mame/drivers/cbnt2039.cpp",
	MAME_DIR .. "src/mame/drivers/cdsys5.cpp",
	MAME_DIR .. "src/mame/drivers/chaos.cpp",
	MAME_DIR .. "src/mame/drivers/cd100.cpp",
	MAME_DIR .. "src/mame/drivers/cd2650.cpp",
	MAME_DIR .. "src/mame/drivers/cdc721.cpp",
	MAME_DIR .. "src/mame/drivers/cit1500.cpp",
	MAME_DIR .. "src/mame/drivers/clxvme186.cpp",
	MAME_DIR .. "src/mame/drivers/codata.cpp",
	MAME_DIR .. "src/mame/drivers/consola_emt.cpp",
	MAME_DIR .. "src/mame/drivers/controlid.cpp",
	MAME_DIR .. "src/mame/drivers/cortex.cpp",
	MAME_DIR .. "src/mame/drivers/cosmicos.cpp",
	MAME_DIR .. "src/mame/includes/cosmicos.h",
	MAME_DIR .. "src/mame/drivers/cp1.cpp",
	MAME_DIR .. "src/mame/drivers/cxhumax.cpp",
	MAME_DIR .. "src/mame/includes/cxhumax.h",
	MAME_DIR .. "src/mame/drivers/ckz80.cpp",
	MAME_DIR .. "src/mame/drivers/d400.cpp",
	MAME_DIR .. "src/mame/drivers/d6800.cpp",
	MAME_DIR .. "src/mame/drivers/d6809.cpp",
	MAME_DIR .. "src/mame/drivers/daruma.cpp",
	MAME_DIR .. "src/mame/drivers/datacast.cpp",
	MAME_DIR .. "src/mame/drivers/design.cpp",
	MAME_DIR .. "src/mame/drivers/dg680.cpp",
	MAME_DIR .. "src/mame/drivers/diablo1300.cpp",
	MAME_DIR .. "src/mame/drivers/didact.cpp",
	MAME_DIR .. "src/mame/drivers/digel804.cpp",
	MAME_DIR .. "src/mame/drivers/digijet.cpp",
	MAME_DIR .. "src/mame/drivers/dim68k.cpp",
	MAME_DIR .. "src/mame/drivers/dm7000.cpp",
	MAME_DIR .. "src/mame/includes/dm7000.h",
	MAME_DIR .. "src/mame/drivers/dmax8000.cpp",
	MAME_DIR .. "src/mame/drivers/dmv.cpp",
	MAME_DIR .. "src/mame/machine/dmv_keyb.cpp",
	MAME_DIR .. "src/mame/machine/dmv_keyb.h",
	MAME_DIR .. "src/mame/drivers/dps1.cpp",
	MAME_DIR .. "src/mame/drivers/dsb46.cpp",
	MAME_DIR .. "src/mame/drivers/dual68.cpp",
	MAME_DIR .. "src/mame/drivers/e100.cpp",
	MAME_DIR .. "src/mame/drivers/eacc.cpp",
	MAME_DIR .. "src/mame/drivers/easy_karaoke.cpp",
	MAME_DIR .. "src/mame/drivers/elwro800.cpp",
	MAME_DIR .. "src/mame/drivers/elzet80.cpp",
	MAME_DIR .. "src/mame/drivers/epic14e.cpp",
	MAME_DIR .. "src/mame/drivers/esprit.cpp",
	MAME_DIR .. "src/mame/drivers/eti660.cpp",
	MAME_DIR .. "src/mame/drivers/eurit.cpp",
	MAME_DIR .. "src/mame/drivers/eurocom2.cpp",
	MAME_DIR .. "src/mame/drivers/excali64.cpp",
	MAME_DIR .. "src/mame/drivers/facit4440.cpp",
	MAME_DIR .. "src/mame/drivers/falco5220.cpp",
	MAME_DIR .. "src/mame/drivers/falcots.cpp",
	MAME_DIR .. "src/mame/drivers/fanucs15.cpp",
	MAME_DIR .. "src/mame/drivers/fanucspmg.cpp",
	MAME_DIR .. "src/mame/drivers/fc100.cpp",
	MAME_DIR .. "src/mame/drivers/fk1.cpp",
	MAME_DIR .. "src/mame/drivers/fs3216.cpp",
	MAME_DIR .. "src/mame/drivers/ft68m.cpp",
	MAME_DIR .. "src/mame/drivers/gameking.cpp",
	MAME_DIR .. "src/mame/drivers/gem_rp.cpp",
	MAME_DIR .. "src/mame/drivers/gigatron.cpp",
	MAME_DIR .. "src/mame/drivers/gimix.cpp",
	MAME_DIR .. "src/mame/drivers/gm1000.cpp",
	MAME_DIR .. "src/mame/drivers/gnat10.cpp",
	MAME_DIR .. "src/mame/drivers/goupil.cpp",
	MAME_DIR .. "src/mame/drivers/grfd2301.cpp",
	MAME_DIR .. "src/mame/drivers/hazeltin.cpp",
	MAME_DIR .. "src/mame/drivers/hazl1420.cpp",
	MAME_DIR .. "src/mame/drivers/hohnadam.cpp",
	MAME_DIR .. "src/mame/drivers/hp3478a.cpp",
	MAME_DIR .. "src/mame/drivers/hprot1.cpp",
	MAME_DIR .. "src/mame/drivers/hpz80unk.cpp",
	MAME_DIR .. "src/mame/drivers/ht68k.cpp",
	MAME_DIR .. "src/mame/drivers/i7000.cpp",
	MAME_DIR .. "src/mame/drivers/ibm3153.cpp",
	MAME_DIR .. "src/mame/drivers/icatel.cpp",
	MAME_DIR .. "src/mame/drivers/icebox.cpp",
	MAME_DIR .. "src/mame/drivers/iez80.cpp",
	MAME_DIR .. "src/mame/drivers/if800.cpp",
	MAME_DIR .. "src/mame/drivers/ikt5a.cpp",
	MAME_DIR .. "src/mame/drivers/imsai.cpp",
	MAME_DIR .. "src/mame/drivers/indiana.cpp",
	MAME_DIR .. "src/mame/drivers/is48x.cpp",
	MAME_DIR .. "src/mame/drivers/itc4.cpp",
	MAME_DIR .. "src/mame/drivers/itt1700.cpp",
	MAME_DIR .. "src/mame/machine/itt1700_kbd.cpp",
	MAME_DIR .. "src/mame/machine/itt1700_kbd.h",
	MAME_DIR .. "src/mame/drivers/itt3030.cpp",
	MAME_DIR .. "src/mame/drivers/itt9216.cpp",
	MAME_DIR .. "src/mame/drivers/jade.cpp",
	MAME_DIR .. "src/mame/drivers/jonos.cpp",
	MAME_DIR .. "src/mame/drivers/juku.cpp",
	MAME_DIR .. "src/mame/drivers/junior80.cpp",
	MAME_DIR .. "src/mame/drivers/krokha.cpp",
	MAME_DIR .. "src/mame/drivers/kron.cpp",
	MAME_DIR .. "src/mame/drivers/lee1214.cpp",
	MAME_DIR .. "src/mame/drivers/lee1220.cpp",
	MAME_DIR .. "src/mame/drivers/learnwin.cpp",
	MAME_DIR .. "src/mame/drivers/lft.cpp",
	MAME_DIR .. "src/mame/drivers/lg-dvd.cpp",
	MAME_DIR .. "src/mame/drivers/lk3000.cpp",
	MAME_DIR .. "src/mame/drivers/lms46.cpp",
	MAME_DIR .. "src/mame/drivers/lola8a.cpp",
	MAME_DIR .. "src/mame/drivers/lilith.cpp",
	MAME_DIR .. "src/mame/drivers/mccpm.cpp",
	MAME_DIR .. "src/mame/drivers/mes.cpp",
	MAME_DIR .. "src/mame/drivers/mfabfz.cpp",
	MAME_DIR .. "src/mame/drivers/mice.cpp",
	MAME_DIR .. "src/mame/drivers/micral.cpp",
	MAME_DIR .. "src/mame/drivers/micro20.cpp",
	MAME_DIR .. "src/mame/drivers/micromon.cpp",
	MAME_DIR .. "src/mame/drivers/micronic.cpp",
	MAME_DIR .. "src/mame/includes/micronic.h",
	MAME_DIR .. "src/mame/drivers/mightyframe.cpp",
	MAME_DIR .. "src/mame/drivers/milwaukee.cpp",
	MAME_DIR .. "src/mame/drivers/mini2440.cpp",
	MAME_DIR .. "src/mame/drivers/miniframe.cpp",
	MAME_DIR .. "src/mame/drivers/minitel_2_rpic.cpp",
	MAME_DIR .. "src/mame/drivers/miuchiz.cpp",
	MAME_DIR .. "src/mame/drivers/ml20.cpp",
	MAME_DIR .. "src/mame/drivers/mmd1.cpp",
	MAME_DIR .. "src/mame/drivers/mmd2.cpp",
	MAME_DIR .. "src/mame/drivers/mod8.cpp",
	MAME_DIR .. "src/mame/drivers/modellot.cpp",
	MAME_DIR .. "src/mame/drivers/molecular.cpp",
	MAME_DIR .. "src/mame/drivers/monon_color.cpp",
	MAME_DIR .. "src/mame/drivers/ms0515.cpp",
	MAME_DIR .. "src/mame/drivers/ms9540.cpp",
	MAME_DIR .. "src/mame/drivers/mstation.cpp",
	MAME_DIR .. "src/mame/drivers/mt735.cpp",
	MAME_DIR .. "src/mame/drivers/mtd1256.cpp",
	MAME_DIR .. "src/mame/drivers/mx2178.cpp",
	MAME_DIR .. "src/mame/drivers/mycom.cpp",
	MAME_DIR .. "src/mame/drivers/myvision.cpp",
	MAME_DIR .. "src/mame/drivers/newton.cpp",
	MAME_DIR .. "src/mame/machine/nl_hazelvid.cpp",
	MAME_DIR .. "src/mame/machine/nl_hazelvid.h",
	MAME_DIR .. "src/mame/drivers/notetaker.cpp",
	MAME_DIR .. "src/mame/drivers/ngen.cpp",
	MAME_DIR .. "src/mame/machine/ngen_kb.cpp",
	MAME_DIR .. "src/mame/machine/ngen_kb.h",
	MAME_DIR .. "src/mame/drivers/onyx.cpp",
	MAME_DIR .. "src/mame/drivers/p8k.cpp",
	MAME_DIR .. "src/mame/drivers/pdt3100.cpp",
	MAME_DIR .. "src/mame/drivers/pegasus.cpp",
	MAME_DIR .. "src/mame/drivers/pencil2.cpp",
	MAME_DIR .. "src/mame/drivers/perq.cpp",
	MAME_DIR .. "src/mame/drivers/pes.cpp",
	MAME_DIR .. "src/mame/drivers/picno.cpp",
	MAME_DIR .. "src/mame/drivers/pipbug.cpp",
	MAME_DIR .. "src/mame/drivers/plan80.cpp",
	MAME_DIR .. "src/mame/drivers/pm68k.cpp",
	MAME_DIR .. "src/mame/drivers/pockchal.cpp",
	MAME_DIR .. "src/mame/drivers/powerstack.cpp",
	MAME_DIR .. "src/mame/drivers/proteus3.cpp",
	MAME_DIR .. "src/mame/drivers/pt68k4.cpp",
	MAME_DIR .. "src/mame/drivers/ptcsol.cpp",
	MAME_DIR .. "src/mame/drivers/pulsar.cpp",
	MAME_DIR .. "src/mame/drivers/pv9234.cpp",
	MAME_DIR .. "src/mame/drivers/pwp14.cpp",
	MAME_DIR .. "src/mame/drivers/qtsbc.cpp",
	MAME_DIR .. "src/mame/drivers/rd100.cpp",
	MAME_DIR .. "src/mame/drivers/rvoice.cpp",
	MAME_DIR .. "src/mame/drivers/sacstate.cpp",
	MAME_DIR .. "src/mame/drivers/sartorius.cpp",
	MAME_DIR .. "src/mame/drivers/sb8085.cpp",
	MAME_DIR .. "src/mame/drivers/sbrain.cpp",
	MAME_DIR .. "src/mame/drivers/seattlecmp.cpp",
	MAME_DIR .. "src/mame/drivers/sh4robot.cpp",
	MAME_DIR .. "src/mame/drivers/sansa_fuze.cpp",
	MAME_DIR .. "src/mame/drivers/scopus.cpp",
	MAME_DIR .. "src/mame/drivers/shine.cpp",
	MAME_DIR .. "src/mame/drivers/si5500.cpp",
	MAME_DIR .. "src/mame/drivers/sk101bl.cpp",
	MAME_DIR .. "src/mame/drivers/slsstars.cpp",
	MAME_DIR .. "src/mame/drivers/softbox.cpp",
	MAME_DIR .. "src/mame/includes/softbox.h",
	MAME_DIR .. "src/mame/drivers/squale.cpp",
	MAME_DIR .. "src/mame/drivers/solbourne.cpp",
	MAME_DIR .. "src/mame/drivers/swyft.cpp",
	MAME_DIR .. "src/mame/drivers/symbolics.cpp",
	MAME_DIR .. "src/mame/drivers/synthex.cpp",
	MAME_DIR .. "src/mame/drivers/sys2900.cpp",
	MAME_DIR .. "src/mame/drivers/sys9002.cpp",
	MAME_DIR .. "src/mame/drivers/systec.cpp",
	MAME_DIR .. "src/mame/drivers/systel1.cpp",
	MAME_DIR .. "src/mame/drivers/tavernie.cpp",
	MAME_DIR .. "src/mame/drivers/tecnbras.cpp",
	MAME_DIR .. "src/mame/drivers/teleray10.cpp",
	MAME_DIR .. "src/mame/drivers/telex1192.cpp",
	MAME_DIR .. "src/mame/drivers/telex274.cpp",
	MAME_DIR .. "src/mame/drivers/telex277d.cpp",
	MAME_DIR .. "src/mame/drivers/terak.cpp",
	MAME_DIR .. "src/mame/drivers/terco.cpp",
	MAME_DIR .. "src/mame/drivers/terminal.cpp",
	MAME_DIR .. "src/mame/drivers/textelcomp.cpp",
	MAME_DIR .. "src/mame/drivers/ti630.cpp",
	MAME_DIR .. "src/mame/drivers/tk635.cpp",
	MAME_DIR .. "src/mame/drivers/tr175.cpp",
	MAME_DIR .. "src/mame/drivers/trs80dt1.cpp",
	MAME_DIR .. "src/mame/drivers/tsispch.cpp",
	MAME_DIR .. "src/mame/drivers/tulip1.cpp",
	MAME_DIR .. "src/mame/drivers/unistar.cpp",
	MAME_DIR .. "src/mame/drivers/v6809.cpp",
	MAME_DIR .. "src/mame/drivers/vanguardmk1.cpp",
	MAME_DIR .. "src/mame/drivers/vd56sp.cpp",
	MAME_DIR .. "src/mame/drivers/vector4.cpp",
	MAME_DIR .. "src/mame/drivers/vectrix.cpp",
	MAME_DIR .. "src/mame/drivers/vp60.cpp",
	MAME_DIR .. "src/mame/includes/vp415.h",
	MAME_DIR .. "src/mame/drivers/vp415.cpp",
	MAME_DIR .. "src/mame/drivers/vsmilepro.cpp",
	MAME_DIR .. "src/mame/drivers/wicat.cpp",
	MAME_DIR .. "src/mame/drivers/xbase09.cpp",
	MAME_DIR .. "src/mame/drivers/xor100.cpp",
	MAME_DIR .. "src/mame/includes/xor100.h",
	MAME_DIR .. "src/mame/drivers/zms8085.cpp",
	MAME_DIR .. "src/mame/drivers/zorba.cpp",
	MAME_DIR .. "src/mame/includes/zorba.h",
	MAME_DIR .. "src/mame/machine/zorbakbd.cpp",
	MAME_DIR .. "src/mame/machine/zorbakbd.h",
	MAME_DIR .. "src/mame/drivers/zt8802.cpp",
	MAME_DIR .. "src/mame/drivers/testpat.cpp",
	MAME_DIR .. "src/mame/machine/nl_tp1983.cpp",
	MAME_DIR .. "src/mame/machine/nl_tp1985.cpp",
	MAME_DIR .. "src/mame/drivers/palestra.cpp",
	MAME_DIR .. "src/mame/machine/nl_palestra.cpp",
	MAME_DIR .. "src/mame/drivers/philipsbo.cpp",
	MAME_DIR .. "src/mame/drivers/mindset.cpp",
	MAME_DIR .. "src/mame/drivers/gs6502.cpp",
	MAME_DIR .. "src/mame/drivers/gs6809.cpp",
	MAME_DIR .. "src/mame/drivers/gscpm.cpp",
	MAME_DIR .. "src/mame/drivers/gsz80.cpp",
	MAME_DIR .. "src/mame/drivers/ultim809.cpp",
	MAME_DIR .. "src/mame/drivers/zeebo_qualcomm_adreno130.cpp",
}

end
