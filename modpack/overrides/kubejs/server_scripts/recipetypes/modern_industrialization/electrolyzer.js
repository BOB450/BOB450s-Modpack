////////////////////////
/// Made by Team AOF ///
////////////////////////


ServerEvents.recipes(event => {

  
    event.custom({    
        "type": "modern_industrialization:electrolyzer",
        "id": "modern_industrialization:materials/electrolyzer/uu_matter",
        "eu": 80,
        "duration": 2500,
        "item_inputs": [
          {
            "item": "modern_industrialization:singularity",
            "amount": 1,
            "probability": 0
          }
        ],
        "fluid_outputs": [
          {
            "fluid": "modern_industrialization:uu_matter",
            "amount": 1
          }
        ]
})
    })