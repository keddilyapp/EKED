<?php

namespace App\Http\Controllers;

use App\Models\BasicExtended;
use App\Models\User\BasicSetting;
use Illuminate\Support\Facades\Schema;
use App\Models\Language;
use App\Models\User\Language as UserLanguage;
use App\Models\User\UserPermission;
use App\Models\User\UserVcard;
use Illuminate\Http\Request;
use Artisan;
use DB;
use Illuminate\Support\Facades\File;

class UpdateController extends Controller
{
    public function version()
    {
        return view('updater.version');
    }

    public function filesFolders($src, $des)
    {
        $dir = $src; //"path/to/targetFiles";
        $dirNew = $des; //path/to/destination/files
        // Open a known directory, and proceed to read its contents
        if (is_dir($dir)) {
            if ($dh = opendir($dir)) {
                while (($file = readdir($dh)) !== false) {
                    echo '<br>Archivo: ' . $file;
                    //exclude unwanted
                    if ($file == "move.php") continue;
                    if ($file == ".") continue;
                    if ($file == "..") continue;
                    if ($file == "viejo2014") continue;
                    if ($file == "viejo2013") continue;
                    if ($file == "cgi-bin") continue;
                    //if ($file=="index.php") continue; for example if you have index.php in the folder

                    if (rename($dir . '/' . $file, $dirNew . '/' . $file)) {
                        echo " Files Copyed Successfully";
                        echo ": $dirNew/$file";
                        //if files you are moving are images you can print it from
                        //new folder to be sure they are there
                    } else {
                        echo "File Not Copy";
                    }
                }
                closedir($dh);
            }
        }
    }

    public function recurse_copy($src, $dst)
    {
        // dd(base_path($src), base_path($dst));
        $dir = opendir(base_path($src));
        @mkdir(base_path($dst), 0775, true);
        while (false !== ($file = readdir($dir))) {
            if (($file != '.') && ($file != '..')) {
                if (is_dir(base_path($src) . '/' . $file)) {
                    $this->recurse_copy($src . '/' . $file, $dst . '/' . $file);
                } else {
                    copy(base_path($src . '/' . $file), base_path($dst) . '/' . $file);
                }
            }
        }
        closedir($dir);
    }

    public function upversion(Request $request)
    {

        $assets = array(

            ['path' => 'assets/admin/css/custom.css', 'type' => 'file', 'action' => 'replace'],
    
            ['path' => 'assets/tenant/js/blade.js', 'type' => 'file', 'action' => 'replace'],

            ['path' => 'resources/views', 'type' => 'folder', 'action' => 'replace'],
            ['path' => 'routes', 'type' => 'folder', 'action' => 'replace'],
            ['path' => 'app', 'type' => 'folder', 'action' => 'replace'],

            ['path' => 'composer.json', 'type' => 'file', 'action' => 'replace'],
            ['path' => 'composer.lock', 'type' => 'file', 'action' => 'replace'],
            ['path' => 'version.json', 'type' => 'file', 'action' => 'replace']
        );

        foreach ($assets as $key => $asset) {
            $des = '';
            if (strpos($asset["path"], 'assets/') !== false) {
                $des = 'public/' . $asset["path"];
            } else {
                $des = $asset["path"];
            }
            // if updater need to replace files / folder (with/without content)
            if ($asset['action'] == 'replace') {
                if ($asset['type'] == 'file') {
                    copy(base_path('public/updater/' . $asset["path"]), base_path($des));
                }
                if ($asset['type'] == 'folder') {
                    $this->delete_directory(base_path($des));
                    $this->recurse_copy('public/updater/' . $asset["path"], $des);
                }
            }
            // if updater need to add files / folder (with/without content)
            elseif ($asset['action'] == 'add') {

                if ($asset['type'] == 'folder') {

                    $this->recurse_copy('public/updater/' . $asset["path"], $des);
                }
            }
        }
        Artisan::call('config:clear');
        // run migration files
        Artisan::call('migrate');


        \Session::flash('success', 'Updated successfully');
        return redirect('updater/success.php');
    }

    function delete_directory($dirname)
    {
        $dir_handle = null;
        if (is_dir($dirname))
            $dir_handle = opendir($dirname);
        if (!$dir_handle)
            return false;
        while ($file = readdir($dir_handle)) {
            if ($file != "." && $file != "..") {
                if (!is_dir($dirname . "/" . $file))
                    unlink($dirname . "/" . $file);
                else
                    $this->delete_directory($dirname . '/' . $file);
            }
        }
        closedir($dir_handle);
        rmdir($dirname);
        return true;
    }

    public function redirectToWebsite(Request $request)
    {
        $arr = ['WEBSITE_HOST' => $request->website_host];
        setEnvironmentValue($arr);
        \Artisan::call('config:clear');

        return redirect()->route('front.index');
    }
}
