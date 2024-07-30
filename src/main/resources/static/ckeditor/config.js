/**
 * @license Copyright (c) 2003-2018, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
  config.toolbar = [
        ['Font', 'FontSize'],
        ['BGColor', 'TextColor' ],
        ['Bold', 'Italic', 'Strike', 'Superscript', 'Subscript', 'Underline', 'RemoveFormat'],
        ['BidiLtr', 'BidiRtl'],
        '/',
        ['Image', 'SpecialChar', 'Smiley'],
        ['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
        ['Blockquote', 'NumberedList', 'BulletedList'],
        ['Link', 'Unlink'],
        ['Source'],
        ['Undo', 'Redo']
      ];
  config.language = 'ko';
  config.font_names = '맑은 고딕; 돋움; 바탕; 돋음; 궁서; Nanum Gothic Coding; Quattrocento Sans;';

  CKEDITOR.on('instanceReady', function (ev) {
    ev.editor.dataProcessor.writer.setRules('br',
    {
      indent: false,
      breakBeforeOpen: false,
      breakAfterOpen: false,
      breakBeforeClose: false,
      breakAfterClose: false
    });
  });
  config.enterMode = CKEDITOR.ENTER_BR;
  config.shiftEnterMode = CKEDITOR.ENTER_BR;
};
