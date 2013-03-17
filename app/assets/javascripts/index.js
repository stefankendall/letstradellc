(function () {
    var success = function () {
        $("#signup-form").hide();
        $('#success-message').removeClass('hide');
    };

    $(document).ready(function () {
        $("#signup-form").bind("ajax:success", success);
    });
})();
