(function() {
  $(document).on("click", ".approve_document", function(e) {
    e.preventDefault();
    return $.dialog_for_new_record(this.href);
  });

  $(document).on("click", ".reject_document", function(e) {
    e.preventDefault();
    return $.dialog_for_new_record(this.href);
  });

  $(document).on("click", ".simple_form input[type=submit]", function(e) {
    var comment, dom_id, fin, ini, options, p, pStr, url;
    e.preventDefault();
    dom_id = $(".simple_form").attr("id");
    url = $(".simple_form").attr("action") + '.js';
    p = $.param($(".simple_form").serializeArray());
    pStr = JSON.stringify(p);
    ini = (pStr.search('document%5Bcomments%5D=')) + 'document%5Bcomments%5D='.length;
    fin = pStr.search('&document%5Bapproved');
    comment = pStr.substring(ini, fin);
    if (comment.length === 0) {
      return alert("Es necesario escribir un comentario para el informe");
    } else {
      options = {
        url: url,
        type: "POST",
        data: p,
        async: false
      };
      $("#dialog").empty();
      $("#dialog").dialog("close");
      return $("#" + dom_id).replaceWith($.ajax(options).responseText);
    }
  });

}).call(this);
