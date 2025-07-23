<?php

namespace App\Http\Controllers\User;

use App\Constants\Constant;
use App\Http\Helpers\Uploader;
use App\Models\User\BasicSetting;
use App\Models\User\Language;
use App\Rules\ImageMimeTypeRule;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class IntrosectionController extends Controller
{
    public function index(Request $request)
    {
        $userId = getRootUser()->id;
        $lang = Language::where([
            ['code', $request->language],
            ['user_id', $userId]
        ])->first();

        $data['lang_id'] = $lang->id;
        $data['abs'] = $lang->basic_setting;

        return view('user.home.intro-section', $data);
    }

    public function update(Request $request, $langid)
    {
        $userId = getRootUser()->id;
        $input = $request->all();
        $bs = BasicSetting::where([
            ['language_id', $langid],
            ['user_id', $userId]
        ])->first();

        $activeTheme = $bs->theme;

        $main_image = $request->file('intro_main_image');
        $signature = $request->file('intro_signature');
        $video_bg = $request->file('intro_video_image');
        $authorImg = $request->file('author_image');
        $intro_section_author_image = $request->file('intro_section_author_image');

        $topShapeImage = $request->file('intro_section_top_shape_image');
        $bottomShapeImage = $request->file('intro_section_bottom_shape_image');


        $allowedExts = array('jpg', 'png', 'jpeg');

        $rules = [

            'intro_title' => 'required | max:255',

            'intro_text' => 'nullable | max:1000',
            'intro_section_highlight_text' => 'nullable | max:1000',
            'intro_section_video_button_text' => 'nullable | max:100',
            'intro_section_video_button_title' => 'nullable | max:100',
            'intro_video_link' => 'nullable | max:191',
            'intro_contact_text' => 'nullable | max:255',
            'intro_contact_text' => 'nullable | max:255',
            'intro_video_link' => 'nullable | max:191',
            'intro_contact_number' => 'nullable | max:191',
            'intro_section_author_name' => 'nullable | max:30',
            'intro_section_author_designation' => 'nullable | max:50',

            'intro_section_button_text' => 'nullable | max:50',
            'intro_section_button_url' => 'nullable | max:191',

            'author_image' => [
                function ($attribute, $value, $fail) use ($authorImg, $allowedExts) {
                    if (!empty($authorImg)) {
                        $ext = $authorImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_main_image' => [
                function ($attribute, $value, $fail) use ($main_image, $allowedExts) {
                    if (!empty($main_image)) {
                        $ext = $main_image->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_signature' => [
                function ($attribute, $value, $fail) use ($signature, $allowedExts) {
                    if (!empty($signature)) {
                        $ext = $signature->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_video_image' => [
                function ($attribute, $value, $fail) use ($video_bg, $allowedExts) {
                    if (!empty($video_bg)) {
                        $ext = $video_bg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_section_top_shape_image' => [
                function ($attribute, $value, $fail) use ($topShapeImage, $allowedExts) {
                    if (!empty($topShapeImage)) {
                        $ext = $topShapeImage->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_section_bottom_shape_image' => [
                function ($attribute, $value, $fail) use ($bottomShapeImage, $allowedExts) {
                    if (!empty($bottomShapeImage)) {
                        $ext = $bottomShapeImage->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'intro_section_author_image' => [
                function ($attribute, $value, $fail) use ($intro_section_author_image, $allowedExts) {
                    if (!empty($intro_section_author_image)) {
                        $ext = $intro_section_author_image->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
        ];

        // $rules['intro_title'] 
        if ($activeTheme != 'grocery') {
            $rules['intro_text'] = 'required';
        }

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            $errmsgs = $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        if ($request->has('intro_title')) {
            $bs->intro_title = $request->intro_title ?? '';
        }
        if ($request->has('intro_text')) {
            $bs->intro_text = $request->intro_text ?? '';
        }
        if ($request->has('intro_section_highlight_text')) {
            $bs->intro_section_highlight_text = $request->intro_section_blockquote_text ?? '';
        }
        if ($request->has('intro_section_video_button_text')) {
            $bs->intro_section_video_button_text = $request->intro_section_video_button_text ?? '';
        }
        if ($request->has('intro_section_video_button_title')) {
            $bs->intro_section_video_button_title = $request->intro_section_video_button_title ?? '';
        }
        if ($request->has('intro_video_link')) {
            $bs->intro_video_link = $request->intro_video_link ?? '';
        }
        if ($request->has('intro_contact_text')) {
            $bs->intro_contact_text = $request->intro_contact_text ?? '';
        }
        if ($request->has('intro_contact_number')) {
            $bs->intro_contact_number = $request->intro_contact_number ?? '';
        }

        if ($request->has('intro_section_author_name')) {
            $bs->intro_section_author_name = $request->intro_section_author_name ?? '';
        }
        if ($request->has('intro_section_author_designation')) {
            $bs->intro_section_author_designation = $request->intro_section_author_designation ?? '';
        }

        //button----
        if ($request->has('intro_section_button_text')) {
            $bs->intro_section_button_text = $request->intro_section_button_text ?? '';
        }
        if ($request->has('intro_section_button_url')) {
            $bs->intro_section_button_url = $request->intro_section_button_url ?? '';
        }

        if ($request->hasFile('intro_main_image')) {
            $input['intro_main_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_main_image'), $bs->intro_main_image);
        }
        if ($request->hasFile('intro_signature')) {
            $input['intro_signature'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_signature'), $bs->intro_signature);
        }
        if ($request->hasFile('intro_video_image')) {
            $input['intro_video_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_video_image'), $bs->intro_video_image);
        }

        if ($request->hasFile('author_image')) {
            $input['author_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('author_image'), $bs->author_image);
        }
        if ($request->hasFile('intro_section_top_shape_image')) {

            $input['intro_section_top_shape_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_section_top_shape_image'), $bs->intro_section_top_shape_image);
        }
        if ($request->hasFile('intro_section_bottom_shape_image')) {
            $input['intro_section_bottom_shape_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_section_bottom_shape_image'), $bs->intro_section_bottom_shape_image);
        }
        if ($request->hasFile('intro_section_author_image')) {

            $input['intro_section_author_image'] = Uploader::update_picture(Constant::WEBSITE_IMAGE, $request->file('intro_section_author_image'), $bs->intro_section_author_image);
        }

   
        $bs->update($input);
        Session::flash('success', 'data updated successfully!');
        return "success";
    }

    public function removeImage(Request $request)
    {
        $lang = Language::where('id', $request->language_id)->where('user_id', Auth::guard('web')->user()->id)->first();
        $userId = getRootUser()->id;
        $bs = BasicSetting::where([
            ['language_id', $lang->id],
            ['user_id', $userId]
        ])->first();
        if ($request->type == "signature") {
            Uploader::remove(Constant::WEBSITE_IMAGE, $bs->intro_signature);
            $bs->intro_signature = NULL;
            $bs->save();
        }
        $request->session()->flash('success', 'Image removed successfully!');
        return "success";
    }
}
