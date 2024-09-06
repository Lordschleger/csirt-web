@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Edit Property</h1>
    </div>

    <div class="col-lg-8">
        <form method="post" action="/dashboard/properties/{{ $property->slug }}" class="mb-5" enctype="multipart/form-data">
            @method('put')
            @csrf
            <div class="mb-3">
              <label for="property" class="form-label">Property</label>
              <input type="text" class="form-control @error('property') is-invalid @enderror" id="property" name="property" required value="{{ old('property', $property->property) }}" readonly>
              @error('property')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
              @enderror
            </div>
            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" required value="{{ old('name', $property->name) }}" autofocus>
              @error('name')
              <div class="invalid-feedback">
                  {{ $message }}
              </div>
              @enderror
            </div>

            <div class="mb-3">
              <label for="image" class="form-label">Media Property</label>
              <!--Menambahkan pratinjau untuk gambar dan video berdasarkan file_type -->
              @if ($property->file_type === 'picture')
                <!-- Jika file_type adalah picture, tampilkan gambar -->
                <img src="{{ asset('storage/' . $property->image) }}" class="img-preview img-fluid mb-3 col-sm-6 d-block">
              @elseif ($property->file_type === 'video')
                <!-- Jika file_type adalah video, tampilkan video -->
                <video src="{{ asset('storage/' . $property->image) }}" class="video-preview img-fluid mb-3 col-sm-6 d-block" controls autoplay muted></video>
              @else     
                <!-- Jika tidak ada media sebelumnya, tampilkan elemen kosong -->
                <img class="img-preview img-fluid mb-3 col-sm-6">
                <video class="video-preview img-fluid mb-3 col-sm-6 d-none" controls autoplay muted></video>
              @endif
              <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewMedia()">
              @error('image')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <button type="submit" class="btn btn-primary">Update Property</button>
        </form>
    </div>

    <script>
        //Memperbarui fungsi previewImage untuk mendukung gambar dan video
        function previewMedia(){
          const media = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');
          const videoPreview = document.querySelector('.video-preview');

          const fileType = media.files[0].type;

          if (fileType.startsWith('image/')) {
            // Jika file yang dipilih adalah gambar, tampilkan pratinjau gambar
            imgPreview.classList.remove('d-none');
            videoPreview.classList.add('d-none');
            const blob = URL.createObjectURL(media.files[0]);
            imgPreview.src = blob;
          } else if (fileType.startsWith('video/')) {
            // Jika file yang dipilih adalah video, tampilkan pratinjau video
            videoPreview.classList.remove('d-none');
            imgPreview.classList.add('d-none');
            const blob = URL.createObjectURL(media.files[0]);
            videoPreview.src = blob;
          } else {
            // Jika bukan gambar atau video, sembunyikan pratinjau
            imgPreview.classList.add('d-none');
            videoPreview.classList.add('d-none');
            imgPreview.src = '';
            videoPreview.src = '';
          }
        }
    </script>
@endsection
