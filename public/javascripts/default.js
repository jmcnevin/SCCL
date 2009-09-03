var email_name = 'contact';
var email_host = 'smallclaimscourtlawyer.com';
$(document).ready(function() {
  var email = email_name + '@' + email_host;
  $("#contact_email_link").attr('href','mailto:'+email).html(email);
});