/*
 * Get catalog records by type
 */
async function getRecords({
  catalogBaseUrl,
  qs,
  numberOfItems = 6,
  itemType,
  icon = false, // icon name of bootstrap icon
  style = '',
  showDescription = false
}) {
  let response = await fetch(
    `${catalogBaseUrl}/collections/metadata:main/items?f=json&limit=${numberOfItems}&sortby=-updated&type=${itemType}`
  );

  if (response.ok) {
    let res = await response.json();
    setDiv(qs, boxIt(res.features, icon, style, showDescription));
  } else {
    console.log(response.status);
  }
}

setDiv = function(qs, content){
  let dv = document.querySelector(qs);

  dv.innerHTML = content;
}

boxIt = function(res, icon, style, showDescription) {
  let cnt = "";

  res.forEach(r => {
    const linkToItem = r.links.filter(link => link.rel === 'self')

    cnt += `<div class="${style}">
            <div class="d-flex">`

    if (icon) {
      cnt += `<i class="bi-${icon} me-2 text-primary"></i>`
    }

    cnt += `<div>
            <a href="${linkToItem[0].href}" class="text-decoration-none">${(r.properties.title||'').substring(0,60)}</a>`

    if (showDescription) {
      cnt += `<p>${(r.properties.description||'').substring(0,150)}</p>`
    }

    cnt += `</div></div></div>`
  })

  return cnt;
}
