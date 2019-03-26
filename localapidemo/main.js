function update(what) {
    let url = "https://extapi.local.ch/en/v15/entries?limit=20&q=" + encodeURIComponent(what);
    let node = document.getElementById("results");

    fetch(url).then(response => response.json()).then(data => {
        node.innerHTML = '';
        data.results.forEach(result => {
           node.innerHTML += `<div class="result"><h1><img src="${result.icons.detail_entry.src}"/>${result.title}</h1><address>${result.subtitle}</address>`;
        });
    }).catch(error => {
        console.log(error);
    })
}

window.onload = _ => {
    let node = document.getElementById("search");
    update(search.value);
}