//site.js

initialize();

function initialize() {
}

function getBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + api_port;
	return baseURL;
}


function onHomeTabClicked() {
	var url = getBaseURL();
	return url;
}

function onNameTabClicked() {
	var url = getBaseURL() + '/name/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(nameList) {
		var tableBody = '';
		for (var k = 0; k < nameList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + nameList[k]['name'] + '</td>';
			tableBody += '</tr>';       
        }
        
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}
function getName() {
	var name = document.getElementById("getName").value;
	var url = getBaseURL() + '/name/' + name;
	document.getElementById("search").innerHTML = name;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(nameList) {
		var tableBody = '<tr><th>' + name + '</th></tr>';
		for (var k = 0; k < nameList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + nameList[k]['name'] + '</td>';
			tableBody += '<td>' + nameList[k]['age'] + '</td>';
			tableBody += '<td>' + nameList[k]['gender'] + '</td>';
			tableBody += '<td>' + nameList[k]['raceethnicity'] + '</td>';
			tableBody += '<td>' + nameList[k]['month'] + '</td>';
			tableBody += '<td>' + nameList[k]['day'] + '</td>';
			tableBody += '<td>' + nameList[k]['year'] + '</td>';
			tableBody += '<td>' + nameList[k]['streetaddress'] + '</td>';
			tableBody += '<td>' + nameList[k]['city'] + '</td>';
			tableBody += '<td>' + nameList[k]['state'] + '</td>';
			tableBody += '<td>' + nameList[k]['latitude'] + '</td>';
			tableBody += '<td>' + nameList[k]['longitude'] + '</td>';
			tableBody += '<td>' + nameList[k]['lawenforcementagency'] + '</td>';
			tableBody += '<td>' + nameList[k]['cause'] + '</td>';
			tableBody += '<td>' + nameList[k]['armed'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});
}

function onAgeTabClicked() {
	var url = getBaseURL() + '/age/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(ageList) {
		var tableBody = '';
		for (var k = 0; k < ageList.length; k++) {
			tableBody += '<tr>';
			
			tableBody += '<td>' + ageList[k]['age'] + '</td>';
		tableBody += '</tr>';       
        }
        
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}

function getAge() {
	var age = document.getElementById("getAge").value;
	var url = getBaseURL() + '/age/' + age;
	document.getElementById("search").innerHTML = age;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(ageList) {
		var tableBody = '<tr><th>' + age + '</th></tr>';
		for (var k = 0; k < ageList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + ageList[k]['name'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});	
}

function onRaceTabClicked() {
	var url = getBaseURL() + '/race/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(raceList) {
		var tableBody = '';
		for (var k = 0; k < raceList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + raceList[k]['raceethnicity'] + '</td>';
		tableBody += '</tr>';       
        }
        
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}

function getRace() {
	var race = document.getElementById("getRace").value;
	var url = getBaseURL() + '/race/' + race;
	document.getElementById("search").innerHTML = race;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(raceList) {
		var tableBody = '<tr><th>' + race + '</th></tr>';
		for (var k = 0; k < raceList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + raceList[k]['name'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});	
}

function onDateTabClicked() {
	var url = getBaseURL() + '/date/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(dateList) {
		var tableBody = '';
		for (var k = 0; k < dateList.length; k++) {
			tableBody += '<tr>';
			
			tableBody += '<td>' + dateList[k]['month'] + ' ' + dateList[k]['day'] + '</td>';
		tableBody += '</tr>';       
        }
        
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}

function getDate() {
	var month = document.getElementById("getDate").value;
	var url = getBaseURL() + '/date/' + month;
	document.getElementById("search").innerHTML = month;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(dateList) {
		var tableBody = '<tr><th>' + month + '</th></tr>';
		for (var k = 0; k < dateList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + dateList[k]['day'] + '</td>';
			tableBody += '<td>' + dateList[k]['name'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});	
}

function onCityTabClicked() {
	var url = getBaseURL() + '/city/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(cityList) {
		var tableBody = '';
		for (var k = 0; k < cityList.length; k++) {
			tableBody += '<tr>';
			
			tableBody += '<td>' + cityList[k]['city'] + '</td>';
		tableBody += '</tr>';       
        }
        
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}

function getCity() {
	var city = document.getElementById("getCity").value;
	var url = getBaseURL() + '/city/' + city;
	document.getElementById("search").innerHTML = city;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(cityList) {
		var tableBody = '<tr><th>' + city + '</th></tr>';
		for (var k = 0; k < cityList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + cityList[k]['name'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});	
}

function onStateTabClicked() {
	var url = getBaseURL() + '/state/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(stateList) {
		var tableBody = '';
		for (var k = 0; k < stateList.length; k++) {
			tableBody += '<tr>';
			
			tableBody += '<td>' + stateList[k]['state'] + '</td>';
		tableBody += '</tr>';       
        }
        
        var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}
	})
	.catch(function(error) {
		console.log(error);
	});
}

function getState() {
	var state = document.getElementById("getState").value;
	var url = getBaseURL() + '/state/' + state;
	document.getElementById("search").innerHTML = state;
	fetch(url, {method: 'get'})
	
	.then((response) => response.json())
	
	.then(function(stateList) {
		var tableBody = '<tr><th>' + state + '</th></tr>';
		for (var k = 0; k < stateList.length; k++) {
			tableBody += '<tr>';
			tableBody += '<td>' + stateList[k]['name'] + '</td>';
			tableBody += '</tr>';
		}
		var resultsTableElement = document.getElementById('results_table');
		if (resultsTableElement) {
			resultsTableElement.innerHTML = tableBody;
		}		
	})
	.catch(function(error) {
		console.log(error);
	});	
}

function onDonationsTabClicked() {
	var url = getBaseURL() + '/donations/';
	
}
