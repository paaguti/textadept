-- Copyright 2020-2024 Mitchell. See LICENSE.

--- Load localizations from *locale_conf* and return them in a table.
-- @param locale_conf String path to a local file to load.
-- @return locale map
local function load_locale(locale_conf)
	local L = {}
	for line in io.lines(locale_conf) do
		if not line:find('^%s*[^%w_%[]') then
			local id, str = line:match('^(.-)%s*=%s*(.+)$')
			if id and str and assert(not L[id], 'duplicate locale id "%s"', id) then L[id] = str end
		end
	end
	return L
end

--- Looks for use of localization in the given Lua file and returns a list of missing IDs.
-- @param filename String filename of the Lua file to check.
-- @param L Table of localizations to read from.
-- @return list of missing locale IDs
local function check_missing_localizations(filename, L)
	local missing = {}
	local count = 0
	for line in io.lines(filename) do
		for id in line:gmatch([=[_L%[['"]([^'"]+)['"]%]]=]) do
			if not L[id] then missing[#missing + 1] = id end
			count = count + 1
		end
	end
	if count > 0 then test.log(string.format('Checked %d localizations.', count)) end
	return missing
end

local L = load_locale(_HOME .. '/core/locale.conf')

-- Test each of the locale.conf files.
for locale_conf in lfs.walk(_HOME .. '/core/locales') do
	test(locale_conf:match('[^/\\]+$') .. ' should have the same locale IDs as locale.conf',
		function()
			local missing = {}
			local extra = {}

			local l = load_locale(locale_conf)
			for id in pairs(L) do if not l[id] then missing[#missing + 1] = id end end
			for id in pairs(l) do if not L[id] then extra[#extra + 1] = id end end

			test.assert_equal(missing, {})
			test.assert_equal(extra, {})
		end)
end

local core_files = {}
local ta_dirs = {'core', 'modules/textadept'}
for _, dir in ipairs(ta_dirs) do
	dir = _HOME .. '/' .. dir
	for filename in lfs.walk(dir, '.lua') do core_files[#core_files + 1] = filename end
end
core_files[#core_files + 1] = _HOME .. '/init.lua'
table.sort(core_files)

-- Test each core module.
for _, core_file in ipairs(core_files) do
	test(core_file:sub(#_HOME + 2) .. ' should be using known locale IDs', function()
		local missing = check_missing_localizations(core_file, L)

		test.assert_equal(missing, {})
	end)
end

-- Records localization assignments in the given Lua file for use in subsequent checks.
-- @param L Table of localizations to add to.
local function load_extra_localizations(filename, L)
	local count = 0
	for line in io.lines(filename) do
		if line:find('_L%b[]%s*=') then
			for id in line:gmatch([=[_L%[['"]([^'"]+)['"]%]%s*=]=]) do
				assert(not L[id], 'duplicate locale id "%s"', id)
				L[id], count = true, count + 1
			end
		end
	end
	if count > 0 then test.log(string.format('Added %d localizations.', count)) end
end

local extra_files = {}
local filter = {
	'.lua', '!/modules/textadept', '!/build', '!dkjson.lua', '!mobdebug.lua', '!socket.lua',
	'!/lsp/ldoc', '!/lsp/logging', '!/lsp/pl'
}
for filename in lfs.walk(_HOME .. '/modules', filter) do
	extra_files[#extra_files + 1] = filename
end
table.sort(extra_files)

-- Test each extra module.
for _, extra_file in ipairs(extra_files) do
	test(extra_file:sub(#_HOME + 2) .. ' should be using known locale IDs', function()
		load_extra_localizations(extra_file, L)

		local missing = check_missing_localizations(extra_file, L)

		test.assert_equal(missing, {})
	end)
end
