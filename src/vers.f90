module version
   ! Gives the NJOY version identifier and the corresponding date.
   ! These values are updated during the NJOY revision-control process.
   implicit none
   private
   ! modified (IAEA, D. Lopez Aldama, dlopezaldama@gmail.com)
   character(8),public::vers='2016.80+'
   character(8),public::vday='28Oct26'
end module version
