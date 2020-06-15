<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <title>NeoTeach</title>
        <link rel="stylesheet" href="css/mainvideos.css" />
       
    </head>
    <body>
        <noscript>
            <h2>Sorry! Your browser doesn't support Javascript</h2>
        </noscript>
        <div class="upload-container">
            <div class="upload-header">
                <h2>Admin upload videos...</h2>
            </div>
            <div class="upload-content">
                <div class="single-upload">
                    <h3>Upload Single File</h3>
                    <form id="singleUploadForm" name="singleUploadForm">
                        <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                        <div>
                        <label for="courselist">Choose a course:</label>

						<select name="coursename" id="course">
  							<option value="1">C</option>
  							<option value="2">Cpp</option>
 				 			<option value="3">Core Java</option>
  							<option value="4">DS</option>
						</select>
                        </div>
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="singleFileUploadError"></div>
                        <div id="singleFileUploadSuccess"></div>
                    </div>
                </div>
                <div class="multiple-upload">
                    <h3>Upload Multiple Files</h3>
                    <form id="multipleUploadForm" name="multipleUploadForm">
                        <input id="multipleFileUploadInput" type="file" name="files" class="file-input" multiple required />
                         <div>
                        <label for="courselist">Choose a course:</label>

						<select id="coursename" name="coursename">
  							<option value="c">C</option>
  							<option value="cpp">Cpp</option>
 				 			<option value="corejava">Core Java</option>
  							<option value="ds">DS</option>
						</select>
                        </div>
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="multipleFileUploadError"></div>
                        <div id="multipleFileUploadSuccess"></div>
                    </div>
                </div>
            </div>
        </div>
        <script src="/js/mainvideos.js" ></script>
         <script src="js/jquery-1.8.3min.js" type="text/javascript"></script>
		
		${adminloginfail}
${message}
    </body>
</html>c