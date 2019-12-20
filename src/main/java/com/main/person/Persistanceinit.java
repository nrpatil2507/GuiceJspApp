package com.main.person;

import com.google.inject.Inject;
import com.google.inject.persist.PersistService;

public class Persistanceinit {
	@Inject
	public Persistanceinit(PersistService service) {
		service.start();
	}

}
