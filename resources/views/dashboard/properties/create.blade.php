@extends('dashboard.layouts.main')

@section('container')
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Create a Property</h1>
    </div>

    <div class="col-lg-8">
        <form method="post" action="/dashboard/properties" class="mb-5" enctype="multipart/form-data">
            @csrf
            <div class="mb-3">
              <label for="name" class="form-label">Name</label>
              <input type="text" class="form-control @error('name') is-invalid @enderror" id="name" name="name" required value="{{ old('name') }}">
              @error('name')
              <div class="invalid-feedback">
                  {{ $message }}
              </div>
              @enderror
            </div>

            <div class="mb-3">
              <label for="property" class="form-label">Property</label>
              <select class="form-select" id="property" name="property">
                <option value="Logo" >Logo</option>
                <option value="Banner" >Banner</option>
              </select>
            </div>

            <div class="mb-3">
              <!-- Modifikasi: Mengubah label menjadi lebih umum untuk mencakup gambar dan video -->
              <label for="image" class="form-label">Media Property</label><br>
              <!-- Elemen untuk pratinjau gambar dan video -->
              <img class="img-preview img-fluid mb-3 col-sm-5 d-none">
              <!-- Menambahkan atribut autoplay dan muted untuk pratinjau video -->
              <video class="video-preview img-fluid mb-3 col-sm-5 d-none" controls autoplay muted></video>
              <input class="form-control @error('image') is-invalid @enderror" type="file" id="image" name="image" onchange="previewMedia()">
              @error('image')
                <div class="invalid-feedback">{{ $message }}</div>
              @enderror
            </div>

            <button type="submit" class="btn btn-primary">Create Property</button>
        </form>
    </div>

    <script>
        // Modifikasi: Pratinjau untuk gambar dan video
        function previewMedia(){
          const media = document.querySelector('#image');
          const imgPreview = document.querySelector('.img-preview');
          const videoPreview = document.querySelector('.video-preview');

          const fileType = media.files[0].type;
          console.log("File type selected:", fileType); // Log file type untuk debugging

          if (fileType.startsWith('image/')) {
            imgPreview.classList.remove('d-none');
            videoPreview.classList.add('d-none');
            const blob = URL.createObjectURL(media.files[0]);
            imgPreview.src = blob;
          } else if (fileType.startsWith('video/')) {
            videoPreview.classList.remove('d-none');
            imgPreview.classList.add('d-none');
            const blob = URL.createObjectURL(media.files[0]);
            videoPreview.src = blob;
            console.log("Previewing video:", blob); // Log untuk memastikan video di-preview
          } else {
            imgPreview.classList.add('d-none');
            videoPreview.classList.add('d-none');
            imgPreview.src = '';
            videoPreview.src = '';
          }
        }
    </script>

@endsection
