
$(function() {
    $('body').hide();
    window.addEventListener('message', function(event) {
        var data = event.data;
        if (data.action == 'showui') {
        $('body').fadeIn();
        $(".postioning .nav .fe").html(data.namecar);
        } else {
            $('body').hide();
        }
    });

    $(document).keyup(function(e) {
        if (e.keyCode == 27) {
            $.post('https://trifa_veh/close');
            $("body").fadeOut();
        }
    })




    
})




function ouvrepo() {
    $.post('https://trifa_veh/ouvrepo', JSON.stringify({}))
}  

function ouvrepo1() {
    $.post('https://trifa_veh/ouvrepo1', JSON.stringify({}))
}   

function ouvrepo2() {
    $.post('https://trifa_veh/ouvrepo2', JSON.stringify({}))
}  

function ouvrepo3() {
    $.post('https://trifa_veh/ouvrepo3', JSON.stringify({}))
} 


function ouvrefe() {
    $.post('https://trifa_veh/ouvrefe', JSON.stringify({}))
}  

function ouvrefe1() {
    $.post('https://trifa_veh/ouvrefe1', JSON.stringify({}))
}   

function ouvrefe2() {
    $.post('https://trifa_veh/ouvrefe2', JSON.stringify({}))
}  

function ouvrefe3() {
    $.post('https://trifa_veh/ouvrefe3', JSON.stringify({}))
} 


function capot() {
    $.post('https://trifa_veh/capot', JSON.stringify({}))
}  

function coffre() {
    $.post('https://trifa_veh/coffre', JSON.stringify({}))
} 

