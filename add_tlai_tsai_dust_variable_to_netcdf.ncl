begin

;--------------------------
; Read in files
;--------------------------

case1_01_filepath = "[INSERT JAN FILE PATH FOR CASE1]"
case1_02_filepath = "[INSERT FEB FILE PATH FOR CASE1]"
case1_03_filepath = "[INSERT MAR FILE PATH FOR CASE1]"
case1_04_filepath = "[INSERT APR FILE PATH FOR CASE1]"
case1_05_filepath = "[INSERT MAY FILE PATH FOR CASE1]"
case1_06_filepath = "[INSERT JUN FILE PATH FOR CASE1]"
case1_07_filepath = "[INSERT JUL FILE PATH FOR CASE1]"
case1_08_filepath = "[INSERT AUG FILE PATH FOR CASE1]"
case1_09_filepath = "[INSERT SEP FILE PATH FOR CASE1]"
case1_10_filepath = "[INSERT OCT FILE PATH FOR CASE1]"
case1_11_filepath = "[INSERT NOV FILE PATH FOR CASE1]"
case1_12_filepath = "[INSERT DEC FILE PATH FOR CASE1]"

case2_01_filepath = "[INSERT JAN FILE PATH FOR CASE2]" 
case2_02_filepath = "[INSERT FEB FILE PATH FOR CASE2]"
case2_03_filepath = "[INSERT MAR FILE PATH FOR CASE2]"
case2_04_filepath = "[INSERT APR FILE PATH FOR CASE2]"
case2_05_filepath = "[INSERT MAY FILE PATH FOR CASE2]"
case2_06_filepath = "[INSERT JUN FILE PATH FOR CASE2]"
case2_07_filepath = "[INSERT JUL FILE PATH FOR CASE2]"
case2_08_filepath = "[INSERT AUG FILE PATH FOR CASE2]"
case2_09_filepath = "[INSERT SEP FILE PATH FOR CASE2]"
case2_10_filepath = "[INSERT OCT FILE PATH FOR CASE2]"
case2_11_filepath = "[INSERT NOV FILE PATH FOR CASE2]"
case2_12_filepath = "[INSERT DEC FILE PATH FOR CASE2]"

in_case1_01 = addfile(case1_01_filepath,"w")
in_case1_02 = addfile(case1_02_filepath,"w")
in_case1_03 = addfile(case1_03_filepath,"w")
in_case1_04 = addfile(case1_04_filepath,"w")
in_case1_05 = addfile(case1_05_filepath,"w")
in_case1_06 = addfile(case1_06_filepath,"w")
in_case1_07 = addfile(case1_07_filepath,"w")
in_case1_08 = addfile(case1_08_filepath,"w")
in_case1_09 = addfile(case1_09_filepath,"w")
in_case1_10 = addfile(case1_10_filepath,"w")
in_case1_11 = addfile(case1_11_filepath,"w")
in_case1_12 = addfile(case1_12_filepath,"w")

in_case2_01 = addfile(case2_01_filepath,"r")
in_case2_02 = addfile(case2_02_filepath,"r")
in_case2_03 = addfile(case2_03_filepath,"r")
in_case2_04 = addfile(case2_04_filepath,"r")
in_case2_05 = addfile(case2_05_filepath,"r")
in_case2_06 = addfile(case2_06_filepath,"r")
in_case2_07 = addfile(case2_07_filepath,"r")
in_case2_08 = addfile(case2_08_filepath,"r")
in_case2_09 = addfile(case2_09_filepath,"r")
in_case2_10 = addfile(case2_10_filepath,"r")
in_case2_11 = addfile(case2_11_filepath,"r")
in_case2_12 = addfile(case2_12_filepath,"r")

;---------------------------
; Define variables
;---------------------------

case1_pftwt = in_case1_01->pfts1d_wtlnd 
case2_pftwt = in_case2_01->pfts1d_wtlnd 

