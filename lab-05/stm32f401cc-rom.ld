ENTRY(reset_handler)

MEMORY
{
  FLASH(rx): ORIGIN = 0x08000000, LENGTH = 256K
  SRAM(rwx): ORIGIN = 0x02000000, LENGTH = 64K
}

SECTIONS
{
  /* Esta secao deve incluir a secao .isr_vectors, .text, .rodata de todos os arquivos objeto de entrada */
  .text :
  {
    *(.isr_vectors)
    *(.text)
    *(.rodata)
    . = ALIGN(4);
    _etext = .;
  }> FLASH

  /* Esta secao deve incluir a secao .data de todos os arquivos objeto de entrada */
  .data :
  {
    _sdata = .;
    *(.data)
    . = ALIGN(4);
    _edata = .;
  }> SRAM AT> FLASH

   /* Esta secao deve incluir a secao .bss de todos os arquivos objeto de entrada */
  .bss :
  {
    _sbss = .;
    *(.bss)
    . = ALIGN(4);
    _ebss = .;
  }> SRAM 
}