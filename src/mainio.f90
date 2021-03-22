module mainio
   ! Fortran unit numbers for system I/O.  Users should only revert
   ! to the legacy values if these iso_fortran_env variable values
   ! cause conflicts with njoy scratch or user logical units.

   implicit none
   private
   save

   integer,public::nsysi=5  !standard input,  legacy value=5
   integer,public::nsyso=7  !output file,     legacy value=7
   integer,public::nsyse=6  !terminal output, legacy value=6
end module mainio
