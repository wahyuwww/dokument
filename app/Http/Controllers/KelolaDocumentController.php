<?php

namespace App\Http\Controllers;

use Validator;
use App\Models\Kategori;
use Storage;
use App\Models\Document;
use Illuminate\Http\Request;
use App\Exports\ReportExport;
use Excel;
use ZipArchive;

class KelolaDocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $data_dokument = Document::orderBy('created_at', 'desc')->paginate(10);
        $filterKeyword = $request->get('keyword');
        $kategori = Kategori::all();
        $nama_kategori = '';

        if ($filterKeyword) {
            //dijalankan jika ada pencarian
            $data_dokument = Document::where('judul_dokumen', 'LIKE', "%$filterKeyword%")->paginate(100);
        }
        $filter_by_kategori = $request->get('id_kategori');
        if ($filter_by_kategori) {
            $data_dokument = Document::where('id_kategori', $filter_by_kategori)->paginate(5);
            $data_kategori = Kategori::find($filter_by_kategori);
            $nama_kategori = $data_kategori->kategori;
        }
        // $kategori = Kategori::all();
        return view('document.index', compact('data_dokument', 'kategori', 'nama_kategori'));
    }
    public function report()
    {
        $judul_document = now();
        return Excel::download(new ReportExport, 'document' . $judul_document . '.xlsx');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $kategori = Kategori::all();
        return view('document.create', compact('kategori'));
    }




    /* @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data_dokument = $request->all();
        $rules = [
            'judul_dokumen' => 'required|max:250',
            'deskripsi_dokumen' => 'required|max:25000',
            'tahun' => 'required|numeric',
            'publisher' => 'required|max:250',
            'jumlah_halaman' => 'required|numeric',
            'file' => 'required|mimes:pdf,html,zip|max:5048',
            'cover' => 'required|mimes:jpeg,jpg,png,pdf|max:5048',
            'id_kategori' => 'required|max:250',

        ];

        $messages = [
            'judul_dokumen.required'          => 'Nama wajib diisi.',
            'deskripsi_dokumen.required'      => 'Deskripsi wajib diisi.',
            'tahun.required'           => 'tahun wajib diisi.',
            'publisher.required'         => 'publisher wajib diisi.',
            'jumlah_halaman.required'         => 'jumlah halaman wajib diisi.',
            'file.required'         => 'file wajib diisi.',
            'cover.required'         => 'cover wajib diisi.',
            'id_kategori.required'         => 'kategori wajib dipilih.',

        ];

        $validator = Validator::make($request->all(), $rules, $messages);

        if ($validator->fails()) {
            return redirect()->route('document.create')->withErrors($validator)->withInput($request->all());
        }

        $file = $request->file('file');
        $extention = $file->getClientOriginalExtension();
        // dd($file);
        if ($request->file('file')->isValid()) {
            if ($extention == "zip") {
                $namaFile = "document/" . date('YmdHis'); //. "." . $extention;
                $upload_path = 'uploads/';
                $zip = new ZipArchive();
                $zip->open($file);
                $nama = $zip->getNameIndex(0);
                // dd($nama);
                $zip->extractTo($upload_path . $namaFile);
                $zip->close();
                $data_dokument['file'] = $namaFile . "/" . $nama;
                // dd($namaFile. "/" .$nama);
            } else {
                $namaFile = "document/" . date('YmdHis') . "." . $extention;
                $upload_path = 'uploads/document';
                $request->file('file')->move($upload_path, $namaFile);
                $data_dokument['file'] = $namaFile;
                // dd($extention);
            }
        }
        $cover = $request->file('cover');
        $extention = $cover->getClientOriginalExtension();
        if ($request->file('cover')->isValid()) {
            $namaCover = "document/" . date('YmdHis') . "." . $extention;
            $upload_path = 'uploads/document';
            $request->file('cover')->move($upload_path, $namaCover);
            $data_dokument['cover'] = $namaCover;
        }
        Document::create($data_dokument);
        return redirect()->route('document.index')->with('status', 'Dokumen Berhasil Ditambahankan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function show(KelolaUser $kelolaUser)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $kategori = Kategori::all();
        $document = Document::findOrFail($id);
        return view('document.edit', compact('kategori', 'document'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    { {

            $document = Document::findOrFail($id);

            $input = $request->all();

            $rules = [
                'judul_dokumen' => 'required|max:250',
                'deskripsi_dokumen' => 'required|max:25000',
                'tahun' => 'required|numeric',
                'publisher' => 'required|max:250',
                'jumlah_halaman' => 'required|numeric',
                'file' =>  'sometimes|nullable|mimes:pdf,html,zip|max:5048',
                'cover' =>  'sometimes|nullable|mimes:jpeg,jpg,png,pdf|max:5048',
                'id_kategori' => 'required|max:250',

            ];

            $messages = [
                'judul_dokumen.required'          => 'Nama wajib diisi.',
                'deskripsi_dokumen.required'      => 'Deskripsi wajib diisi.',
                'tahun.required'           => 'tahun wajib diisi.',
                'publisher.required'         => 'publisher wajib diisi.',
                'jumlah_halaman.required'         => 'jumlah halaman wajib diisi.',
                'file.required'         => 'ukuran file terlalu besar.',
                'cover.required'         => 'ukuran cover terlalu besar.',
                'id_kategori.required'         => 'kategori wajib dipilih.',

            ];

            $validator = Validator::make($request->all(), $rules, $messages);

            if ($validator->fails()) {
                return redirect()->route('document.edit', [$id])->withErrors($validator)->withInput($request->all());
            }
            if ($request->hasFile('file')) {
                if ($request->file('file')->isValid()) {
                    Storage::disk('upload')->delete($document->file);

                    $file = $request->file('file');
                    $extention = $file->getClientOriginalExtension();
                    $namaFoto = "document/" . date('YmdHis') . "." . $extention;
                    $upload_path = 'uploads/document';
                    $request->file('file')->move($upload_path, $namaFoto);
                    $input['file'] = $namaFoto;
                }
            }
            if ($request->hasFile('cover')) {
                if ($request->file('cover')->isValid()) {
                    Storage::disk('upload')->delete($document->cover);

                    $cover = $request->file('cover');
                    $extention = $cover->getClientOriginalExtension();
                    $namaCover = "document/" . date('YmdHis') . "." . $extention;
                    $upload_path = 'uploads/document';
                    $request->file('cover')->move($upload_path, $namaCover);
                    $input['cover'] = $namaCover;
                }
            }

            $document->update($input);
            return redirect()->route('document.index')->with('status', 'Document Berhasil diupdate');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\KelolaUser  $kelolaUser
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $data_dokument = Document::findOrFail($id);
        $data_dokument->delete();
        Storage::disk('upload')->delete($data_dokument->file);
        return redirect()->route('document.index')->with('status', 'Data Document Berhasil dihapus');
    }
}
