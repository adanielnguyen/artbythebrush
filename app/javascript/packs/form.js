const element = document.querySelector('.form-control-file');

  const loadFile = (e) => {
    if (element) { 

      console.log("hi")
      const output = document.getElementById('output');
      output.style.backgroundImage = 'url(' + URL.createObjectURL(e.target.files[0]) + ')';
      output.onload = function() {
        URL.revokeObjectURL(output.src)
      }

      
    }
  }

  element.addEventListener('change', loadFile)


export default loadFile;