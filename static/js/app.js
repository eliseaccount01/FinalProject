var state_dropdown = $('#state');

state_dropdown.empty();
state_dropdown.append('<option selected="true">Choose State/Province</option>');


const state_url = '/state_data';

// Populate dropdown with list of states/provinces
$.getJSON(state_url, function (data) {
  $.each(data, function (key, value) {
    state_dropdown.append(`<option value=${key}>${value}</option>`);
  })
});

var occ_dropdown = $('#occupation');

occ_dropdown.empty();
occ_dropdown.append('<option selected="true">Choose Occupation</option>');

const occ_url = '/occ_data';

// Populate dropdown with list of occupations
$.getJSON(occ_url, function (data) {
  $.each(data, function (key, value) {
    occ_dropdown.append(`<option value=${key}>${value}</option>`);
  })
});

// Buttion selection
var sel = d3.select("#selection");
sel.on("click", function(){
  var state = d3.select("#state").node().value;
  var occupation = d3.select("#occupation").node().value;
  var select = {
    "state": state,
    "occupation": occupation,
  }
  console.log(select);
  $.ajax({
    url: 'api/select',
    type: 'POST',
    contentType: 'application/json;charset=UTF-8',
    data: JSON.stringify(select),
  });
});
