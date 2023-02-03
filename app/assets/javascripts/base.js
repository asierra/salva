(function() {
  jQuery.extend({
    set_button_behaviour: function() {
      $(".ui-state-default").hover((function() {
        return $(this).addClass("ui-state-hover");
      }), function() {
        return $(this).removeClass("ui-state-hover");
      });
      return $(".ui-state-default").css("cursor", "pointer");
    },
    open_dialog_with_progressbar: function() {
      $("#dialog").dialog({
        width: 260,
        height: 130,
        bgiframe: true,
        modal: true,
        hide: "slide",
        open: function(event, ui) {
          return $(this).parent().children(".ui-dialog-titlebar").hide();
        }
      }).dialog("open");
      $("#dialog").html("<div id=\"progressbar\"></div><p style=\"font-size:12px\">Cargando, por favor espere...</p>");
      return $("#progressbar").progressbar({
        value: 100
      });
    },
    close_dialog_with_progressbar: function() {
      $("#dialog").dialog("close");
      return $("#dialog").html("");
    },
    collection_from_remote_resource: function(resource, params) {
      var options;
      options = {
        url: resource,
        async: false,
        beforeSend: function() {
          return $.open_dialog_with_progressbar();
        },
        complete: function(request) {
          $.set_button_behaviour();
          return $.close_dialog_with_progressbar();
        },
        type: "get"
      };
      if (params !== void 0) {
        options["data"] = params;
      }
      return $.ajax(options).responseText;
    },
    remote_collection_list: function(resource, params) {
      var html;
      html = $.collection_from_remote_resource(resource, params);
      $("#collection_records").remove();
      $("#collection_footer").remove();
      $(".pagination").remove();
      $("#pagination_info").remove();
      $("#collection_header").after(html);
      return false;
    },
    date_picker_for: function(dom_id, start_year, end_year) {
      return $(dom_id).datepicker({
        changeYear: true,
        changeMonth: true,
        yearRange: start_year + ":" + end_year,
        dateFormat: "dd-mm-yy",
        defaultDate: "-2m",
        showOn: "both",
        buttonImageOnly: true,
        buttonImage: "/assets/calendar.gif"
      });
    },
    response_from_simple_remote_resource: function(resource) {
      return $.ajax({
        url: resource,
        async: false
      }).responseText;
    },
    response_from_remote_resource: function(resource) {
      var options;
      options = {
        url: resource,
        async: false,
        beforeSend: function() {
          return $.open_dialog_with_progressbar();
        },
        complete: function(request) {
          $.set_button_behaviour();
          return $.close_dialog_with_progressbar();
        }
      };
      return $.ajax(options).responseText;
    },
    dialog_for_new_record: function(controller) {
      var responseData;
      if (controller.match(/format\=js$/g) === null) {
        controller += ".js";
      }
      $("#dialog").dialog({
        title: "",
        width: 400,
        height: 500,
        modal: true,
        overlay: {
          background: "#fff",
          opacity: 0.25
        }
      }).dialog("open");
      responseData = $.response_from_simple_remote_resource(controller);
      return $("div#dialog").html(responseData);
    },
    dialog_for_new_checkbox: function(controller) {
      var remote_resource;
      remote_resource = '/' + controller + '/new';
      $.dialog_for_new_record(remote_resource);
      return $('#new_record_form').attr('id', "new_checkbox_form");
    },
    change_record: function(class_name) {
      $('#autocomplete_' + class_name + '_name').removeAttr("disabled");
      $('#autocomplete_' + class_name + '_name').val('');
      return $('#change_' + class_name).hide();
    },
    dialog_for_new_period: function(url) {
      return $.dialog_for_new_record(url);
    },
    destroy_selected_records: function(record_ids, dom_ids) {
      return $.ajax({
        url: $("#filter_form").attr("action") + "/destroy_all.js",
        data: {
          ids: record_ids
        },
        type: "GET",
        async: false,
        beforeSend: function() {
          return $.open_dialog_with_progressbar();
        },
        complete: function(data) {
          return $.close_dialog_with_progressbar();
        },
        success: function(data) {
          return $.each(dom_ids, function(index, dom_id) {
            return $("#" + dom_id).remove();
          });
        }
      });
    }
  });

}).call(this);
