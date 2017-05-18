local gm_cl_files = file.Find('br_sndsystem/client/*.lua', 'LUA'); 
for k, v in pairs(gm_cl_files) do
	if (SERVER) then
		AddCSLuaFile('br_sndsystem/client/'..v);
	else
		include('br_sndsystem/client/'..v);
	end
end