var loadFile = function(event) {
  var output = document.getElementById('output');
  output.style.backgroundImage = 'url(' + URL.createObjectURL(event.target.files[0]) + ')';
  output.onload = function() {
    URL.revokeObjectURL(output.src)
  }
}

document.querySelector('.form-control-file').addEventListener('change', loadFile);

