!function(n){var o=window.MutationObserver||window.WebKitMutationObserver;n.fn.attrchange=function(s,e){if("object"==typeof s){var t={trackValues:!1,callback:n.noop};if("function"==typeof s?t.callback=s:n.extend(t,s),t.trackValues&&this.each(function(s,e){var t,i={};for(s=0,attrs=e.attributes,l=attrs.length;s<l;s++)i[(t=attrs.item(s)).nodeName]=t.value;n(this).data("attr-old-value",i)}),o){var i={subtree:!1,attributes:!0,attributeOldValue:t.trackValues},a=new o(function(s){s.forEach(function(s){var e=s.target;t.trackValues&&(s.newValue=n(e).attr(s.attributeName)),"connected"===n(e).data("attrchange-status")&&t.callback.call(e,s)})});return this.data("attrchange-method","Mutation Observer").data("attrchange-status","connected").data("attrchange-obs",a).each(function(){a.observe(this,i)})}return function(){var s=document.createElement("p"),e=!1;if(s.addEventListener)s.addEventListener("DOMAttrModified",function(){e=!0},!1);else{if(!s.attachEvent)return!1;s.attachEvent("onDOMAttrModified",function(){e=!0})}return s.setAttribute("id","target"),e}()?this.data("attrchange-method","DOMAttrModified").data("attrchange-status","connected").on("DOMAttrModified",function(s){s.originalEvent&&(s=s.originalEvent),s.attributeName=s.attrName,s.oldValue=s.prevValue,"connected"===n(this).data("attrchange-status")&&t.callback.call(this,s)}):"onpropertychange"in document.body?this.data("attrchange-method","propertychange").data("attrchange-status","connected").on("propertychange",function(s){s.attributeName=window.event.propertyName,function(s,e){if(s){var t=this.data("attr-old-value");if(0<=e.attributeName.indexOf("style")){t.style||(t.style={});var i=e.attributeName.split(".");e.attributeName=i[0],e.oldValue=t.style[i[1]],e.newValue=i[1]+":"+this.prop("style")[n.camelCase(i[1])],t.style[i[1]]=e.newValue}else e.oldValue=t[e.attributeName],e.newValue=this.attr(e.attributeName),t[e.attributeName]=e.newValue;this.data("attr-old-value",t)}}.call(n(this),t.trackValues,s),"connected"===n(this).data("attrchange-status")&&t.callback.call(this,s)}):this}if("string"==typeof s&&n.fn.attrchange.hasOwnProperty("extensions")&&n.fn.attrchange.extensions.hasOwnProperty(s))return n.fn.attrchange.extensions[s].call(this,e)}}(jQuery),function(s,e){jQuery.fn[e]=function(s){return s?this.bind("resize",function(t,i,a){var n;return function(){var s=this,e=arguments;n?clearTimeout(n):a&&t.apply(s,e),n=setTimeout(function(){a||t.apply(s,e),n=null},i||100)}}(s)):this.trigger(e)}}(jQuery,"ss_smartresize"),function(r){var a={init:function(){r(document).ready(a.ready),r(window).on("load",a.load),r(window).ss_smartresize(a.resize)},ready:function(){a.binds(),a.countChars()},load:function(){},resize:function(){},openModal:function(){r("body,html").addClass("ss-no-scroll"),r("body").addClass("ss-open-modal"),r("body").on("keyup",a.closeModalKey);var s="";tinyMCE.activeEditor&&(s=tinyMCE.activeEditor.selection.getContent({format:"text"})),r("#ss_ctt_quote_content").val(s),r("#ss_ctt_tweet_content").val(s)},closeModal:function(){r("body,html").removeClass("ss-no-scroll"),r("body").removeClass("ss-open-modal"),r("body").off("keyup",a.closeModalKey),r("#ss-modal input[type=text]:not(.ss-has-default), #ss-modal textarea:not(.ss-has-default)").val(""),r("#ss-modal select option").removeAttr("selected"),r("#ss-modal select option:first").attr("selected","selected")},closeModalKey:function(s){27==s.keyCode&&a.closeModal()},binds:function(){r(document).on("click",".ss-mce-button, .wp-media-buttons-icon.socialsnap-menu-icon",function(s){s.preventDefault(),a.openModal(),a.countChars()}),r(document).on("click",".ss-close-modal",function(s){s.preventDefault(),a.closeModal()}),r(".ss-metabox-wrapper").on("click","li > a",function(s){s.preventDefault();var e,t=r(this),i=t.closest(".ss-metabox-wrapper");i.find(".ss-metabox-tabs > li").removeClass("current-menu-item"),i.find(".ss-metabox-content .ss-active").removeClass("ss-active"),t.parent().addClass("current-menu-item"),e=t.attr("href").substring(1),i.find('.ss-tab[data-id="'+e+'"]').addClass("ss-active"),a.countChars()}),r(document).on("click","#ss-insert-shortcode",function(s){s.preventDefault();var e=r("#ss-modal").find(".ss-metabox-content .ss-active").data("id"),t="";if("ss-click-to-tweet-editor"===e&&(t+="[ss_click_to_tweet",t+=' tweet="'+r("#ss_ctt_tweet_content").val()+'"',t+=' content="'+r("#ss_ctt_quote_content").val()+'"',t+=' style="'+r("#ss_ctt_style option:selected").val()+'"',"default"!==r("#ss_ctt_post_link option:selected").val()&&(t+=' link="'+r("#ss_ctt_post_link option:selected").val()+'"'),"default"!==r("#ss_ctt_include_via option:selected").val()&&(t+=' via="'+r("#ss_ctt_include_via option:selected").val()+'"'),t+="]",wp.media.editor.insert(t)),"ss-social-share-editor"===e&&(t+="[ss_social_share",""!=r("#ss_ss_networks").val()&&(t+=' networks="'+r("#ss_ss_networks").val()+'"'),t+=' align="'+r("#ss_ss_button_align option:selected").val()+'"',t+=' shape="'+r("#ss_ss_button_shape option:selected").val()+'"',t+=' size="'+r("#ss_ss_button_size option:selected").val()+'"',t+=' labels="'+r("#ss_ss_button_labels option:selected").val()+'"',t+=' spacing="'+(r("#ss_ss_button_spacing").is(":checked")?1:0)+'"',t+=' hide_on_mobile="'+(r("#ss_ss_hide_on_mobile").is(":checked")?1:0)+'"',t+=' total="'+(r("#ss_ss_total_count").is(":checked")?1:0)+'"',t+=' all_networks="'+(r("#ss_ss_all_networks").is(":checked")?1:0)+'"',r("#ss_ss_total_count_style").length&&(t+=' inline_total_style="'+r("#ss_ss_total_count_style option:selected").val()+'"'),r("#ss_ss_total_count_placement").length&&(t+=' total_share_placement="'+r("#ss_ss_total_count_placement option:selected").val()+'"'),r("#ss_ss_hover_animation").length&&(t+=' hover_animation="'+r("#ss_ss_hover_animation option:selected").val()+'"'),r("#ss_ss_button_target_editor").length&&r("#ss_ss_button_target_editor").val()&&(t+=' share_target="'+r("#ss_ss_button_target_editor").val()+'"'),t+="]",wp.media.editor.insert(t)),"ss-social-follow-editor"===e){t+="[ss_social_follow",""!=r("#ss_sf_networks").val()&&(t+=' networks="'+r("#ss_sf_networks").val()+'"');r.each({size:"ss_sf_button_size",spacing:"ss_sf_button_spacing",columns:"ss_sf_button_columns",vertical:"ss_sf_button_vertical",scheme:"ss_sf_button_scheme",total_followers:"ss_sf_total_followers",button_followers:"ss_sf_button_followers",labels:"ss_sf_button_labels"},function(s,e){"default"!==r("#"+e).val()&&(t+=" "+s+'="'+r("#"+e).val()+'"')}),t+="]",wp.media.editor.insert(t)}a.closeModal()}),r(".ss-field-wrapper").on("click",".ss-upload-button",function(s){var e,t;s.preventDefault();var i=r(this),a="#",n="",o="#"+i.attr("id").replace("_button","");e||(e=wp.media.frames.file_frame=wp.media({title:socialsnap_editor.l10n.upload_title,button:{text:socialsnap_editor.l10n.use_file},multiple:i.data("multiple"),library:{type:i.data("type").split(",")}})).on("select",function(){t=e.state().get("selection").first().toJSON();var s=r(o+"-preview");"image"===t.type?(a=t.editLink,n=void 0!==t.sizes.medium?t.sizes.medium.url:t.url,s.find(".ss-video-name").remove(),s.find("img").length?s.find("img").attr("src",n):s.append("<img src="+n+" />"),r(o).val(t.url).trigger("change"),r(o+"_img_id").val(t.id),r(o+"_edit").attr("href",a),r(o+"_dimension").html(t.width+"px x "+t.height+"px"),s.addClass("mime-type-image")):"video"===t.type&&(s.find("img").remove(),s.find(".ss-video-name").length?s.find(".ss-video-name").html(t.filename):s.append('<span class="ss-video-name">'+t.filename+"</em></span>"),r(o).val(t.url).trigger("change"),r(o+"_img_id").val(t.id),r(o+"_dimension").html(t.width+"px x "+t.height+"px"),s.addClass("mime-type-video"))}),e.open()}),r(".ss-field-wrapper").on("click",".ss-remove-image",function(s){s.preventDefault();var e="#"+r(this).attr("id").replace("_remove",""),t=r(e+"-preview");t.find("img").remove(),t.find(".ss-video-name").remove(),t.removeClass().addClass("show-upload-image"),r(e+"_img_id").val("").trigger("change")}),r("#ss-sap-meta-settings").on("click",function(s){r('.ss-metabox-tabs a[href="#ss-sap-metabox"]').click()})},countChars:function(){var s,e=0,t=0;r(".ss-count-char").each(function(){r(this).siblings("textarea, input[type=text]").on("input",function(){s=r(this).siblings(".ss-count-char"),e=s.data("count"),(t=e-r(this).val().length)<0?s.addClass("exceeded"):s.removeClass("exceeded"),s.find("strong").html(t)})}),r(".ss-field-wrapper textarea, .ss-field-wrapper input[type=text]").trigger("input")}};a.init(),window.socialsnapeditor=a}(jQuery),function(l){var t={init:function(){l(document).ready(t.ready),l(window).on("load",t.load),l(window).ss_smartresize(t.resize)},ready:function(){t.dependencyOptions(),t.shareNetworks(),t.followNetworks(),t.colorPicker(),t.binds()},load:function(){},resize:function(){},colorPicker:function(){l(".ss-color-picker-element").length&&(l(".ss-color-picker-element").iris({width:310,hide:!0,palettes:!0,mode:"hsl",change:function(s,e){l(s.target).siblings(".ss-color-value").css("background-color",e.color.toString()),l(s.target).siblings("input[type=hidden]").val(e.color.toString()).trigger("change")}}),l(".ss-color-picker").on("click",function(s){s.preventDefault();var e=l(this);e.hasClass("ss-opened")||(e.addClass("ss-opened").find(".ss-color-picker-element").iris("show"),l("#ss-settings-wrapper").on("click",t.closeColorPicker))}))},closeColorPicker:function(s){l(".ss-color-picker").find("."+s.target.classList[0]).length||(l(".ss-color-picker-element").iris("hide"),l("#ss-settings-wrapper").off("click",t.closeColorPicker),l(".ss-color-picker").removeClass("ss-opened"))},followNetworks:function(s){l("#ss-settings-wrapper").on("click",".ss-configure-follow-network",function(s){s.preventDefault();var e=l("#ss-sf-networks-popup"),t=l(this);e.hasClass("ss-open")||(e.removeClass("ss-hidden"),setTimeout(function(){e.addClass("ss-open")},10)),e.find(".ss-sf-setup-title").html(t.closest(".ss-follow-network").data("name")),e.find(".ss-sf-network-settings").addClass("ss-hidden"),e.find(".ss-sf-network-settings-"+t.closest(".ss-follow-network").data("id")).removeClass("ss-hidden")}),l("#ss-settings-wrapper").on("click",".ss-follow-authorize.ss-button, .ss-disconnect-authenticated-user",function(s){l(this).html(socialsnap_admin.wait_text).siblings(".spinner").addClass("visible")}),l(".ss-follow-networks").sortable({containment:"#ss-left-panel",delay:150,start:function(s,e){l(this).data("start-position",e.item.index())},update:function(s,t){var i=l(this).data("start-position");l("#ss-sf-networks-popup .ss-popup-content").each(function(s,e){i>t.item.index()?l(this).children("div:eq("+i+")").insertBefore(l(this).children("div:eq("+t.item.index()+")")):l(this).children("div:eq("+i+")").insertAfter(l(this).children("div:eq("+t.item.index()+")"))}),l("#ss-right-panel .ss-follow-preview-shortcode .ss-follow-wrapper").each(function(s,e){i>t.item.index()?l(this).children("div:eq("+i+")").insertBefore(l(this).children("div:eq("+t.item.index()+")")):l(this).children("div:eq("+i+")").insertAfter(l(this).children("div:eq("+t.item.index()+")"))});var e=l(this).sortable("toArray",{attribute:"data-id"});l(this).parent().find(".ss-social-follow-order").val(e.join(";")).trigger("change")}})},shareNetworks:function(s){function r(s){s=s||l(".ss-share-networks");var e="";return s.find(".ss-ss-network").each(function(){e+=l(this).data("id")+";"}),e=e.slice(0,-1)}l(".ss-share-networks").sortable({containment:"#ss-left-panel",update:function(s,e){l(this).find(".ss-social-share-order").val(r(l(this))).trigger("change")}}),l(".ss-share-networks").on("click",".ss-ss-remove",function(s){s.preventDefault();var e=l(this).parent().parent().data("id");l(this).parent().parent().remove(),l("#ss-ss-networks-popup").find("[data-id="+e+"]").removeClass("selected"),l(".ss-share-networks").find(".ss-social-share-order").val(r(l(".ss-share-networks"))).trigger("change")}),l(".ss-share-networks").on("click",".ss-ss-edit",function(s){s.preventDefault(),l(this).parent().parent().find("input").focus().select()}),l("#ss-settings-wrapper").on("click","#ss-add-share-networks",function(s){s.preventDefault(),l("#ss-ss-networks-popup").hasClass("ss-open")?(l("#ss-ss-networks-popup").removeClass("ss-open"),setTimeout(function(){l("#ss-ss-networks-popup").addClass("ss-hidden")},400)):(l("#ss-ss-networks-popup").removeClass("ss-hidden"),setTimeout(function(){l("#ss-ss-networks-popup").addClass("ss-open")},100)),l("#ss-ss-networks-popup .ss-popup-network > a").removeClass("selected"),l(".ss-share-networks").find(".ss-ss-network").each(function(){id=l(this).data("id"),l("#ss-ss-networks-popup").find("[data-id="+id+"]").addClass("selected")}),l(".ss-share-networks").find(".ss-social-share-order").val(r()).trigger("change")}),l(".ss-close-modal").click(function(s){s.preventDefault();var e=l(this);e.closest(".ss-add-networks-popup").hasClass("ss-open")&&(e.closest(".ss-add-networks-popup").removeClass("ss-open"),setTimeout(function(){e.closest(".ss-add-networks-popup").addClass("ss-hidden")},400))}),l("#ss-ss-networks-popup").on("click",".ss-popup-network > a",function(s){s.preventDefault();var e,t=l(".ss-share-networks"),i=t.attr("id"),a=l(this),n=a.data("id"),o=a.data("name");t.find(".ss-"+n).length?a.hasClass("selected")?(a.removeClass("selected"),t.find(".ss-"+n).parent().remove()):a.addClass("selected"):(a.addClass("selected"),e=a.data("mobile-only")?"Mobile only":'<li>Desktop<span class="ss-small-toggle"><input type="checkbox" name="'+i+"["+n+'][desktop_visibility]" id="ss-ss-visibility-desktop-'+n+'" checked="checked"><label for="ss-ss-visibility-desktop-'+n+'"></label></span></li><li>Mobile<span class="ss-small-toggle"><input type="checkbox" name="'+i+"["+n+'][mobile_visibility]" id="ss-ss-visibility-mobile-'+n+'" checked="checked"><label for="ss-ss-visibility-mobile-'+n+'"></label></span></li>',t.append('<div class="ss-ss-network" data-id="'+n+'"><i class="ss ss-'+n+" ss-"+n+'-color"></i><input type="text" class="ss-ss-name" name="'+i+"["+n+'][text]" value="'+o+'" placeholder="Enter network label" /><div class="ss-ss-actions"><a href="#" class="ss-ss-edit ss-tooltip" data-title="Change label"><i class="ss ss-edit"></i></a><div class="ss-ss-mobile-visibility ss-tooltip" data-title="Device visibility"><i class="ss ss-eye"></i><ul class="ss-ss-visibility-dropdown">'+e+'</ul></div><a href="#" class="ss-ss-remove ss-tooltip" data-title="Remove"><i class="ss ss-close"></i></a></div></div>')),l(".ss-share-networks").find(".ss-social-share-order").val(r()).trigger("change")})},binds:function(){l("#ss-settings-wrapper").on("click","#ss-import-settings",function(s){s.preventDefault(),l(this).siblings("#ss-upload-import-file").click()}),l("#ss-settings-wrapper").on("change","#ss-upload-import-file",function(s){if(!(this.files.length<1)){var e=this.files[0],t=l(this);t.siblings(".ss-file-name").html(e.name),l("#ss-import-settings").attr("disabled","disabled").siblings(".spinner").addClass("visible"),l("#ss-settings-wrapper").addClass("ss-saving");var i=new FormData;i.append("action","socialsnap_settings_import"),i.append("nonce",l("#ss-import-settings").data("nonce")),i.append("file",e),l.ajax({type:"POST",url:socialsnap_admin.ajaxurl,processData:!1,contentType:!1,cache:!1,data:i,success:function(s){t.siblings(".ss-file-name").html(s.data.message),l("#ss-import-settings").removeAttr("disabled","disabled").siblings(".spinner").removeClass("visible"),l("#ss-settings-wrapper").removeClass("ss-saving"),"success"===s.data.code&&location.reload(),t.val("").trigger("change")}})}}),l("#ss-settings-wrapper").on("click","#ss-restore-settings",function(s){if(s.preventDefault(),window.confirm(l(this).data("confirm"))){l(this).attr("disabled","disabled").siblings(".spinner").addClass("visible"),l("#ss-settings-wrapper").addClass("ss-saving");var e={action:"socialsnap_settings_restore",nonce:l(this).data("nonce")};l.post(socialsnap_admin.ajaxurl,e,function(s){location.reload(!0)})}}),l("#ss-settings-wrapper").on("click",".ss-upload-button",function(s){s.preventDefault();var e,t,i=l(this),a="#"+i.attr("id").replace("_button","");e||(e=wp.media.frames.file_frame=wp.media({title:i.data("title"),button:{text:i.data("button")},multiple:!1,library:{type:"image"}})).on("select",function(){if("image"!==(t=e.state().get("selection").first().toJSON()).type)return!1;l(a+"-preview").find("img").length?l(a+"-preview").find("img").attr("src",t.url):l(a+"-preview").append("<img src="+t.url+" />"),l(a).val(t.url).trigger("change"),l(a+"_img_id").val(t.id),l(a+"_remove").removeClass("hidden")}),e.open()}),l("#ss-settings-wrapper").on("click",".ss-remove-image",function(s){s.preventDefault();var e=l(this),t="#"+e.attr("id").replace("_remove","");l(t+"-preview").find("img").remove(),l(t+"_img_id").val("").trigger("change"),l(t).val("").trigger("change"),e.addClass("hidden")}),l("#ss-settings-wrapper").on("click",".ss-button-element .ss-button",function(s){var e=l(this);if(this.hasAttribute("data-action")){s.preventDefault();var t=!0;if(this.hasAttribute("data-confirm")&&(t=window.confirm(this.getAttribute("data-confirm"))),t){e.attr("disabled","disabled").siblings(".spinner").addClass("visible"),l("#ss-settings-wrapper").addClass("ss-saving");var i={action:this.getAttribute("data-action"),_ajax_nonce:socialsnap_admin.nonce};l.post(socialsnap_admin.ajaxurl,i,function(s){e.removeAttr("disabled","disabled").siblings(".spinner").removeClass("visible"),s.success&&s.data.message&&alert(s.data.message),location.reload()})}}});var e=function(){l(".ss-dropdown").removeClass("ss-open").find("ul").slideUp(90),l(document).off("click",e)};l("#ss-settings-wrapper").on("click",".ss-dropdown",function(s){s.preventDefault(),s.stopPropagation(),l(this).hasClass("ss-open")?e():function(s){e(),s.addClass("ss-open").find("ul").slideDown(90),l(document).on("click",e)}(l(this))}),l("#ss-settings-wrapper").on("click",".ss-dropdown-values > li",function(s){s.preventDefault();var e=l(this);if("1"==e.parent().data("multiselect")){var t=e.data("value"),i=e.html(),a=e.closest(".ss-field-wrapper").attr("id").replace("_wrapper","");e.closest(".ss-dropdown-wrapper").find(".ss-dropdown-selected-values").append('<div class="ss-dropdown-single-value">'+i+'<a href="#" class="ss-ss-remove"><i class="ss ss-close"></i></a><input type="hidden" name="'+a+'[]" value="'+t+'" /></div>'),e.closest(".ss-dropdown").find("span").html(i),e.closest(".ss-dropdown-wrapper").find(".ss-dropdown-selected-values .ss-trigger").trigger("change"),e.hide()}else e.closest(".ss-dropdown-wrapper").find("input").val(e.data("value")).trigger("change"),e.closest(".ss-dropdown-wrapper").find("li").removeClass("ss-current"),e.addClass("ss-current"),e.closest(".ss-dropdown").find("span").html(e.html())}),l("#ss-settings-wrapper").on("click",".ss-dropdown-selected-values .ss-ss-remove",function(s){s.preventDefault();var e=l(this);e.closest(".ss-dropdown-wrapper").find(".ss-dropdown-values").find('li[data-value="'+e.siblings("input").val()+'"]').show(),e.closest(".ss-dropdown-wrapper").find(".ss-trigger").trigger("change"),e.parent().remove()}),l("#ss-settings-wrapper").on("keyup mouseup","input[type=number]",function(s){l(this).attr("value",l(this).val())}),l("#ss-settings-wrapper").on("focus","input[readonly]",function(s){if("text"===l(this).attr("type")&&!l(this).hasClass("ss-upload-url")&&!l(this).hasClass("ss-follow-username-profile")){var e=l(this);e.select();try{document.execCommand("copy"),e.parent().addClass("ss-copied-text"),setTimeout(function(){e.parent().removeClass("ss-copied-text")},1500)}catch(s){alert(s+"Press Ctrl/Cmd+C to copy")}}}),l("#ss-settings-wrapper").on("change","#ss_social_follow_connect_networks_facebook_accounts",function(s){var e=l(this).find(":selected").data("slug");l("#ss_social_follow_connect_networks_facebook_profile_username").val(e),l("#ss_social_follow_connect_networks_facebook_profile_url").val("https://facebook.com/"+e+"/"),e=l.isNumeric(e)?l(this).find(":selected").html():e,l(".ss-follow-network[data-id=facebook] .ss-follow-network-account").html(e)}),l("#ss-settings-wrapper").on("click",".ss-open-popup",function(s){s.preventDefault();var e=l("#"+l(this).data("popup-id"));l(this);l(".ss-add-networks-popup").removeClass("ss-open").addClass("ss-hidden"),e.hasClass("ss-open")||(e.removeClass("ss-hidden"),setTimeout(function(){e.addClass("ss-open")},10))})},dependencyOptions:function(){function s(s){this.el=s}s.prototype={init:function(){this.cacheElements(),this.bindEvents()},cacheElements:function(){this.$child=l(this.el),this.vals=this.$child.data("dependency-value");var s=this.$child.data("dependency-mother");this.$mother=l("#"+s),this.mother_vals="";var e=!1;this.$grandmother=!1,void 0!==l("#"+this.$mother.attr("id")+"_wrapper").data("dependency-mother")&&(e=l("#"+this.$mother.attr("id")+"_wrapper").data("dependency-mother"),this.$grandmother=l("#"+e),this.mother_vals=l("#"+this.$mother.attr("id")+"_wrapper").data("dependency-value"))},bindEvents:function(){var s=this;this.$mother.on("change",this.resolveDependency.bind(this)),this.$mother.attrchange({callback:s.resolveDependency.bind(s)}),this.$grandmother&&(this.$grandmother.on("change",this.resolveDependency.bind(this)),this.$grandmother.attrchange({callback:s.resolveDependency.bind(s)})),l(window).on("load",function(){setTimeout(s.resolveDependencyLoad.bind(s),100)})},resolveDependencyLoad:function(){var s=this.$mother.val(),e=!this.$grandmother||this.$grandmother.val();this.$grandmother&&this.$grandmother.is(":checkbox")&&(e=this.$grandmother.is(":checked")),this.$mother.is(":checkbox")&&(s=this.$mother.is(":checked")),this.hasValue(s)?this.$grandmother?this.motherHasValue(e)?this.show():this.hide():this.show():this.hide()},resolveDependency:function(){var s=this.$mother.val(),e=!this.$grandmother||this.$grandmother.val();this.$grandmother&&this.$grandmother.is(":checkbox")&&(e=this.$grandmother.is(":checked")),this.$mother.is(":checkbox")&&(s=this.$mother.is(":checked")),this.hasValue(s)?this.$grandmother?this.motherHasValue(e)?this.show():this.hide():this.show():this.hide()},hasValue:function(s){return-1!==this.vals.indexOf(s)},motherHasValue:function(s){return-1!==this.mother_vals.indexOf(s)},show:function(){this.$child.hasClass("ss-toggle-element")?this.$child[0].style.display="flex":this.$child[0].style.display="block"},hide:function(){this.$child[0].style.display="none"}},l("[data-dependency-mother]").each(function(){new s(this).init()})}};t.init(),window.socialsnapfields=t}(jQuery);