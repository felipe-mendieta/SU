tinymce.create("tinymce.plugins.socialsnap",{init:function(n,o){n.addButton("ss_shortcode_generator",{title:"Social Snap Shortcode Generator",icon:"ss wp-media-buttons-icon socialsnap-menu-icon"})},createControl:function(n,o){return null},getInfo:function(){return{longname:"Social Snap Shortcodes",author:"Social Snap",authorurl:"https://www.socialsnap.com/",infourl:"https://www.socialsnap.com/",version:"1.0"}}}),tinymce.PluginManager.add("socialsnap",tinymce.plugins.socialsnap);