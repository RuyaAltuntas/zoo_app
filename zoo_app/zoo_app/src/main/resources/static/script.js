$(document).ready(function() {
    fetch('/api/animals')
    .then(response => response.json())
    .then(data => {
        // Create a string of HTML to display the data
        let html = '';
        for (let animal of data) {
            html += `<p>ID: ${animal.AnimalID}, Name: ${animal.Animal_name}, Specie: ${animal.Animal_Specie}, Birthdate: ${animal.Animal_Birthdate}, Is Sick: ${animal.is_sick}, Gender: ${animal.Animal_Gender}</p>`;
        }

        // Insert the HTML into the page
        $('#animal-container').html(html);
    })
    .catch(error => console.error('Error:', error));
});