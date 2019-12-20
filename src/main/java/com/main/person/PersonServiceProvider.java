package com.main.person;

import com.google.inject.Guice;
import com.google.inject.Injector;
import com.google.inject.Singleton;

@Singleton
public class PersonServiceProvider {

	public static PersonService getPersonService() {
		Injector injector = Guice.createInjector(new PersonModule());

		Persistanceinit ps = injector.getInstance(Persistanceinit.class);

		PersonService pservice = injector.getInstance(PersonService.class);

		return pservice;

	}

}
