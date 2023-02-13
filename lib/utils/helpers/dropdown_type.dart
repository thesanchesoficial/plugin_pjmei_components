enum OwDropdownType {
  months, 
  genders, 
  bankAccountType, 
  weekDays, 
  decimal,
  integer,
}

class DropdownType {
  final OwDropdownType type;
  final num? min;
  final num? max;
  final num? step;
  final int? places;
  final List<bool>? activatedItemsList;
  
  const DropdownType(
    this.type,
  ) : min = null,
      step = null,
      activatedItemsList = null,
      places = null,
      max = null;

  DropdownType.week({
    bool sunday = true,
    bool monday = true,
    bool tuesday = true,
    bool wednesday = true,
    bool thursday = true,
    bool friday = true,
    bool saturday = true,
  }): type = OwDropdownType.weekDays,
      activatedItemsList = [sunday, monday, tuesday, wednesday, thursday, friday, saturday],
      min = null,
      step = null,
      places = null,
      max = null;

  DropdownType.month({
    bool january = true,
    bool february = true,
    bool march = true,
    bool april = true,
    bool may = true,
    bool june = true,
    bool july = true,
    bool august = true,
    bool september = true,
    bool october = true,
    bool november = true,
    bool december = true,
  }): type = OwDropdownType.months,
      activatedItemsList = [january, february, march, april, may, june, july, august, september, october, november, december],
      min = null,
      step = null,
      places = null,
      max = null;

  DropdownType.gender({
    bool others = true,
  }): type = OwDropdownType.genders,
      activatedItemsList = [true, true, others],
      min = null,
      step = null,
      places = null,
      max = null;

  const DropdownType.integer({
    int minInteger = 0,
    int maxInteger = 99999,
    this.step = 1,
  }): type = OwDropdownType.integer,
      min = minInteger,
      max = maxInteger,
      places = null,
      activatedItemsList = null;

  const DropdownType.decimal({
    double minDecimal = 0,
    double maxDecimal= 99999,
    int decimalPlaces = 2,
    this.step = 1,
  }): type = OwDropdownType.decimal,
      min = minDecimal,
      max = maxDecimal,
      places = decimalPlaces,
      activatedItemsList = null;
}

class DropdownTypes {
  DropdownTypes._();
  
  static const DropdownType gender = DropdownType(OwDropdownType.genders);
  static const DropdownType bankAccountType = DropdownType(OwDropdownType.bankAccountType);
}
