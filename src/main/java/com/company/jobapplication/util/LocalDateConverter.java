package com.company.jobapplication.util;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;

@Component
public class LocalDateConverter implements Converter<String, LocalDate> {

	@Override
	public LocalDate convert(String date) {
		LocalDate lDate = null;
		try {
		lDate = LocalDate.parse(date, DateTimeFormatter.ISO_LOCAL_DATE);
		}
		catch(IllegalArgumentException | DateTimeParseException e) {
		}
		return lDate;
	}
}
