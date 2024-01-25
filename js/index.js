/* get records by type */ 

async function getRecords(qs, type, style){
        let response = await fetch("https://kenya.lsc-hubs.org/collections/metadata:main/items?f=json&limit=4&sortby=-recordUpdated&type="+type);
        if (response.ok) {
           let res = await response.json();  
           setDiv(qs, boxIt(res.features,style));
        } else {
           console.log(response.status);
        }
     }
   
setDiv = function(qs,content){
  dv = document.querySelector(qs);
  console.log(qs,dv);
  dv.innerHTML = content;
}

boxIt = function(res,style) {
    cnt = "";
    res.forEach(r => {
        /* ${r.links.filter(l=>l.rel=='self').pop().href */ 
        cnt += `<div class="g-col-6 g-col-lg-3 p-2 rounded ${style}">
            <p><a href="https://kenya.lsc-hubs.org/collections/metadata:main/items/${r.id}" class="text-success fw-bold text-decoration-none">${(r.properties.title||'').substring(0,60)}</a></p>
            <p class="fs-6">${(r.properties.description||'').substring(0,150)}</p>
            </div>`})
    return cnt;
}


document.addEventListener("DOMContentLoaded", (event) => {
    getRecords('#popular-services .grid','service','bg-dark text-light');
    getRecords('#popular-models .grid','model','bg-white border border-secondary shadow');
  });