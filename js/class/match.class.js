var Match = function(){

    this.onLoadProfile();
}

Match.prototype.onLoadProfile = function(){
    
    console.log('ici');
    $.getJSON("json.php", this.viewProfile);
    console.log('et la');
}

Match.prototype.viewProfile = function(response){

    

    $("#card").empty();

    for(var i = 0; i < response.length; i++){

        var div = $('<div id="card-'+i+'" class="play_card">')
        var before = $('<div class="i"><button class="normal-link c-black lr-p-20"><i class="fas fa-chevron-left"></i><p>Dislike</p></button></div>');
        var after = $('<div class="i"><button class="like_button normal-link c-black lr-p-20"><i class="fas fa-chevron-right"></i><p>Like</p></button></div>')


        div.append('<h1 class="t-a-center">'+response[i].first_name+' ('+response[i].age+')</h1>');
        div.append('<p class="t-a-center">'+response[i].description+'</p>');

        $('#before_card').append(before);
        $('#after_card').append(after);

        $('#for_about').append();
    }



    
}