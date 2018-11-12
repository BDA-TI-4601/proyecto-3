
// Describe documents structure

clients = {
    name : string,
    id_client : string,
    telephone : string,
    reservations : [
        {
            id_reservation : int,
            site : string,
        }
    ],
    wishes : [
        {
            id_wish : int,
            site : name
        }
    ]
}
