dateTimeToIso8601DateString(DateTime value) => value.toIso8601String();

iso8601StringToDateTime(String value) => DateTime.parse(value);