case1_tlai_01 = in_case1_01->tlai
case1_tlai_02 = in_case1_02->tlai
case1_tlai_03 = in_case1_03->tlai
case1_tlai_04 = in_case1_04->tlai
case1_tlai_05 = in_case1_05->tlai
case1_tlai_06 = in_case1_06->tlai
case1_tlai_07 = in_case1_07->tlai
case1_tlai_08 = in_case1_08->tlai
case1_tlai_09 = in_case1_09->tlai
case1_tlai_10 = in_case1_10->tlai
case1_tlai_11 = in_case1_11->tlai
case1_tlai_12 = in_case1_12->tlai

case1_tsai_01 = in_case1_01->tsai
case1_tsai_02 = in_case1_02->tsai
case1_tsai_03 = in_case1_03->tsai
case1_tsai_04 = in_case1_04->tsai
case1_tsai_05 = in_case1_05->tsai
case1_tsai_06 = in_case1_06->tsai
case1_tsai_07 = in_case1_07->tsai
case1_tsai_08 = in_case1_08->tsai
case1_tsai_09 = in_case1_09->tsai
case1_tsai_10 = in_case1_10->tsai
case1_tsai_11 = in_case1_11->tsai
case1_tsai_12 = in_case1_12->tsai

case2_tlai_01 = in_case2_01->tlai
case2_tlai_02 = in_case2_02->tlai
case2_tlai_03 = in_case2_03->tlai
case2_tlai_04 = in_case2_04->tlai
case2_tlai_05 = in_case2_05->tlai
case2_tlai_06 = in_case2_06->tlai
case2_tlai_07 = in_case2_07->tlai
case2_tlai_08 = in_case2_08->tlai
case2_tlai_09 = in_case2_09->tlai
case2_tlai_10 = in_case2_10->tlai
case2_tlai_11 = in_case2_11->tlai
case2_tlai_12 = in_case2_12->tlai

case2_tsai_01 = in_case2_01->tsai
case2_tsai_02 = in_case2_02->tsai
case2_tsai_03 = in_case2_03->tsai
case2_tsai_04 = in_case2_04->tsai
case2_tsai_05 = in_case2_05->tsai
case2_tsai_06 = in_case2_06->tsai
case2_tsai_07 = in_case2_07->tsai
case2_tsai_08 = in_case2_08->tsai
case2_tsai_09 = in_case2_09->tsai
case2_tsai_10 = in_case2_10->tsai
case2_tsai_11 = in_case2_11->tsai
case2_tsai_12 = in_case2_12->tsai

printVarSummary(case1_tlai_01)

num_pft      = dimsizes(case1_tlai_01)
pgridcell    = asciiread("[INSERT FILEPATH FOR PGRIDCELL]",(/num_pft/),"integer") 
num_gridcell = pgridcell(num_pft-1)

TLAI_01 = new((/num_pft/),"double")
TSAI_01 = new((/num_pft/),"double")
TLAI_02 = new((/num_pft/),"double")
TSAI_02 = new((/num_pft/),"double")
TLAI_03 = new((/num_pft/),"double")
TSAI_03 = new((/num_pft/),"double")
TLAI_04 = new((/num_pft/),"double")
TSAI_04 = new((/num_pft/),"double")
TLAI_05 = new((/num_pft/),"double")
TSAI_05 = new((/num_pft/),"double")
TLAI_06 = new((/num_pft/),"double")
TSAI_06 = new((/num_pft/),"double")
TLAI_07 = new((/num_pft/),"double")
TSAI_07 = new((/num_pft/),"double")
TLAI_08 = new((/num_pft/),"double")
TSAI_08 = new((/num_pft/),"double")
TLAI_09 = new((/num_pft/),"double")
TSAI_09 = new((/num_pft/),"double")
TLAI_10 = new((/num_pft/),"double")
TSAI_10 = new((/num_pft/),"double")
TLAI_11 = new((/num_pft/),"double")
TSAI_11 = new((/num_pft/),"double")
TLAI_12 = new((/num_pft/),"double")
TSAI_12 = new((/num_pft/),"double")

;--------------------------------------
; Perform loop through each month
;--------------------------------------

