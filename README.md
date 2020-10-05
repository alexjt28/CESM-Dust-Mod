# CESM-Dust-Mod
Instructions for modifying CESM to allow dust mobilization regardless of vegetation

Read "1.Instructions" first to understand the process 

Use "add_tlai_tsai_dust_variable_to_netcdf.ncl" for Step X of Instructions (NOTE: pgridcell.dat may not be compatible with your model's version, you may need to make your own version of this file)

Use "clmtype.F90", "clmtypeInitMod.F90", "histFlds.F90", and "DUSTMod.F90" for Step X of Instructions. These are the files that are placed in "SourceMods/src.clm" within your case directory.


