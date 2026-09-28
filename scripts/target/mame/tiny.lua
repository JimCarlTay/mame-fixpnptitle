-- license:BSD-3-Clause
-- copyright-holders:MAMEdev Team

---------------------------------------------------------------------------
--
--   tiny.lua
--
--   Small driver-specific example makefile
--   Use make SUBTARGET=tiny to build
--
---------------------------------------------------------------------------


--------------------------------------------------
-- Specify all the CPU cores necessary for the
-- drivers referenced in tiny.lst.
--------------------------------------------------

CPUS["SH7709S"] = true

--------------------------------------------------
-- Specify all the sound cores necessary for the
-- drivers referenced in tiny.lst.
--------------------------------------------------

SOUNDS["YMZ770"] = true

--------------------------------------------------
-- specify available video cores
--------------------------------------------------



--------------------------------------------------
-- specify available machine cores
--------------------------------------------------

MACHINES["NANDFLASH"] = true
MACHINES["RTC9701"] = true

--------------------------------------------------
-- specify available bus cores
--------------------------------------------------



--------------------------------------------------
-- This is the list of files that are necessary
-- for building all of the drivers referenced
-- in tiny.lst
--------------------------------------------------

function createProjects_mame_tiny(_target, _subtarget)
	project ("mame_tiny")
	targetsubdir(_target .."_" .. _subtarget)
	kind (LIBTYPE)
	uuid (os.uuid("drv-mame-tiny"))
	addprojectflags()
	precompiledheaders_novs()

	includedirs {
		MAME_DIR .. "src/osd",
		MAME_DIR .. "src/emu",
		MAME_DIR .. "src/devices",
		MAME_DIR .. "src/mame/shared",
		MAME_DIR .. "src/lib",
		MAME_DIR .. "src/lib/util",
		MAME_DIR .. "3rdparty",
		GEN_DIR  .. "mame/layout",
	}

files{
	MAME_DIR .. "src/mame/cave/cv1k_v_blit0.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit1.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit2.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit3.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit4.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit5.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit6.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit7.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_blit8.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_in.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v_pixel.cpp",
	MAME_DIR .. "src/mame/cave/cv1k_v.cpp",
	MAME_DIR .. "src/mame/cave/cv1k.cpp",
}
end

function linkProjects_mame_tiny(_target, _subtarget)
	links {
		"mame_tiny",
	}
end
