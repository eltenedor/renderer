$jwe_format = <<'ENDPROBLEMTEMPLATE';
<!DOCTYPE html>
<html $COURSE_LANG_AND_DIR>
<head>
<meta charset='utf-8'>
<base href="$SITE_URL">
<link rel="shortcut icon" href="$webwork_htdocs_url/images/favicon.ico"/>
<!-- CSS Loads -->
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/node_modules/jquery-ui-dist/jquery-ui.min.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/node_modules/@fortawesome/fontawesome-free/css/all.min.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/js/vendor/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/js/vendor/bootstrap/css/bootstrap-responsive.min.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/css/bootstrap.sub.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/themes/math4/math4.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/css/knowlstyle.css"/>

<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/js/apps/MathQuill/mathquill.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/js/apps/MathQuill/mqeditor.css"/>
<link rel="stylesheet" type="text/css" href="$webwork_htdocs_url/js/apps/ImageView/imageview.css"/>

$extra_css_files

<!-- JS Loads -->
<script>function submitAction() {}</script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6" defer></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/apps/MathJaxConfig/mathjax-config.js" defer></script>
<script type="text/javascript" src="$webwork_htdocs_url/mathjax/es5/tex-chtml.js" id="MathJax-script" defer></script>
<script type="text/javascript" src="$webwork_htdocs_url/node_modules/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/node_modules/jquery-ui-dist/jquery-ui.min.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/legacy/java_init.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/apps/InputColor/color.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/apps/Base64/Base64.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/legacy/vendor/knowl.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/apps/ImageView/imageview.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/themes/math4/math4.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/vendor/iframe-resizer/js/iframeResizer.contentWindow.min.js"></script>

<script type="text/javascript" src="$webwork_htdocs_url/js/apps/MathQuill/mathquill.min.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/apps/MathQuill/mqeditor.js"></script>
<script type="text/javascript" src="$webwork_htdocs_url/js/submithelper.js"></script>

$extra_js_files

$problemHeadText
$problemPostHeaderText
<title>WeBWorK using host: $SITE_URL</title>
</head>
<body>
  <div class="container-fluid">
    <div class="row-fluid">
      <div class="span12 problem">
		$answerTemplate
        $color_input_blanks_script
        <form id="problemMainForm" class="problem-main-form" name="problemMainForm" action="$FORM_ACTION_URL" method="post" onsubmit="submitAction()">
          <div id="problem_body" class="problem-content" $PROBLEM_LANG_AND_DIR>
            $problemText
          </div>
          $scoreSummary
          $LTIGradeMessage
          <input type="hidden" name="sessionJWT" value="$sessionJWT">
          <input type="hidden" name="problemJWT" value="$problemJWT">
          <p>
            <input type="submit" name="previewAnswers"  value="$STRING_Preview" />
            <input type="submit" name="submitAnswers" value="$STRING_Submit"/>
          </p>
        </form>
      </div>
    </div>
  </div>
</body>
</html>
ENDPROBLEMTEMPLATE

$jwe_format;