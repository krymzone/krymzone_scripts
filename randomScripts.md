# Random stuff:

## 7zip Batch Compress

FOR /R %i IN (*.*) DO "C:\Program Files\7-Zip\7z.exe" a "%~dpni.7z" "%i" -sdel

## YT List All Videos in PLaylist

window.clearInterval(scroll); console.clear(); urls = $$('a'); urls.forEach(function(v,i,a){if (v.id=="video-title"){console.log('\t'+v.title+'\t'+v.href+'\t')}});
