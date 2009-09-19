
function toggleWithEffect(element){
  new Effect[Element.visible(element) ? 'BlindUp' : 'BlindDown'](element, {duration: 0.25});
}
