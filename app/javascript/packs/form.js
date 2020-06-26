const element = document.querySelector('.form-control-file');

const loadFile = (e) => {
  const output = document.getElementById('output');
  output.style.backgroundImage = 'url(' + URL.createObjectURL(e.target.files[0]) + ')';
  output.onload = function() {
    URL.revokeObjectURL(output.src)
  }
}

if (element) {element.addEventListener('change', loadFile);}

