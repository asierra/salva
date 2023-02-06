(function() {
  $(document).on("click", "#submit_buttons", function() {
    return $(".fields_template").remove();
  });

  $(document).on("click", "form a.add_child_link", function() {
    var assoc, content, new_id, regexp, regexp2;
    assoc = $(this).attr("data-association");
    content = $("#" + assoc + "_fields_template").html();
    regexp = new RegExp("new_" + assoc, "g");
    regexp2 = new RegExp("display: none;", "g");
    new_id = new Date().getTime();
    $(this).before(content.replace(regexp, new_id).replace(regexp2, ""));
    $("select").chosen();
    return false;
  });

  $(document).on("click", "form a.remove_new_child", function() {
    $(this).parent().parent().remove();
    return false;
  });

  $(document).on("click", "form a.remove_existent_child", function() {
    $(this).parent().find(".destroy")[0].value = true;
    $(this).parent().parent().hide();
    return false;
  });

}).call(this);
