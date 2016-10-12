function breakfast(food) {
  let order = 'I would like cereal';

  function addToOrder(food) {
    return order += ' and ' + food;
  }

  if (!!food) {
    addToOrder(food);
  }
  return order;
}
