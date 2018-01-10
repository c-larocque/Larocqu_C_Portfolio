(function () {

//getting variables
var portfolioImages = document.querySelectorAll('.projectLink');

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
      let docFrag = `<div class="col-xs-12 col-sm-4 portfolioItem">
          <a href="#" class="projectLink">
              <img src="images/${thumb.projects_image}" class="img-responsive" alt="${thumb.projects_name}">
          </a>
      </div>`;



      thumbHolder.innerHTML += docFrag; // add each LI back to the UL in index.html (line 44)
    });

    // re-add event handling
    thumbHolder.querySelectorAll('li').forEach((thumb) => thumb.addEventListener('click', video.loadNewVideo));
}

function getProjectData() {
    const url = './includes/functions.php?projects_name=' + this.id;

    // the fetch API uses new JavaScript Promise API
    fetch(url) // do an ajax call with fetch
    .then((resp) => resp.json()) // convert to json
    .then((data) => { processProjectResult(data); }) // then do the process result function
  }

  function processProjectResult(data) {
    //deconstruct the data and extract only what we need
    const { projects_id, projects_name, projects_info, projects_image } = data;

    let projectName = document.querySelector('.projectName').textContent = projects_name;
    let projectInfo = document.querySelector('.projectInfo').innerHTML = projects_info;
    let projectImage = document.querySelector('.projectImage').src = "images/"+projects_image;

  }

  /*portfolioImages.addEventListener('click', function() { popLightbox(index, objectIndex); }, false);*/

  portfolioImages.forEach(function(image, index){
    //event handler, forEach image to call getProjectData function
    image.addEventListener('click', getProjectData, false);
    image.addEventListener('click', popLightbox, false);
  });

  function closeLightbox() {
    // Reset everything, close the lightbox
    //debugger;

    let lightbox = document.querySelector('#projectLightbox');
    let lightboxClose = document.querySelector('#closeLightbox');

    lightbox.style.display = "none";
    document.body.style.overflow = "visible";

    projectImage.src = "";
    projectInfo.innerHTML = "";
    projectName.textContent = "";
  }

  getAllData();

})();
