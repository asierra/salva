// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function set_button_behaviour() {
    $(".ui-state-default").hover(
        function() { $(this).addClass('ui-state-hover'); },
        function() { $(this).removeClass('ui-state-hover'); }
    );
    $(".ui-state-default").css("cursor", "pointer");
}

function open_dialog_with_progressbar() {
    $('#dialog').dialog({ width: 260, height: 130, bgiframe: true, modal: true, hide: 'slide', 
    open: function(event, ui) { $(this).parent().children('.ui-dialog-titlebar').hide(); }
    }).dialog('open');
    $('#dialog').html('<div id="progressbar"></div><p style="font-size:12px">Cargando, por favor espere...</p>');
    $( "#progressbar" ).progressbar({value: 100});
}

function close_dialog_with_progressbar() {
    $('#dialog').dialog('close');
    $('#dialog').html('');
}