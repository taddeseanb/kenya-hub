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
    console.log(res,style);
    res.forEach(r => {
        /* ${r.links.filter(l=>l.rel=='self').pop().href */ 
        cnt += `<div class="column p-3 m-2 rounded ${style}" style="width:20%;">
            <p><a href="https://kenya.lsc-hubs.org/collections/metadata:main/items/${r.id}">${(r.properties.title||'').substring(0,60)}</a></p>
            <p class="fs-6">${(r.properties.description||'').substring(0,150)}</p>
            </div>`})
    return cnt;
}


document.addEventListener("DOMContentLoaded", (event) => {
    getRecords('#popular-services .columns','service','bg-dark text-light');
    getRecords('#popular-models .columns','model','bg-white');
    


  });