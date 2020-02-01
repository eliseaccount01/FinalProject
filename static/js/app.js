let state_dropdown = $('#state');

state_dropdown.empty();
state_dropdown.append('<option selected="true">Choose State/Province</option>');


const state_url = '/state_data';

// Populate dropdown with list of provinces
$.getJSON(state_url, function (data) {
  $.each(data, function (key, value) {
    state_dropdown.append(`<option value=${value}>${value}</option>`);
  })
});



let occ_dropdown = $('#occupation');

occ_dropdown.empty();
occ_dropdown.append('<option selected="true">Choose Occupation</option>');

const occ_url = '/occ_data';
// Populate dropdown with list of provinces
$.getJSON(occ_url, function (data) {
  $.each(data, function (key, value) {
    occ_dropdown.append(`<option value=${value}>${value}</option>`);
  })
});
