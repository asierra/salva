(function() {
  $(document).on("click", "#search_button", function() {
    var resource;
    resource = $("#filter_form").attr("action") + ".js";
    $.remote_collection_list(resource, $.param($("#filter_form").serializeArray()));
    return false;
  });

  $(document).on("click", "#reset_search_button", function() {
    var resource;
    document.forms["filter_form"].reset();
    resource = $("#filter_form").attr("action") + ".js";
    $.remote_collection_list(resource);
    return false;
  });

  $(document).on("click", "#destroy_selected_records", function() {
    var dom_ids, ids;
    ids = new Array();
    dom_ids = new Array();
    $("input[name=record_id]").each(function(index, item) {
      if ($(item).is(":checked")) {
        ids.push(item.value);
        return dom_ids.push(this.getAttribute("data-parent-id"));
      }
    });
    return $.destroy_selected_records(ids, dom_ids);
  });

  $(document).on("click", ".page a", function(e) {
    if (this.getAttribute("data-remote") === 'true') {
      e.preventDefault();
      $.remote_collection_list(this.href);
      return false;
    }
  });

  $(document).on("click", "#enable_search", function() {
    return $.ajax({
      url: '/session_preferences/enable_search',
      async: false,
      success: function(data) {
        $("#filter_form").show();
        $("#enable_search").hide();
        return $("#disable_search").show();
      }
    });
  });

  $(document).on("click", "#disable_search", function() {
    return $.ajax({
      url: '/session_preferences/disable_search',
      async: false,
      success: function(data) {
        $("#filter_form").hide();
        $("#enable_search").show();
        return $("#disable_search").hide();
      }
    });
  });

  $(document).on("click", "#ajaxed_paginator a", function() {
    $.remote_collection_list(this.href);
    return false;
  });

}).call(this);
