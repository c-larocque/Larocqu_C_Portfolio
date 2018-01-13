(function () {

  function getAllData() {
  let url = './includes/functions.php?all_work=true';

  fetch(url)
  .then((resp) => resp.json())
  .then((data) => generateThumbs(data))
  .catch(function(error) {
    console.log(error);
  });
}

function generateThumbs(data) {
  let thumbHolder = document.querySelector('#portfolioGrid');

    data.forEach(thumb => {
      let docFrag = `<div class="col-xs-12 col-sm-4 portfolioItem showLightbox" id="${thumb.projects_id}">
          <a href="#" class="projectLink">
              <img src="images/${thumb.projects_image}" class="img-responsive" alt="${thumb.projects_name}">
          </a>
      </div>`;

      thumbHolder.innerHTML += docFrag;
    });

    // re-add event handling
    thumbHolder.querySelectorAll('div').forEach((thumb) => thumb.addEventListener('click', getProjectData));
}

function getProjectData() {
  event.preventDefault();

    const url = './includes/functions.php?projectsId=' + this.id;

    // the fetch API uses new JavaScript Promise API
    fetch(url) // do an ajax call with fetch
    .then((resp) => resp.json()) // convert to json
    .then((data) => { processProjectResult(data); }) // then do the process result function
    .catch(function(error) {
      console.log(error);
    });
  }

  function processProjectResult(data) {
    //deconstruct the data and extract only what we need
    const { projects_id, projects_name, projects_info, projects_image } = data;

    let projectName = document.querySelector('.projectName').textContent = projects_name;
    let projectInfo = document.querySelector('.projectInfo').innerHTML = projects_info;
    let projectImage = document.querySelector('.projectImage').src = "images/"+projects_image;

    // open lightbox here
    let lightbox = document.querySelector('#projectLightbox');
    lightbox.addEventListener('click', function() { lightbox.classList.add('showLightbox'); }, false);

    // close lightbox here
    let lightboxClose = document.querySelector('.closeLightbox');
    lightboxClose.addEventListener('click', function() { lightboxClose.classList.remove('showLightbox'); }, false);
  }


  getAllData();

})();
