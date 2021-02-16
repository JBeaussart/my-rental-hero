import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('super_hero_address');
  if (addressInput) {
    console.log(addressInput);
    places({ container: addressInput });
  }
};

export { initAutocomplete };
