//site.js

initialize();

function initialize() {
	// var element = document.getElementById('people_button');
// 	if (element) {
// 		element.onclick = onPeopleButtonClicked;
// 	}
}

function getBaseURL() {
	var baseURL = window.location.protocol + '//' + window.location.hostname + ':' + api_port;
	return baseURL;
}

// function onPeopleButtonClicked() {
// 	var = url = getBaseURL() + 
// 
// }

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

function onDateTabClicked() {
	var url = getBaseURL() + '/date/';
	fetch(url, {method: 'get'})
	.then((response) => response.json())
	.then(function(dateList) {
		var tableBody = '';
		for (var k = 0; k < dateList.length; k++) {
			tableBody += '<tr>';
			
			tableBody += '<td>' + dateList[k]['month'] + dateList[k]['day'] + '</td>';
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

function onDonationsTabClicked() {
	var url = getBaseURL() + '/donations/';
	
}