d3.json("/api/v1.0/statedatabase").then(data =>{
  console.log("works");
  console.log(data)
});

d3.json("/api/v1.0/drugdatabase").then(data =>{
  console.log("works");
  console.log(data)
});
