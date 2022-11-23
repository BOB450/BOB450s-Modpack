ServerEvents.recipes(event => {

    const plates = [
        'bronze',
        'tin',
        'lead',
        'silver',
        'nickel',
        'tungsten',
        'titanium',
        'chromium',
        'invar',
        'nickel',
        'platinum',
        'stainless_steel',
        'steel'

    ];

    plates.forEach((item) => {
        event.custom({
            "type": "create:pressing",
            "ingredients": [
                {
                    "tag": "c:" + item + "_ingots"
                }
            ],
            "results": [
                {
                    "item": "modern_industrialization:" + item + "_plate",
                    "count": 1
                },
            ],
        })
    });
})