
var dialogUserResetTemplateConfirm = function (callback) {
    var buttons = {};
    buttons[language.reset_template_do_reset_apply_button] = function () { p4.Dialog.Close(2); callback('1'); };

    var $dialog = p4.Dialog.Create({
        size : '500x150',
        closeOnEscape : true,
        closeButton:false,
        cancelButton:true,
        title : language.reset_template_confirm_dialog_title,
        buttons : buttons
    }, 2);

    $dialog.setContent(language.reset_template_do_confirm_choice);
}

var dialogUserTemplate = function (callback) {
    var buttons = {};
    buttons[language.reset_template_do_not_reset_button] = function () { p4.Dialog.Close(1); callback('0'); };
    buttons[language.reset_template_do_reset_button] = function () { p4.Dialog.Close(1); dialogUserResetTemplateConfirm(callback); };

    var $dialog = p4.Dialog.Create({
        size : '500x150',
        closeOnEscape : true,
        closeButton:false,
        cancelButton:true,
        title : language.reset_template_dialog_title,
        buttons : buttons
    });

    $dialog.setContent(language.reset_template_ask_choice);
}
