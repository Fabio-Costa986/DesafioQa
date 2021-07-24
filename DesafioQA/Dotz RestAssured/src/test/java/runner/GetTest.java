package runner;

import static io.restassured.RestAssured.given;
import static org.hamcrest.Matchers.is;

import org.hamcrest.Matchers;
import org.hamcrest.core.Is;
import org.junit.Test;

import io.restassured.RestAssured;


public class GetTest {
	
public void deveObterCidadeDeOrigem() {
		
		given()
			.log().all()
			.queryParam("q", "Fortaleza,BR")
			.queryParam("appid", "050c10d7156c196a31c7d7d82780d816")
			.queryParam("units", "metric")
				
		.when()
			.get("http://api.openweathermap.org/data/2.5/weather")
		.then()
			.log().all()
			.statusCode(200)
			
		
		;
	}

	
	public void deveObterLatitudeELongitude() {
		
		given()
			.log().all()
			.queryParam("q", "Osasco,BR")
			.queryParam("appid", "050c10d7156c196a31c7d7d82780d816")
			.queryParam("units", "metric")
			.queryParam("lat", "-23.5325")
			.queryParam("lon", "-46.7917")
				
		.when()
			.get("http://api.openweathermap.org/data/2.5/weather")
		.then()
			.log().all()
			.statusCode(200)
			.body("name", is("Osasco"))
			.body("coord.lon", is(-46.7917f))
			
			
			
		
		;
	}

	
	@Test
	public void deveObterChaveInválida() {
		
		given()
			.log().all()
			.queryParam("q", "Osasco,BR")
			.queryParam("appid", "c35205acc8938d356723d78d1d88a76")
			.queryParam("units", "metric")
			.queryParam("lat", "-23.5325")
			.queryParam("lon", "-46.7917")
				
		.when()
			.get("http://api.openweathermap.org/data/2.5/weather")
		.then()
			.log().all()
			.statusCode(200)
			.body("name", is("Osasco"))
			.body("coord.lon", is(-46.7917f))
			
			
			
		
		;
	}
	
}
