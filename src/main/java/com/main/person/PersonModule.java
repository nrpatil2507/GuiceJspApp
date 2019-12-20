package com.main.person;

import com.google.inject.AbstractModule;
import com.google.inject.persist.jpa.JpaPersistModule;

public class PersonModule extends AbstractModule {

	@Override
	protected void configure() {
		install(new JpaPersistModule("pu"));
		bind(PersonService.class).to(PersonServiceImpl.class);
	}

}
