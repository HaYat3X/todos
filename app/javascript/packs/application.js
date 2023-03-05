import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';
require("jquery")

// * フラッシュメッセージを2秒後に消す
$(function() {
    setTimeout("$('.alert').fadeOut('slow')", 1000);
});

Rails.start();
Turbolinks.start();
ActiveStorage.start();