do m=1,12

 ; Initialize new tlai/tsai vectors

  case1_tlai = new((/num_pft/),"double") 
  case1_tsai = new((/num_pft/),"double") 
  case2_tlai = new((/num_pft/),"double") 
  case2_tsai = new((/num_pft/),"double") 
  tlai       = new((/num_pft/),"double")
  tsai       = new((/num_pft/),"double")

  if (m .eq. 1) then
    case1_tlai = case1_tlai_01
    case1_tsai = case1_tsai_01
    case2_tlai = case2_tlai_01
    case2_tsai = case2_tsai_01
  else if (m .eq. 2) then
    case1_tlai = case1_tlai_02
    case1_tsai = case1_tsai_02
    case2_tlai = case2_tlai_02
    case2_tsai = case2_tsai_02
  else if (m .eq. 3) then
    case1_tlai = case1_tlai_03
    case1_tsai = case1_tsai_03
    case2_tlai = case2_tlai_03
    case2_tsai = case2_tsai_03
  else if (m .eq. 4) then
    case1_tlai = case1_tlai_04
    case1_tsai = case1_tsai_04
    case2_tlai = case2_tlai_04
    case2_tsai = case2_tsai_04
  else if (m .eq. 5) then
    case1_tlai = case1_tlai_05
    case1_tsai = case1_tsai_05
    case2_tlai = case2_tlai_05
    case2_tsai = case2_tsai_05
  else if (m .eq. 6) then
    case1_tlai = case1_tlai_06
    case1_tsai = case1_tsai_06
    case2_tlai = case2_tlai_06
    case2_tsai = case2_tsai_06
  else if (m .eq. 7) then
    case1_tlai = case1_tlai_07
    case1_tsai = case1_tsai_07
    case2_tlai = case2_tlai_07
    case2_tsai = case2_tsai_07
  else if (m .eq. 8) then
    case1_tlai = case1_tlai_08
    case1_tsai = case1_tsai_08
    case2_tlai = case2_tlai_08
    case2_tsai = case2_tsai_08
  else if (m .eq. 9) then
    case1_tlai = case1_tlai_09
    case1_tsai = case1_tsai_09
    case2_tlai = case2_tlai_09
    case2_tsai = case2_tsai_09
  else if (m .eq. 10) then
    case1_tlai = case1_tlai_10
    case1_tsai = case1_tsai_10
    case2_tlai = case2_tlai_10
    case2_tsai = case2_tsai_10
  else if (m .eq. 11) then
    case1_tlai = case1_tlai_11
    case1_tsai = case1_tsai_11
    case2_tlai = case2_tlai_11
    case2_tsai = case2_tsai_11
  else if (m .eq. 12) then
    case1_tlai = case1_tlai_12
    case1_tsai = case1_tsai_12
    case2_tlai = case2_tlai_12
    case2_tsai = case2_tsai_12
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if 
  end if

 ; Set sum(lai/sai) to all gridcell indices
  do i=1,num_gridcell
    gc_ind = ind(pgridcell .eq. i)
    summed_lai = sum(case2_tlai(gc_ind)*case2_pftwt(gc_ind))
    summed_sai = sum(case2_tsai(gc_ind)*case2_pftwt(gc_ind))
    do z=gc_ind(0),gc_ind(dimsizes(gc_ind)-1) 
      tlai(gc_ind(0:dimsizes(gc_ind)-1)) = summed_lai
      tsai(gc_ind(0:dimsizes(gc_ind)-1)) = summed_sai
    end do
    delete(gc_ind)
  end do

 ; Set the tlai/tsai variables
  if (m .eq. 1) then
    TLAI_01 = tlai
    TSAI_01 = tsai
    TLAI_01 = where(ismissing(TLAI_01),0.0,TLAI_01)
    TSAI_01 = where(ismissing(TSAI_01),0.0,TSAI_01)
  else if (m .eq. 2) then
    TLAI_02 = tlai
    TSAI_02 = tsai
    TLAI_02 = where(ismissing(TLAI_02),0.0,TLAI_02)
    TSAI_02 = where(ismissing(TSAI_02),0.0,TSAI_02) 
  else if (m .eq. 3) then
    TLAI_03 = tlai
    TSAI_03 = tsai
    TLAI_03 = where(ismissing(TLAI_03),0.0,TLAI_03)
    TSAI_03 = where(ismissing(TSAI_03),0.0,TSAI_03) 
  else if (m .eq. 4) then
    TLAI_04 = tlai
    TSAI_04 = tsai
    TLAI_04 = where(ismissing(TLAI_04),0.0,TLAI_04)
    TSAI_04 = where(ismissing(TSAI_04),0.0,TSAI_04) 
  else if (m .eq. 5) then
    TLAI_05 = tlai
    TSAI_05 = tsai
    TLAI_05 = where(ismissing(TLAI_05),0.0,TLAI_05)
    TSAI_05 = where(ismissing(TSAI_05),0.0,TSAI_05) 
  else if (m .eq. 6) then
    TLAI_06 = tlai
    TSAI_06 = tsai
    TLAI_06 = where(ismissing(TLAI_06),0.0,TLAI_06)
    TSAI_06 = where(ismissing(TSAI_06),0.0,TSAI_06) 
  else if (m .eq. 7) then
    TLAI_07 = tlai
    TSAI_07 = tsai
    TLAI_07 = where(ismissing(TLAI_07),0.0,TLAI_07)
    TSAI_07 = where(ismissing(TSAI_07),0.0,TSAI_07) 
  else if (m .eq. 8) then
    TLAI_08 = tlai
    TSAI_08 = tsai
    TLAI_08 = where(ismissing(TLAI_08),0.0,TLAI_08)
    TSAI_08 = where(ismissing(TSAI_08),0.0,TSAI_08) 
  else if (m .eq. 9) then
    TLAI_09 = tlai
    TSAI_09 = tsai
    TLAI_09 = where(ismissing(TLAI_09),0.0,TLAI_09)
    TSAI_09 = where(ismissing(TSAI_09),0.0,TSAI_09) 
  else if (m .eq. 10) then
    TLAI_10 = tlai
    TSAI_10 = tsai
    TLAI_10 = where(ismissing(TLAI_10),0.0,TLAI_10)
    TSAI_10 = where(ismissing(TSAI_10),0.0,TSAI_10) 
  else if (m .eq. 11) then
    TLAI_11 = tlai
    TSAI_11 = tsai
    TLAI_11 = where(ismissing(TLAI_11),0.0,TLAI_11)
    TSAI_11 = where(ismissing(TSAI_11),0.0,TSAI_11) 
  else if (m .eq. 12) then
    TLAI_12 = tlai
    TSAI_12 = tsai
    TLAI_12 = where(ismissing(TLAI_12),0.0,TLAI_12)
    TSAI_12 = where(ismissing(TSAI_12),0.0,TSAI_12) 
  end if
  end if
  end if
  end if
  end if
  end if
  end if
  end if
  end if
  end if
  end if
  end if

 ; Delete all recurring variables
  delete([/tlai,tsai,case1_tlai,case1_tsai,case2_tlai,case2_tsai/])

