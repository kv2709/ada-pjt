with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings;
use Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings;

procedure DayOfWeek is
	type TypeDaysOfWeek is (Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday);
	Day: Integer;
	Month: Integer;
	Year: Integer;
	Century : Integer;
	DayOfWeek : TypeDaysOfWeek;
begin
	Put("Укажите дату в виде день, месяц и год ");
	Get(Day);
	Get(Month);
	get(Year);
	if Month < 3 then
		Year := Year - 1;
		Month := Month + 10;
	else
		Month := Month - 2;
	end if;
	Century := Year / 100;
	Year := Year mod 100;
	DayOfWeek := TypeDaysOfWeek'Val(((26 * Month - 2) / 10 + Day + Year + Year / 4 + Century / 4 - 2 * Century) mod 7);
	Put_Line(TypeDaysOfWeek'Image(DayOfWeek));			
	
end DayOfWeek;
