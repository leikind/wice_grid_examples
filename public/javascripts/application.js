function toggleWithEffect(element){
  var e = $(element);
  new Effect[Element.visible(e) ? 'BlindUp' : 'BlindDown'](e, {duration: 0.25});
}
