-- flash_led.adb

with AVR.MCU;
with AVR.Wait;
use AVR;

procedure Flash_Led is

  procedure Delay_MS(MS : Natural) is
  begin
    for X in 1..MS loop
        AVR.Wait.Wait_4_Cycles(8000);
    end loop;
  end;

  -- On Seeduino, LED D13 is connected to pin 7 of port B
  -- Change this definition acccording to your board
  LED : Boolean renames MCU.PortB_Bits(7);

begin
    MCU.DDRB_Bits := (others => DD_Output);
    loop
        LED := True;
        Delay_MS(100);
        LED := False;
        Delay_MS(100);
    end loop;

end Flash_Led;

-- eof