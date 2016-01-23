/*
 * 
 */
(function($){
    $.fn.tpl = function(data){
        $.template('template', $(this).html().replace(/@/g,"$"));
        return $.tmpl('template', data);
    }
})($)