end do

;-----------------------------------------
; Add variables to netcdf file
;-----------------------------------------

; 01
 copy_VarCoords(case1_tlai_01,TLAI_01)
 copy_VarCoords(case1_tsai_01,TSAI_01)
 copy_VarAtts(case1_tlai_01,TLAI_01)
 copy_VarAtts(case1_tsai_01,TSAI_01)
; 02
 copy_VarCoords(case1_tlai_02,TLAI_02)
 copy_VarCoords(case1_tsai_02,TSAI_02)
 copy_VarAtts(case1_tlai_02,TLAI_02)
 copy_VarAtts(case1_tsai_02,TSAI_02)
; 03 
 copy_VarCoords(case1_tlai_03,TLAI_03)
 copy_VarCoords(case1_tsai_03,TSAI_03)
 copy_VarAtts(case1_tlai_03,TLAI_03)
 copy_VarAtts(case1_tsai_03,TSAI_03)
; 04
 copy_VarCoords(case1_tlai_04,TLAI_04)
 copy_VarCoords(case1_tsai_04,TSAI_04)
 copy_VarAtts(case1_tlai_04,TLAI_04)
 copy_VarAtts(case1_tsai_04,TSAI_04)
; 05
 copy_VarCoords(case1_tlai_05,TLAI_05)
 copy_VarCoords(case1_tsai_05,TSAI_05)
 copy_VarAtts(case1_tlai_05,TLAI_05)
 copy_VarAtts(case1_tsai_05,TSAI_05)
