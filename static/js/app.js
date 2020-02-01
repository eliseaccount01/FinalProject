d3.json("/state_data").then(data =>{
  console.log("state works");
  console.log(data)
});

d3.json("/occ_data").then(data =>{
  console.log("occ works");
  console.log(data)
});
