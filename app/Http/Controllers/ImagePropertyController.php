<?php

namespace App\Http\Controllers;

use App\Models\Profil;
use Illuminate\Support\Str;
use App\Models\ImageProperty;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\StoreImagePropertyRequest;
use App\Http\Requests\UpdateImagePropertyRequest;

class ImagePropertyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('dashboard.properties.index', [
            'profils' => Profil::latest()->get(),
            'properties' => ImageProperty::latest()->get(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.properties.create', [
            'profils' => Profil::latest()->get(),
            'properties' => ImageProperty::where('property', 'Logo')->latest()->get()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreImagePropertyRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreImagePropertyRequest $request)
    {
        $validatedData = $request->validate([
            'property' => 'required|max:255',
            'name' => 'required|max:255|unique:image_properties',
            // Modifikasi: Mengubah validasi dari hanya image menjadi file untuk menerima gambar dan video.
            'image' => 'required|file|mimes:jpeg,png,jpg,gif,svg,mp4,webm|max:10240'
        ]);

        if ($request->file('image')) {
            $file = $request->file('image');
            // Menyimpan path file yang diunggah.
            $validatedData['image'] = $file->store('image-property');

            // Modifikasi: Menambahkan logika untuk menentukan tipe file (picture atau video) berdasarkan ekstensi.
            $extension = $file->getClientOriginalExtension();
            if (in_array($extension, ['jpeg', 'png', 'jpg', 'gif', 'svg'])) {
                $validatedData['file_type'] = 'picture';
            } elseif (in_array($extension, ['mp4', 'webm'])) {
                $validatedData['file_type'] = 'video';
            } else {
                // Modifikasi: Jika bukan gambar atau video, tolak file dengan pesan kesalahan.
                return redirect()->back()->withErrors(['image' => 'File type not supported. Only images and videos are allowed.']);
            }
        }

        // Membuat slug dari nama untuk URL yang ramah SEO.
        $validatedData['slug'] = Str::slug($validatedData['name'], '-');

        // Menyimpan data ke database.
        ImageProperty::create($validatedData);

        return redirect('/dashboard/properties')->with('success', 'New Property has been added!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ImageProperty  $imageProperty
     * @return \Illuminate\Http\Response
     */
    public function show(ImageProperty $imageProperty)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ImageProperty  $imageProperty
     * @return \Illuminate\Http\Response
     */
    public function edit(ImageProperty $property)
    {
        return view('dashboard.properties.edit', [
            'profils' => Profil::latest()->get(),
            'property' => $property,
            'properties' => ImageProperty::where('property', 'Logo')->latest()->get()
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateImagePropertyRequest  $request
     * @param  \App\Models\ImageProperty  $imageProperty
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateImagePropertyRequest $request, ImageProperty $property)
    {
        $rules = [
            'property' => 'required|max:255',
            // Modifikasi: Mengubah validasi dari hanya image menjadi file untuk menerima gambar dan video.
            'image' => 'file|mimes:jpeg,png,jpg,gif,svg,mp4,webm|max:10240'
        ];

        // Memeriksa apakah nama diubah, jika iya, perlu validasi unik untuk nama baru.
        if($request->name != $property->name){
            $rules['name'] = 'required|max:255|unique:image_properties';
        }

        $validatedData = $request->validate($rules);

        if ($request->file('image')) {
            if ($property->image) {
                // Menghapus file lama jika ada file baru yang diunggah.
                Storage::delete($property->image);
            }

            $file = $request->file('image');
            // Menyimpan path file yang diunggah.
            $validatedData['image'] = $file->store('image-property');

            // Modifikasi: Menambahkan logika untuk menentukan tipe file (picture atau video) berdasarkan ekstensi.
            $extension = $file->getClientOriginalExtension();
            if (in_array($extension, ['jpeg', 'png', 'jpg', 'gif', 'svg'])) {
                $validatedData['file_type'] = 'picture';
            } elseif (in_array($extension, ['mp4', 'webm'])) {
                $validatedData['file_type'] = 'video';
            } else {
                // Modifikasi: Jika bukan gambar atau video, tolak file dengan pesan kesalahan.
                return redirect()->back()->withErrors(['image' => 'File type not supported. Only images and videos are allowed.']);
            }
        }

        // Membuat slug dari nama untuk URL yang ramah SEO.
        $validatedData['slug'] = Str::slug($request->name, '-');

        // Memperbarui data di database dengan yang baru.
        ImageProperty::where('id', $property->id)->update($validatedData);

        return redirect('/dashboard/properties')->with('success', 'Property has been updated!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ImageProperty  $imageProperty
     * @return \Illuminate\Http\Response
     */
    public function destroy(ImageProperty $property)
    {
        if($property->image) {
            // Menghapus file dari storage.
            Storage::delete($property->image);
        }
        // Menghapus record dari database.
        ImageProperty::destroy($property->id);

        return redirect('/dashboard/properties')->with('success', 'Property has been deleted!');
    }
}