; 06
 copy_VarCoords(case1_tlai_06,TLAI_06)
 copy_VarCoords(case1_tsai_06,TSAI_06)
 copy_VarAtts(case1_tlai_06,TLAI_06)
 copy_VarAtts(case1_tsai_06,TSAI_06)
; 07
 copy_VarCoords(case1_tlai_07,TLAI_07)
 copy_VarCoords(case1_tsai_07,TSAI_07)
 copy_VarAtts(case1_tlai_07,TLAI_07)
 copy_VarAtts(case1_tsai_07,TSAI_07)
; 08
 copy_VarCoords(case1_tlai_08,TLAI_08)
 copy_VarCoords(case1_tsai_08,TSAI_08)
 copy_VarAtts(case1_tlai_08,TLAI_08)
 copy_VarAtts(case1_tsai_08,TSAI_08)
; 09
 copy_VarCoords(case1_tlai_09,TLAI_09)
 copy_VarCoords(case1_tsai_09,TSAI_09)
 copy_VarAtts(case1_tlai_09,TLAI_09)
 copy_VarAtts(case1_tsai_09,TSAI_09)
; 10
 copy_VarCoords(case1_tlai_10,TLAI_10)
 copy_VarCoords(case1_tsai_10,TSAI_10)
 copy_VarAtts(case1_tlai_10,TLAI_10)
 copy_VarAtts(case1_tsai_10,TSAI_10)
; 11
 copy_VarCoords(case1_tlai_11,TLAI_11)
 copy_VarCoords(case1_tsai_11,TSAI_11)
 copy_VarAtts(case1_tlai_11,TLAI_11)
 copy_VarAtts(case1_tsai_11,TSAI_11)
; 12
 copy_VarCoords(case1_tlai_12,TLAI_12)
 copy_VarCoords(case1_tsai_12,TSAI_12)
 copy_VarAtts(case1_tlai_12,TLAI_12)
 copy_VarAtts(case1_tsai_12,TSAI_12)

; Assign variable coordinates and attributes to new variables
 in_case1_01->tlai_dust = TLAI_01
 in_case1_01->tsai_dust = TSAI_01
 in_case1_02->tlai_dust = TLAI_02
 in_case1_02->tsai_dust = TSAI_02
 in_case1_03->tlai_dust = TLAI_03
 in_case1_03->tsai_dust = TSAI_03
 in_case1_04->tlai_dust = TLAI_04
 in_case1_04->tsai_dust = TSAI_04
 in_case1_05->tlai_dust = TLAI_05
 in_case1_05->tsai_dust = TSAI_05
 in_case1_06->tlai_dust = TLAI_06
 in_case1_06->tsai_dust = TSAI_06
 in_case1_07->tlai_dust = TLAI_07
 in_case1_07->tsai_dust = TSAI_07
 in_case1_08->tlai_dust = TLAI_08
 in_case1_08->tsai_dust = TSAI_08
 in_case1_09->tlai_dust = TLAI_09
 in_case1_09->tsai_dust = TSAI_09
 in_case1_10->tlai_dust = TLAI_10
 in_case1_10->tsai_dust = TSAI_10
 in_case1_11->tlai_dust = TLAI_11
 in_case1_11->tsai_dust = TSAI_11
 in_case1_12->tlai_dust = TLAI_12
 in_case1_12->tsai_dust = TSAI_12

end
